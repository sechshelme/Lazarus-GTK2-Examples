/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkToggleButton = record
    button: TGtkButton;
  end;
  PGtkToggleButton = ^TGtkToggleButton;

  TGtkToggleButtonClass = record
    parent_class: TGtkButtonClass;
    toggled: procedure(toggle_button: PGtkToggleButton); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkToggleButtonClass = ^TGtkToggleButtonClass;


function gtk_toggle_button_get_type: TGType; cdecl; external gtklib;
function gtk_toggle_button_new: PGtkWidget; cdecl; external gtklib;
function gtk_toggle_button_new_with_label(_label: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_toggle_button_new_with_mnemonic(_label: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_toggle_button_set_active(toggle_button: PGtkToggleButton; is_active: Tgboolean); cdecl; external gtklib;
function gtk_toggle_button_get_active(toggle_button: PGtkToggleButton): Tgboolean; cdecl; external gtklib;
procedure gtk_toggle_button_toggled(toggle_button: PGtkToggleButton); cdecl; external gtklib;
procedure gtk_toggle_button_set_group(toggle_button: PGtkToggleButton; group: PGtkToggleButton); cdecl; external gtklib;

// === Konventiert am: 21-7-24 19:43:53 ===

function GTK_TYPE_TOGGLE_BUTTON: TGType;
function GTK_TOGGLE_BUTTON(obj: Pointer): PGtkToggleButton;
function GTK_TOGGLE_BUTTON_CLASS(klass: Pointer): PGtkToggleButtonClass;
function GTK_IS_TOGGLE_BUTTON(obj: Pointer): Tgboolean;
function GTK_IS_TOGGLE_BUTTON_CLASS(klass: Pointer): Tgboolean;
function GTK_TOGGLE_BUTTON_GET_CLASS(obj: Pointer): PGtkToggleButtonClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TOGGLE_BUTTON: TGType;
begin
  GTK_TYPE_TOGGLE_BUTTON := gtk_toggle_button_get_type;
end;

function GTK_TOGGLE_BUTTON(obj: Pointer): PGtkToggleButton;
begin
  Result := PGtkToggleButton(g_type_check_instance_cast(obj, GTK_TYPE_TOGGLE_BUTTON));
end;

function GTK_TOGGLE_BUTTON_CLASS(klass: Pointer): PGtkToggleButtonClass;
begin
  Result := PGtkToggleButtonClass(g_type_check_class_cast(klass, GTK_TYPE_TOGGLE_BUTTON));
end;

function GTK_IS_TOGGLE_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TOGGLE_BUTTON);
end;

function GTK_IS_TOGGLE_BUTTON_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_TOGGLE_BUTTON);
end;

function GTK_TOGGLE_BUTTON_GET_CLASS(obj: Pointer): PGtkToggleButtonClass;
begin
  Result := PGtkToggleButtonClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
