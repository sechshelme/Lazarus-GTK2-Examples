/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkButton = record
    parent_instance: TGtkWidget;
  end;
  PGtkButton = ^TGtkButton;

  TGtkButtonClass = record
    parent_class: TGtkWidgetClass;
    clicked: procedure(button: PGtkButton); cdecl;
    activate: procedure(button: PGtkButton); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkButtonClass = ^TGtkButtonClass;


function gtk_button_get_type: TGType; cdecl; external gtklib;
function gtk_button_new: PGtkWidget; cdecl; external gtklib;
function gtk_button_new_with_label(_label: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_button_new_from_icon_name(icon_name: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_button_new_with_mnemonic(_label: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_button_set_has_frame(button: PGtkButton; has_frame: Tgboolean); cdecl; external gtklib;
function gtk_button_get_has_frame(button: PGtkButton): Tgboolean; cdecl; external gtklib;
procedure gtk_button_set_label(button: PGtkButton; _label: PChar); cdecl; external gtklib;
function gtk_button_get_label(button: PGtkButton): PChar; cdecl; external gtklib;
procedure gtk_button_set_use_underline(button: PGtkButton; use_underline: Tgboolean); cdecl; external gtklib;
function gtk_button_get_use_underline(button: PGtkButton): Tgboolean; cdecl; external gtklib;
procedure gtk_button_set_icon_name(button: PGtkButton; icon_name: PChar); cdecl; external gtklib;
function gtk_button_get_icon_name(button: PGtkButton): PChar; cdecl; external gtklib;
procedure gtk_button_set_child(button: PGtkButton; child: PGtkWidget); cdecl; external gtklib;
function gtk_button_get_child(button: PGtkButton): PGtkWidget; cdecl; external gtklib;
procedure gtk_button_set_can_shrink(button: PGtkButton; can_shrink: Tgboolean); cdecl; external gtklib;
function gtk_button_get_can_shrink(button: PGtkButton): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 14-7-24 13:21:50 ===

function GTK_TYPE_BUTTON: TGType;
function GTK_BUTTON(obj: Pointer): PGtkButton;
function GTK_BUTTON_CLASS(klass: Pointer): PGtkButtonClass;
function GTK_IS_BUTTON(obj: Pointer): Tgboolean;
function GTK_IS_BUTTON_CLASS(klass: Pointer): Tgboolean;
function GTK_BUTTON_GET_CLASS(obj: Pointer): PGtkButtonClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BUTTON: TGType;
begin
  GTK_TYPE_BUTTON := gtk_button_get_type;
end;

function GTK_BUTTON(obj: Pointer): PGtkButton;
begin
  Result := PGtkButton(g_type_check_instance_cast(obj, GTK_TYPE_BUTTON));
end;

function GTK_BUTTON_CLASS(klass: Pointer): PGtkButtonClass;
begin
  Result := PGtkButtonClass(g_type_check_class_cast(klass, GTK_TYPE_BUTTON));
end;

function GTK_IS_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BUTTON);
end;

function GTK_IS_BUTTON_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_BUTTON);
end;

function GTK_BUTTON_GET_CLASS(obj: Pointer): PGtkButtonClass;
begin
  Result := PGtkButtonClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
