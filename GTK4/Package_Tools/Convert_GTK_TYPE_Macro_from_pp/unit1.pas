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
    type
      T_G_DECLARE = (is_G_DECLARE_none = -1, is_G_DECLARE_FINAL_TYPE, is_G_DECLARE_DERIVABLE_TYPE, is_G_DECLARE_INTERFACE, is_GDK_DECLARE_INTERNAL_TYPE);
    var
      G_DECLARE: T_G_DECLARE;
      Str_G_DECLARE_INTERFACE,

      SourcePath, DestPath: string;
    procedure ConvertSLMacro(var sl: TStringList);
    function Find_G_DECLARE(sl: TStringList): T_G_DECLARE;
    function ConvertSLMacro_from_G_DECLARE: TStringList;

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
end;

procedure TForm1.ConvertSLMacro(var sl: TStringList);

  function FindGTK_TYPE(const s: string): string;
  var
    sa: TAnsiStringArray;
  begin
    sa := s.Split([' ']);
    Result := sa[1];
  end;

  function FindGTKWidget(const s: string): string;
  var
    sa: TAnsiStringArray;
  begin
    sa := s.Split([',', ')']);
    Result := 'P' + sa[2];
  end;

  function FindGTKWidgetClass(const s: string): string;
  var
    sa: TAnsiStringArray;
  begin
    sa := s.Split([',', ')']);
    Result := 'P' + sa[2];
  end;

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
  end;

  // GTK_WINDOW
  if CheckBox2.Checked then begin
    gtkWidget := FindGTKWidget(sl[p + 2]);
    WriteLn('gtkWidget: ', gtkWidget);

    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
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

function TForm1.Find_G_DECLARE(sl: TStringList): T_G_DECLARE;
var
  i, j: integer;
  declare: TStringArray = (
    ('G_DECLARE_FINAL_TYPE'),
    ('G_DECLARE_DERIVABLE_TYPE'),
    ('G_DECLARE_INTERFACE'),
    ('GDK_DECLARE_INTERNAL_TYPE'));

begin
  Result := is_G_DECLARE_none;
  Str_G_DECLARE_INTERFACE := '';
  for j := 0 to Length(declare) - 1 do begin
    for  i := 0 to sl.Count - 1 do begin
      if pos(declare[j], sl[i]) > 0 then begin
        Str_G_DECLARE_INTERFACE := sl[i];
        Result := T_G_DECLARE(j);
        Break;
      end;
    end;
  end;
end;

function TForm1.ConvertSLMacro_from_G_DECLARE: TStringList;
  // {G_DECLARE_FINAL_TYPE      (GtkFontDialog,      gtk_font_dialog,      GTK, FONT_DIALOG,      GObject)};     // Einfach
  // {G_DECLARE_DERIVABLE_TYPE  (GtkFilter,          gtk_filter,           GTK, FILTER,           GObject) }     // Komplett
  // {G_DECLARE_INTERFACE       (GtkNative,          gtk_native,           GTK, NATIVE,           GtkWidget)};   // Interface
  // {GDK_DECLARE_INTERNAL_TYPE (GtkMnemonicTrigger, gtk_mnemonic_trigger, GTK, MNEMONIC_TRIGGER, GtkShortcutTrigger) }
var
  sa: TAnsiStringArray;
  i: integer;
