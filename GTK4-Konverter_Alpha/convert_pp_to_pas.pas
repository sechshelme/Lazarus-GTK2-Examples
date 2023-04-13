unit Convert_pp_to_pas;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process,
  Common;

type

  TConvert_pp_to_pas = class(TObject)
  private
    InterfaceIndex: integer;
    ImplementationIndex: integer;
  public
    procedure Conver_to_pas;
  end;

implementation

procedure TConvert_pp_to_pas.Conver_to_pas;
var
  slppFiles, sl: TStringList;
  path, s: string;
  i, index: integer;
  slGTK4Pas: TStringList;

  procedure DeleteTypes(sl: TStringList);
  var
    index: integer = 0;
    isType: boolean = False;
  begin
    repeat
      if index >= sl.Count then begin
        Exit;
      end;
      if Pos('Type', sl[index]) > 0 then begin
        //        if sl[index] = 'Type' then begin
        sl[index] := '//// ' + sl[index];
        isType := True;
      end;
      Inc(index);
    until isType;

    isType := False;
    repeat
      if index >= sl.Count then begin
        Exit;
      end;
      if (Pos('Type', sl[index]) > 0) or (pos('{$IFDEF FPC}', sl[index]) > 0) then begin
        //        if (sl[index] = 'Type') or (pos('{$IFDEF FPC}', sl[index]) > 0) then begin
        isType := True;
      end else begin
        sl[index] := '//// ' + sl[index];
      end;
      Inc(index);
    until isType;
  end;

  procedure DeleteClamp(sl: TStringList);
  var
    i: integer;
  begin
    for i := 0 to sl.Count - 1 do begin
      if pos('{', sl[i]) = 1 then begin
        if sl[i] <> '{' then begin
          sl[i] := '//// ' + sl[i];
        end;
      end;
      if pos('(* error', sl[i]) = 1 then begin
        if sl[i] <> '{' then begin
          sl[i] := '//// ' + sl[i];
          sl[i + 1] := '//// ' + sl[i + 1];
        end;
      end;
    end;
  end;

  procedure AddGTK4Pas(slGTK4pas: TStringList; Source: TStringList; const Headername: string);
  var
    i, start, ende: integer;
  begin
    start := Source.IndexOf('interface');
    ende := Source.IndexOf('implementation');
    if (start < 1) or (ende < 1) then begin
      WriteLn('Ungültige Unit');
      WriteLn(start);
      WriteLn(ende);
      WriteLn(Headername);
      Exit;
    end;

    slGTK4pas.Insert(ImplementationIndex, '// -------------------------------------------------');
    slGTK4pas.Insert(ImplementationIndex, '// ' + Headername);
    slGTK4pas.Insert(ImplementationIndex, '// --------- Implementation ------------------------');

    slGTK4pas.Insert(InterfaceIndex, '// -------------------------------------------------');
    slGTK4pas.Insert(InterfaceIndex, '// ' + Headername);
    slGTK4pas.Insert(InterfaceIndex, '// --------- inteface ------------------------------');

    Inc(InterfaceIndex, 3);
    Inc(ImplementationIndex, 6);

    for i := start + 1 to ende - 1 do begin
      slGTK4pas.Insert(InterfaceIndex, Source[i]);
      Inc(InterfaceIndex);
      Inc(ImplementationIndex);
    end;

    for i := ende + 1 to Source.Count - 2 do begin
      slGTK4pas.Insert(ImplementationIndex, Source[i]);
      Inc(ImplementationIndex);
    end;
  end;

  function IndexOf(sl: TStringList; const HeaderFolg: string): integer;
  var
    i: integer;
  begin
    Result := -1;
    for i := 0 to sl.Count - 1 do begin
      if pos('4' + HeaderFolg + '.pp', sl[i]) > 0 then begin
        Result := i;
        Exit;
      end;
    end;
  end;

const
  HeaderFolge: TStringArray = (
    'types',
    'widget');

begin
  slGTK4Pas := TStringList.Create;
  slGTK4Pas.Add('unit GTK4;');
  slGTK4Pas.Add('');
  slGTK4Pas.Add('interface');
  slGTK4Pas.Add('');
  slGTK4Pas.Add('uses');
  slGTK4Pas.Add('  cairo, pango;');
  slGTK4Pas.Add('');
  slGTK4Pas.Add('implementation');
  slGTK4Pas.Add('');

  slppFiles := FindAllFiles(HeaderDespPath, '*.pp', True);

  for i := Length(HeaderFolge) - 1 downto 0 do begin
    index := IndexOf(slppFiles, HeaderFolge[i]);
    if index > 0 then begin
      s := slppFiles[index];
      slppFiles.Delete(index);
      slppFiles.Insert(0, s);
    end;
    WriteLn(index);
  end;
  WriteLn(slppFiles.Text);

  InterfaceIndex := slGTK4Pas.IndexOf('interface') + 4;
  ImplementationIndex := slGTK4Pas.IndexOf('implementation') + 1;

  for i := 0 to slppFiles.Count - 1 do begin
    path := slppFiles[i];
    sl := TStringList.Create;
    sl.LoadFromFile(path);

    DeleteClamp(sl);
    //    DeleteTypes(sl);

    AddGTK4Pas(slGTK4Pas, sl, path);

    path := StringReplace(path, '.pp', '.pas', []);
    sl.SaveToFile(path);
    sl.Free;
  end;
  slppFiles.Free;

  slGTK4Pas.Add('');
  slGTK4Pas.Add('end.');
  slGTK4Pas.SaveToFile('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter_Alpha/gtk4.pas');
  slGTK4Pas.Free;
end;

end.
