unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, FileUtil;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function DeleteLines(const s, delStr: String): String;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.DeleteLines(const s, delStr: String): String;
begin
if Pos(delStr,s)=1 then Result:='' else Result:=s;
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  slFile, slHeader: TStringList;
  i, j: integer;
begin
  Memo1.Clear;
  slFile := FindAllFiles('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4/Package_Tools/include-C', '*.h',True);
  Memo1.Lines := slFile;

  for i := 0 to slFile.Count - 1 do begin
    slHeader := TStringList.Create;
    slHeader.LoadFromFile(slFile[i]);
    for j := 0 to slHeader.Count - 1 do begin
      slHeader[j] := StringReplace(slHeader[j], 'G_BEGIN_DECLS', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'G_END_DECLS', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_ALL', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'G_GNUC_CONST', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_DEPRECATED_IN_4_10', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_DEPRECATED_IN_4_12', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_DEPRECATED_IN_4_14', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_2', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_4', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_6', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_8', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_10', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_12', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_IN_4_14', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_ENUMERATOR_IN_4_10', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_ENUMERATOR_IN_4_12', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_ENUMERATOR_IN_4_14', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'GDK_AVAILABLE_ENUMERATOR_IN_4_14', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'G_GNUC_NULL_TERMINATED', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'G_GNUC_WARN_UNUSED_RESULT', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'G_GNUC_MALLOC', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], 'G_GNUC_PURE', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GListModel)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkColumnView and GtkColumnViewColumn)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkListView)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkDropDown)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkDropDown and GtkStringList)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkDragSource)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkDropTarget)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkDragSource and GtkDropTarget)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkFilterListModel)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkTreeListModel)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GtkGridView)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(GListStore)', '', [rfReplaceAll]);
      slHeader[j] := StringReplace(slHeader[j], '_FOR(gtk_uri_launcher_launch)', '', [rfReplaceAll]);

      slHeader[j] := StringReplace(slHeader[j], 'GDK_DEPRECATED_IN_4_6_FOR(gdk_gl_texture_new)', '', [rfReplaceAll]);




      slHeader[j] := DeleteLines(slHeader[j], 'G_DEFINE_AUTOPTR_CLEANUP_FUNC(');
    end;
    slHeader.SaveToFile(slFile[i]);
    slHeader.Free;
  end;

  slFile.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Height := 1000;
  Width := 1000;
end;


end.
