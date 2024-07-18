unit G_DECLARE_Tools;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  T_G_DECLARE = (is_G_DECLARE_none = -1, is_G_DECLARE_FINAL_TYPE, is_G_DECLARE_DERIVABLE_TYPE, is_G_DECLARE_INTERFACE, is_GDK_DECLARE_INTERNAL_TYPE);

var
  G_DECLARE: T_G_DECLARE;
  Str_G_DECLARE_INTERFACE: string;

function Find_G_DECLARE(sl: TStringList): T_G_DECLARE;
function ConvertSLMacro_from_G_DECLARE: TStringList;



implementation

function Find_G_DECLARE(sl: TStringList): T_G_DECLARE;
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

function ConvertSLMacro_from_G_DECLARE: TStringList;
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

  if G_DECLARE in [is_G_DECLARE_DERIVABLE_TYPE, is_GDK_DECLARE_INTERNAL_TYPE] then begin
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

    Result.Add('  Result := g_type_interface_peek(obj, ' + sa[7] + '_TYPE_' + sa[9] + ');');

    //    Result.Add('  Result := P' + sa[3] + 'Interface(PGTypeInstance(obj)^.g_class);'); // alt falsch
    //    Result := g_type_interface_peek(obj, GTK_TYPE_BUILDABLE);


//    Result := g_type_interface_peek(obj, GTK_TYPE_BUILDABLE);

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



end.
