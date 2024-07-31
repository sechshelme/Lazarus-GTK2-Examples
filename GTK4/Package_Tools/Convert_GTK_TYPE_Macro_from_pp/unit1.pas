unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Native_Tools, G_DECLARE_Tools;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox7: TCheckBox;
    Convert: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckGroup1: TCheckGroup;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure ConvertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SourcePath, DestPath: string;
    procedure Form1DropFiles(Sender: TObject; const FileNames: array of string);
    procedure Delete_Const(sl: TStringList);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.Form1DropFiles(Sender: TObject; const FileNames: array of string);
begin
  SourcePath := FileNames[0];
  WriteLn('pfad: ', SourcePath);
  if ExtractFileExt(SourcePath) <> '.pp' then begin
    WriteLn('Keine "*.pp" Datei !');
    SourcePath := '';
  end else begin
    Label1.Caption := SourcePath;
    DestPath := ChangeFileExt(SourcePath, '.pas');
    Memo1.Lines.LoadFromFile(SourcePath);
    Memo1.SelStart := 20000;
  end;
end;

procedure TForm1.Delete_Const(sl: TStringList);
var
  deleteString: TStringArray = (
    ('(* Const before type ignored *)'),
    ('(* Const before declarator ignored *)'));
  j, i: integer;
begin
  for j := 0 to Length(deleteString) - 1 do begin
    for i := sl.Count - 1 downto 0 do begin
      if sl[i] = deleteString[j] then begin
        SL.Delete(i);
      end;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  top := 10;
  Left := 10;
  Width := 1200;
  Height := 800;
  AllowDropFiles := True;
  OnDropFiles := @Form1DropFiles;

  CheckBox1.Caption := 'GTK_TYPE_WINDOW';
  CheckBox2.Caption := 'GTK_WINDOW(obj)';
  CheckBox3.Caption := 'GTK_WINDOW_CLASS(klass)';
  CheckBox4.Caption := 'GTK_IS_WINDOW(obj)';
  CheckBox5.Caption := 'GTK_IS_WINDOW_CLASS(klass)';
  CheckBox6.Caption := 'GTK_WINDOW_GET_CLASS(obj)';
  CheckBox7.Caption := 'GTK_WINDOW_GET_IFACE(obj)';
end;

procedure TForm1.ConvertClick(Sender: TObject);
var
  sl, slMacro: TStringList;
  p, i, j, macCount: integer;

  procedure DeleteLines(p, Count: integer);
  var
    i: integer;
  begin
    for i := 0 to Count - 1 do begin
      sl.Delete(p);
    end;
  end;

