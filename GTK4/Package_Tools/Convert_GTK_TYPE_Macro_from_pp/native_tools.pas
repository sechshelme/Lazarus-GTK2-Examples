unit Native_Tools;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

procedure ConvertSLMacro_from_Native(var sl: TStringList);


implementation

uses
  Unit1;

procedure ConvertSLMacro_from_Native(var sl: TStringList);

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

  function FindGTKWidgetInterface(const s: string): string;
  var
    sa: TAnsiStringArray;
  begin
    sa := s.Split([',', ')']);
    Result := 'P' + sa[2];
  end;

var
  p: integer = 0;
  GTK_TYPE_XXX, gtkWidget, gtkWidgetClass, gtkWidgetInterface: string;
begin
  // GTK_TYPE_WINDOW
  if Form1.CheckBox1.Checked then begin
    GTK_TYPE_XXX := FindGTK_TYPE(sl[p]);
    WriteLn('GTK_TYPE: ', GTK_TYPE_XXX);

    sl[p] := StringReplace(sl[p], 'longint; { return type might be wrong }', 'TGType;', []);
    Inc(p, 5);
  end;

  // GTK_WINDOW
  if Form1.CheckBox2.Checked then begin
    gtkWidget := FindGTKWidget(sl[p + 2]);
    WriteLn('gtkWidget: ', gtkWidget);

    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', gtkWidget, []);
    Inc(p, 2);
    sl[p] := '  Result := ' + gtkWidget + '(g_type_check_instance_cast(obj, ' + GTK_TYPE_XXX + '));';
    Inc(p, 3);
  end;

  // GTK_WINDOW_CLASS
  if Form1.CheckBox3.Checked then begin
    gtkWidgetClass := FindGTKWidget(sl[p + 2]);
    WriteLn('gtkWidgetClass: ', gtkWidgetClass);
    sl[p] := StringReplace(sl[p], 'klass : longint', 'klass : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', gtkWidgetClass, []);

    Inc(p, 2);
    sl[p] := '  Result := ' + gtkWidgetClass + '(g_type_check_class_cast(klass, ' + GTK_TYPE_XXX + '));';
    Inc(p, 3);
  end;

  // GTK_IS_WINDOW
  if Form1.CheckBox4.Checked then begin
    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', 'Tgboolean', []);

    Inc(p, 2);
    sl[p] := '  Result := g_type_check_instance_is_a(obj,  ' + GTK_TYPE_XXX + ');';
    Inc(p, 3);
  end;

  // GTK_IS_WINDOW_CLASS
  if Form1.CheckBox5.Checked then begin
    sl[p] := StringReplace(sl[p], 'klass : longint', 'klass : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', 'Tgboolean', []);

    Inc(p, 2);
    sl[p] := '  Result := g_type_check_class_is_a(klass,  ' + GTK_TYPE_XXX + ');';
    Inc(p, 3);
  end;

  // GTK_WINDOW_GET_CLASS
  if Form1.CheckBox6.Checked then begin
    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', gtkWidgetClass, []);

    Inc(p, 2);
    sl[p] := '  Result := ' + gtkWidgetClass + '(PGTypeInstance(obj)^.g_class);';
  end;

  // GTK_WINDOW_GET_CLASS
  if Form1.CheckBox7.Checked then begin
    gtkWidgetInterface := FindGTKWidgetInterface(sl[p + 2]);
    WriteLn('gtkWidgetInterface: ', gtkWidgetInterface);

    sl[p] := StringReplace(sl[p], 'obj : longint', 'obj : Pointer', []);
    sl[p] := StringReplace(sl[p], 'longint', gtkWidgetInterface, []);

    Inc(p, 2);
    sl[p] := '  Result := g_type_interface_peek(obj, ' + GTK_TYPE_XXX + ');';
  end;

  WriteLn();
  WriteLn();
end;

end.