begin
  Result := TStringList.Create;
  sa := Str_G_DECLARE_INTERFACE.Split([' ', ',', '(', ')', '{', '}']);
  for i := 0 to Length(sa) - 1 do begin
    WriteLn(i: 2, '  ', sa[i]);
  end;
  WriteLn();
  Result.Add('function ' + sa[7] + '_TYPE_' + sa[9] + ': TGType;');
  Result.Add('begin');
  Result.Add('  Result := ' + sa[5] + '_get_type;');
  Result.Add('end;');
  Result.Add('');

  Result.Add('function ' + sa[7] + '_' + sa[9] + '(obj: Pointer): P' + sa[3] + ';');
  Result.Add('begin');
  Result.Add('  Result := P' + sa[3] + '(g_type_check_instance_cast(obj, ' + sa[7] + '_TYPE_' + sa[9] + '));');
  Result.Add('end;');
  Result.Add('');

  Result.Add('function ' + sa[7] + '_IS_' + sa[9] + '(obj: Pointer): Tgboolean;');
  Result.Add('begin');
  Result.Add('  Result := g_type_check_instance_is_a(obj, ' + sa[7] + '_TYPE_' + sa[9] + ');');
  Result.Add('end;');
  Result.Add('');

  if G_DECLARE = is_G_DECLARE_FINAL_TYPE then begin

  end;

  if G_DECLARE in [is_G_DECLARE_DERIVABLE_TYPE,is_GDK_DECLARE_INTERNAL_TYPE] then begin
    Result.Add('function ' + sa[7] + '_' + sa[9] + '_CLASS(klass: Pointer): P' + sa[3] + 'Class;');
    Result.Add('begin');
    Result.Add('  Result := P' + sa[3] + 'Class(g_type_check_class_cast(klass, ' + sa[7] + '_TYPE_' + sa[9] + '));');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_IS_' + sa[9] + '_CLASS(klass: Pointer): Tgboolean;');
    Result.Add('begin');
    Result.Add('  Result := g_type_check_class_is_a(klass, ' + sa[7] + '_TYPE_' + sa[9] + ');');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_' + sa[9] + '_GET_CLASS(obj: Pointer): P' + sa[3] + 'Class;');
    Result.Add('begin');
    Result.Add('  Result := P' + sa[3] + 'Class(PGTypeInstance(obj)^.g_class);');
    Result.Add('end;');
    Result.Add('');
  end;

  if G_DECLARE = is_G_DECLARE_INTERFACE then begin
      Result.Add('function ' + sa[7] + '_' + sa[9] + '_GET_IFACE(obj: Pointer): P' + sa[3] + 'Interface;');
      Result.Add('begin');
      Result.Add('  Result := P' + sa[3] + 'Interface(PGTypeInstance(obj)^.g_class);');
      Result.Add('end;');
      Result.Add('');
  end;

  Result.Add('type ');
  if G_DECLARE = is_G_DECLARE_FINAL_TYPE then begin
      Result.Add('  T' + sa[3] + ' = record');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + ' = ^T' + sa[3] + ';');
      Result.Add('');

      Result.Add('  T' + sa[3] + 'Class = record');
      Result.Add('    parent_class: T' + sa[11] + 'Class;');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + 'Class = ^T' + sa[3] + 'Class;');
      Result.Add('');
  end;
  if G_DECLARE = is_G_DECLARE_DERIVABLE_TYPE then begin
      Result.Add('  T' + sa[3] + ' = record');
      Result.Add('    parent_instance: T' + sa[11]);
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + ' = ^T' + sa[3] + ';');
      Result.Add('');

      Result.Add('  T' + sa[3] + 'Class = record');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + 'Class = ^T' + sa[3] + 'Class;');
      Result.Add('');
  end;
  if G_DECLARE = is_G_DECLARE_INTERFACE then begin
      Result.Add('  T' + sa[3] + ' = record');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + ' = ^T' + sa[3] + ';');
      Result.Add('');

      Result.Add('  T' + sa[3] + 'Interface = record');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + 'Interface = ^T' + sa[3] + 'Interface;');
      Result.Add('');
  end;
  if G_DECLARE = is_GDK_DECLARE_INTERNAL_TYPE then begin
      Result.Add('  T' + sa[3] + ' = record');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + ' = ^T' + sa[3] + ';');
      Result.Add('');

      Result.Add('  T' + sa[3] + 'Class = record');
      Result.Add('  end;');
      Result.Add('  P' + sa[3] + 'Class = ^T' + sa[3] + 'Class;');
      Result.Add('');
  end;

  Result.Add('function ' + sa[5] + '_get_type: TGType; cdecl; external gtklib;');
  Result.Add('');
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

  G_DECLARE := Find_G_DECLARE(sl);
  if G_DECLARE <> is_G_DECLARE_none then begin
    CheckBox1.Checked := False;
    CheckBox2.Checked := False;
    CheckBox3.Checked := False;
    CheckBox4.Checked := False;
    CheckBox5.Checked := False;
    CheckBox6.Checked := False;
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
    ConvertSLMacro(slMacro);
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

  p := 0;
  repeat
    Inc(p);
  until pos('implementation', sl[p]) = 1;

  sl.Insert(p + 2, slMacro.Text);

  sl.Insert(p - 1, '');
  sl.Insert(p - 1, '// === Konventiert am: ' + DateTimeToStr(now) + ' ===');
  sl.Insert(p - 1, '');

  if G_DECLARE = is_G_DECLARE_FINAL_TYPE then begin
    macCount := 3;
  end else if G_DECLARE = is_G_DECLARE_DERIVABLE_TYPE then begin
    macCount := 6;
  end else if G_DECLARE = is_G_DECLARE_INTERFACE then begin
    macCount := 4;
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

end.