begin
  if not FileExists(SourcePath) then begin
    WriteLn('Datei nicht gefunden !');
    Exit;
  end;
  sl := TStringList.Create;
  sl.LoadFromFile(SourcePath);

  sl.Text := StringReplace(sl.Text, 'external;', 'external gtklib;', [rfReplaceAll]);
  sl.Text := StringReplace(sl.Text, '(o : longint)', '(obj : longint)', [rfReplaceAll]);
  sl.Text := StringReplace(sl.Text, '(object : longint)', '(obj : longint)', [rfReplaceAll]);
  sl.Text := StringReplace(sl.Text, '(k : longint)', '(klass : longint)', [rfReplaceAll]);
  sl.Text := StringReplace(sl.Text, '(vtable : longint)', '(klass : longint)', [rfReplaceAll]);
  sl.Text := StringReplace(sl.Text, '(inst : longint)', '(obj : longint)', [rfReplaceAll]);

  sl.Delete(0);
  sl.Insert(1, '');

  repeat
    sl.Delete(4);
  until sl[4] = '{$IFDEF FPC}';

  sl.Insert(4, 'uses' + #10 + '  glib2, common_GTK;' + #10);

  p := 0;
  repeat
    Inc(p);
  until (pos('{ was #define dname def_expr }', sl[p]) = 1) or (p >= sl.Count - 1);
  if p >= sl.Count - 1 then begin
    p := 0;
    CheckBox1.Checked := False;
    CheckBox2.Checked := False;
    CheckBox3.Checked := False;
    CheckBox4.Checked := False;
    CheckBox5.Checked := False;
    CheckBox6.Checked := False;
    CheckBox7.Checked := False;
  end;

  G_DECLARE := Find_G_DECLARE(sl);
  if G_DECLARE <> is_G_DECLARE_none then begin
    CheckBox1.Checked := False;
    CheckBox2.Checked := False;
    CheckBox3.Checked := False;
    CheckBox4.Checked := False;
    CheckBox5.Checked := False;
    CheckBox6.Checked := False;
    CheckBox7.Checked := False;
    DeleteLines(p, 3);
  end;
  WriteLn('G_DECLARE: ', G_DECLARE);

  macCount := 0;
  if CheckBox1.Checked then begin
    Inc(macCount);
    DeleteLines(p, 3);
  end;
  if CheckBox2.Checked then begin
    Inc(macCount);
    DeleteLines(p, 5);
  end;
  if CheckBox3.Checked then begin
    Inc(macCount);
    DeleteLines(p, 5);
  end;
  if CheckBox4.Checked then begin
    Inc(macCount);
    DeleteLines(p, 5);
  end;
  if CheckBox5.Checked then begin
    Inc(macCount);
    DeleteLines(p, 5);
  end;
  if CheckBox6.Checked then begin
    Inc(macCount);
    DeleteLines(p, 5);
  end;
  if CheckBox7.Checked then begin
    Inc(macCount);
    DeleteLines(p, 5);
  end;

  repeat
    Inc(p);
  until pos('implementation', sl[p]) = 1;
  Inc(p, 3);


  if G_DECLARE <> is_G_DECLARE_none then begin
    slMacro := ConvertSLMacro_from_G_DECLARE;
  end else begin
    slMacro := TStringList.Create;
    for j := 0 to macCount - 1 do begin
      for i := 0 to 4 do begin
        slMacro.Add(sl[p + i + j * 8]);
      end;
    end;
    ConvertSLMacro_from_Native(slMacro);
  end;

  WriteLn(slMacro.Text);

  Dec(p, 2);

  if (CheckBox1.Checked) or (G_DECLARE <> is_G_DECLARE_none) then begin
    DeleteLines(p, 6);
  end;
  if CheckBox2.Checked then begin
    DeleteLines(p, 8);
  end;
  if CheckBox3.Checked then begin
    DeleteLines(p, 8);
  end;
  if CheckBox4.Checked then begin
    DeleteLines(p, 8);
  end;
  if CheckBox5.Checked then begin
    DeleteLines(p, 8);
  end;
  if CheckBox6.Checked then begin
    DeleteLines(p, 8);
  end;
  if CheckBox7.Checked then begin
    DeleteLines(p, 8);
  end;

  p := 0;
  repeat
    Inc(p);
  until pos('implementation', sl[p]) = 1;

  sl.Insert(p + 2, slMacro.Text);
  sl.Insert(p - 1, '');
  sl.Insert(p - 1, '// === Konventiert am: ' + DateTimeToStr(now) + ' ===');
  sl.Insert(p - 1, '');

  case G_DECLARE of
    is_G_DECLARE_none: begin
    end;
    is_G_DECLARE_FINAL_TYPE: begin
      macCount := 3;
    end;
    is_G_DECLARE_DERIVABLE_TYPE: begin
      macCount := 6;
    end;
    is_G_DECLARE_INTERFACE: begin
      macCount := 4;
    end;
    is_GDK_DECLARE_INTERNAL_TYPE: begin
      macCount := 6;
    end;
  end;

  for i := 0 to macCount - 1 do begin
    sl.Insert(p + i + 2, slMacro[i * 5]);
  end;

  Delete_Const(sl);
  Memo1.Lines := sl;
  Memo1.SelStart := 20000;

  sl.SaveToFile(DestPath);
  sl.Free;
  slMacro.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sl, slMacro: TStringList;
begin
  sl := TStringList.Create;
  sl.Add(Edit1.Text);
  G_DECLARE := Find_G_DECLARE(sl);
  WriteLn(G_DECLARE);
  WriteLn();

  slMacro := ConvertSLMacro_from_G_DECLARE;
  Memo1.Lines := slMacro;

  slMacro.Free;
  sl.Free;
end;

end.
