unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Convert: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckGroup1: TCheckGroup;
    Label1: TLabel;
    Memo1: TMemo;
    procedure ConvertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SourcePath, DestPath: string;
    procedure ConvertSLMacro(var sl: TStringList);
    function FindGTK_TYPE(const s: string): string;
    function FindGTKWidget(const s: string): string;
    function FindGTKWidgetClass(const s: string): string;
    procedure Form1DropFiles(Sender: TObject; const FileNames: array of string);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
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
end;

function TForm1.FindGTK_TYPE(const s: string): string;
var
  sa: TAnsiStringArray;
begin
  sa := s.Split([' ']);
  Result := sa[1];
end;

function TForm1.FindGTKWidget(const s: string): string;
var
  sa: TAnsiStringArray;
begin
  sa := s.Split([',', ')']);
  Result := 'P' + sa[2];
end;

function TForm1.FindGTKWidgetClass(const s: string): string;
var
  sa: TAnsiStringArray;
begin
  sa := s.Split([',', ')']);
  Result := 'P' + sa[2];
end;

procedure TForm1.ConvertSLMacro(var sl: TStringList);
var
  p: integer = 0;
  GTK_TYPE_XXX, gtkWidget, gtkWidgetClass: string;
begin
  // GTK_TYPE_WINDOW
  if CheckBox1.Checked then begin
    GTK_TYPE_XXX := FindGTK_TYPE(sl[p]);
    WriteLn('GTK_TYPE: ', GTK_TYPE_XXX);

    sl[p] := StringReplace(sl[p], 'longint; { return type might be wrong }', 'TGType;', []);
    Inc(p, 5);
    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
  end;

  // GTK_WINDOW
  if CheckBox2.Checked then begin
    gtkWidget := FindGTKWidget(sl[p + 2]);
    WriteLn('gtkWidget: ', gtkWidget);

    sl[p] := StringReplace(sl[p], 'longint', gtkWidget, []);
    Inc(p, 2);
    sl[p] := '  Result := ' + gtkWidget + '(g_type_check_instance_cast(obj, ' + GTK_TYPE_XXX + '));';
    Inc(p, 3);
  end;

  // GTK_WINDOW_CLASS
  if CheckBox3.Checked then begin
    gtkWidgetClass := FindGTKWidget(sl[p + 2]);
    WriteLn('gtkWidgetClass: ', gtkWidgetClass);
    sl[p] := StringReplace(sl[p], 'klass : longint', 'klass : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', gtkWidgetClass, []);

    Inc(p, 2);
    sl[p] := '  Result := ' + gtkWidgetClass + '(g_type_check_class_cast(klass, ' + GTK_TYPE_XXX + '));';
    Inc(p, 3);
  end;

  // GTK_IS_WINDOW
  if CheckBox4.Checked then begin
    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', 'Tgboolean', []);

    Inc(p, 2);
    sl[p] := '  Result := g_type_check_instance_is_a(obj,  ' + GTK_TYPE_XXX + ');';
    Inc(p, 3);
  end;

  // GTK_IS_WINDOW_CLASS
  if CheckBox5.Checked then begin
    sl[p] := StringReplace(sl[p], 'klass : longint', 'klass : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', 'Tgboolean', []);

    Inc(p, 2);
    sl[p] := '  Result := g_type_check_class_is_a(klass,  ' + GTK_TYPE_XXX + ');';
    Inc(p, 3);
  end;

  // GTK_WINDOW_GET_CLASS
  if CheckBox6.Checked then begin
    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', gtkWidgetClass, []);

    Inc(p, 2);
    sl[p] := '  Result := ' + gtkWidgetClass + '(PGTypeInstance(obj)^.g_class);';
  end;

  WriteLn();
  WriteLn();
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

  sl.Delete(0);
  sl.Insert(1, '');

  repeat
    sl.Delete(4);
  until sl[4] = '{$IFDEF FPC}';

  sl.Insert(4, 'uses' + #10 + '  glib2, common_GTK;' + #10);

  p := 0;
  repeat
    Inc(p);
  until pos('{ was #define dname def_expr }', sl[p]) = 1;

  macCount := 2;
  DeleteLines(p, 8);
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

  repeat
    Inc(p);
  until pos('implementation', sl[p]) = 1;
  Inc(p, 3);


  slMacro := TStringList.Create;
  for j := 0 to macCount - 1 do begin
    for i := 0 to 4 do begin
      slMacro.Add(sl[p + i + j * 8]);
    end;
  end;

  ConvertSLMacro(slMacro);
  WriteLn(slMacro.Text);

  Dec(p, 2);

  DeleteLines(p, 14);
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

  p := 0;
  repeat
    Inc(p);
  until pos('implementation', sl[p]) = 1;

  sl.Insert(p + 2, slMacro.Text);

  sl.Insert(p - 1, '');
  sl.Insert(p - 1, '// === Konventiert am: ' + DateTimeToStr(now) + ' ===');
  sl.Insert(p - 1, '');

  for i := 0 to macCount - 1 do begin
    sl.Insert(p + i + 2, slMacro[i * 5]);
  end;

  Memo1.Lines := sl;
  Memo1.SelStart := 20000;

  sl.SaveToFile(DestPath);
  sl.Free;
  slMacro.Free;
end;

end.
