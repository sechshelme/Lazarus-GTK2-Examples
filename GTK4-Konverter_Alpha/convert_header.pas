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
    procedure IncludeToTmp(const package: String);
  end;

implementation

const
  ListIngnoreFiles: TStringArray = (
    HeaderPath + 'gdk/x11/gdkx-autocleanups.h',
    HeaderPath + 'gsk/gsk-autocleanup.h',

    HeaderPath + 'unix-print/gtk/gtkunixprint-autocleanups.h',
    HeaderPath + 'gdk/gdkversionmacros.h',
    HeaderPath + 'gtk/gtk-autocleanups.h',
    HeaderPath + 'gdk/gdk-autocleanup.h');

  ListPos1: TStringArray = (
    'G_DEFINE_AUTOPTR_CLEANUP_FUNC',
    'G_BEGIN_DECLS',
    'G_END_DECLS',

    'G_DEFINE_AUTOPTR_CLEANUP_FUNC(',
    'GDK_DEPRECATED_IN_4_2_FOR(gtk_im_context_set_surrounding_with_selection)',
    'GDK_DEPRECATED_IN_4_2_FOR(gtk_im_context_get_surrounding_with_selection)',
    'GDK_DEPRECATED_IN_4_4_FOR(gtk_im_context_simple_add_compose_file)',
    'GDK_DEPRECATED_IN_4_6_FOR(gdk_gl_texture_new)');

  ListSR: TStringArray = (
    'G_GNUC_WARN_UNUSED_RESULT',
    'G_GNUC_PRINTF (2, 3)',
    'G_GNUC_PRINTF (4, 0)',
    'G_GNUC_PRINTF (4, 5)',
    'G_GNUC_PRINTF (5, 6)',
    'G_UNLIKELY',
    'G_GNUC_MALLOC',

    'G_GNUC_PURE',
    'GTK_ACCESSIBLE',
    'G_GNUC_CONST',
    'G_GNUC_NULL_TERMINATED');

  ListRenameMacros: TListMacros = (
    (old: '#callback,'; new: 'callback,'),
    (old: '#member_name,'; new: 'member_name,'),
    (old: 'GDK_DEPRECATED_IN'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_2_FOR'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_4_FOR'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_6_FOR'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_8_FOR'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_ALL'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_2'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_4'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_6'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_8'; new: 'extern'));
    (old: 'GDK_AVAILABLE_IN'; new: 'extern'));

  ListRenameMacrosLine: TStringArray = (
    '#define GTK_DEBUG_CHECK',
    '#define GTK_NOTE',
    'GDK_DECLARE_INTERNAL_TYPE',
    'G_DECLARE_INTERFACE',
    'G_DECLARE_FINAL_TYPE',
    'G_DECLARE_DERIVABLE_TYPE');

  ListDeleteBlock: TStringArray = (
    '#define GSK_ROUNDED_RECT_INIT(_x,_y,_w,_h)',
    '#define GDK_DECLARE_INTERNAL_TYPE',
    '#define GTK_CHECK_VERSION(major,minor,micro)', 'static inline ');


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

procedure THeaderConvert.IncludeToTmp(const package:String);

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

tmpHeaderPath,  path: string;

begin
  if pos('/tmp', HeaderDespPath) = 1 then  begin
    DeleteDirectory(HeaderDespPath, False);
  end else begin
    ShowMessage('Achtung es wird nicht /tmp/xxx gelöscht !');
  end;
  tmpHeaderPath:=HeaderPath+'/'+package;
//  slHeaderList := FindAllFiles(tmpHeaderPath, HeaderMask, True);
  slHeaderList := FindAllFiles(tmpHeaderPath, HeaderMask, False);

  WriteLn(slHeaderList.Text);
  for i := 0 to Length(ListIngnoreFiles) - 1 do begin
    WriteLn(ListIngnoreFiles[i]);
    Index := slHeaderList.IndexOf(ListIngnoreFiles[i]);
    WriteLn(Index);
    if index >= 0 then  begin
      slHeaderList.Delete(Index);
    end;
  end;

  sl := TStringList.Create;
  for i := 0 to slHeaderList.Count - 1 do begin
    path := slHeaderList[i];
    sl.LoadFromFile(slHeaderList[i]);

    Delete(path, 1, Length(tmpHeaderPath));

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

//    Insert('4', path, SlashPos(path) + 4);
    WriteLn((path));

    sl.SaveToFile(path);
  end;
  slHeaderList.Free;
  sl.Free;
end;

end.
