unit Convert_Header;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process,
  Common;

type

  THeaderConvert = class(TObject)
  private
    procedure Delete_G_STMT_Block(sl: TStringList);
    procedure DeleteBlock(sl: TStringList; const Source: string);
    procedure DeletePos1(sl: TStringList; const Source: string);
    procedure DeleteSR(sl: TStringList; const Source: string);
    procedure RenameMacro(sl: TStringList; const Source: TListMacro);
    procedure RenameMacroLines(sl: TStringList; const Source: string);
    function AddKommentar(const s: string; const kom: string): string;
    procedure Delete_enums_h(sl: TStringList);
  public
    procedure IncludeToTmp;
  end;

implementation

procedure THeaderConvert.DeletePos1(sl: TStringList; const Source: string);
var
  i: integer;
  p: SizeInt;
begin
  for i := 0 to sl.Count - 1 do begin
    p := pos(Source, sl[i]);
    if p >= 1 then begin
      sl[i] := '//// Zeile entfernt: ' + sl[i];
    end;
  end;
end;

procedure THeaderConvert.DeleteSR(sl: TStringList; const Source: string);
var
  i: integer;
  s: string;
begin
  for i := 0 to sl.Count - 1 do begin
    s := sl[i];
    sl[i] := StringReplace(sl[i], Source, '', []);
    if Pos(Source, s) > 0 then  begin
      //      sl[i] := sl[i] + ' //// ' + s;
      sl[i] := AddKommentar(sl[i], ' //// ' + s);
    end;
  end;
end;

procedure THeaderConvert.RenameMacroLines(sl: TStringList; const Source: string);
var
  i: integer;
  s: string;
begin
  for i := 0 to sl.Count - 1 do begin
    s := sl[i];
    if Pos(Source, s) = 1 then begin
      //      sl[i] := Source.new + ' //// ' + s;
      sl[i] := '//// ' + s;
      sl[i - 1] := ' //// ' + sl[i - 1];
    end;
  end;
end;

function THeaderConvert.AddKommentar(const s: string; const kom: string): string;
begin
  Result := s;
  if Pos('\', s) = 0 then begin
    Result := Result + kom;
  end;
end;

procedure THeaderConvert.Delete_enums_h(sl: TStringList);
var
  i, j: integer;
begin
  for i := 0 to sl.Count - 1 do begin
    if Pos('GtkOrdering     gtk_ordering_from_cmpfunc       (int cmpfunc_result);', sl[i]) > 0 then  begin
      for j := -1 to 16 do begin
        sl[i + j] := '//// ' + sl[i + j];
      end;
    end;
  end;
end;

procedure THeaderConvert.RenameMacro(sl: TStringList; const Source: TListMacro);
var
  i: integer;
  s: string;
begin
  for i := 0 to sl.Count - 1 do begin
    s := sl[i];
    if Source.new = 'extern' then  begin
      if Pos(Source.old, s) = 1 then  begin
        if Pos('GDK_AVAILABLE_IN_ALL GType ', s) = 1 then begin
          sl[i] := StringReplace(s, 'GDK_AVAILABLE_IN_ALL', 'extern', []);
        end else begin
          sl[i] := 'extern //// ' + s;
        end;
      end;
    end else begin
      sl[i] := StringReplace(sl[i], Source.old, Source.new, []);
      if Pos(Source.old, s) > 0 then  begin
        //        sl[i] := sl[i] + ' //// ' + s;
      end;
    end;
  end;
end;

procedure THeaderConvert.Delete_G_STMT_Block(sl: TStringList);
const
  Anfang = 'G_STMT_START';
  Ende = 'G_STMT_END';
var
  isBlock: boolean = False;
  i: integer;
begin
  for i := 0 to sl.Count - 1 do begin
    if Pos(Anfang, sl[i]) > 0 then begin
      isBlock := True;
      sl[i - 1] := '//// ' + sl[i - 1];
    end;
    if Pos(Ende, sl[i]) > 0 then begin
      isBlock := False;
      sl[i] := '//// ' + sl[i];
    end;
    if isBlock then  begin
      sl[i] := '//// ' + sl[i];
    end;
  end;
end;

procedure THeaderConvert.DeleteBlock(sl: TStringList; const Source: string);
var
  i: integer;
  isBlock: boolean = False;
begin
  for i := 0 to sl.Count - 1 do begin
    if Pos(Source, sl[i]) > 0 then begin
      isBlock := True;
      sl[i - 1] := '//// ' + sl[i - 1];
    end;
    if (Length(sl[i]) < 6) and isBlock then begin
      isBlock := False;
      sl[i] := '//// ' + sl[i];
    end;
    if isBlock then  begin
      sl[i] := '//// ' + sl[i];
    end;
  end;
end;

procedure THeaderConvert.IncludeToTmp;

  function SlashPos(const s: string): integer;
  var
    l: SizeInt;
  begin
    l := Length(s);
    while (l > 1) and (s[l] <> '/') do begin
      Dec(l);
    end;
    Result := l;
  end;

var
  i, j, Index: integer;
  sl, slHeaderList: TStringList;
  path: string;

begin
  DeleteDirectory('/tmp/GTK4-Konverter-header', False);
  slHeaderList := FindAllFiles(HeaderPath, HeaderMask, True);

  for i := 0 to Length(ListIngFiles) - 1 do begin
    WriteLn(ListIngFiles[i]);
    Index := slHeaderList.IndexOf(ListIngFiles[i]);
    WriteLn(Index);
    if index >= 0 then  begin
      slHeaderList.Delete(Index);
    end;
  end;

  sl := TStringList.Create;
  for i := 0 to slHeaderList.Count - 1 do begin
    path := slHeaderList[i];
    sl.LoadFromFile(slHeaderList[i]);
    Delete(path, 1, Length(HeaderPath));
    path := HeaderDespPath + path;
    ForceDirectories(ExtractFileDir(path));

    for j := 0 to Length(ListRenameMacrosLine) - 1 do begin
      RenameMacroLines(sl, ListRenameMacrosLine[j]);
    end;

    for j := 0 to Length(ListRenameMacros) - 1 do begin
      RenameMacro(sl, ListRenameMacros[j]);
    end;

    for j := 0 to Length(ListPos1) - 1 do begin
      DeletePos1(sl, ListPos1[j]);
    end;

    for j := 0 to Length(ListSR) - 1 do begin
      DeleteSR(sl, ListSR[j]);
    end;

    Delete_G_STMT_Block(sl);

    for j := 0 to Length(ListDeleteBlock) - 1 do begin
      DeleteBlock(sl, ListDeleteBlock[j]);
    end;

    Delete_enums_h(sl);

    Insert('4', path, SlashPos(path) + 4);
    WriteLn((path));

    sl.SaveToFile(path);
  end;
  slHeaderList.Free;
  sl.Free;
end;

end.
