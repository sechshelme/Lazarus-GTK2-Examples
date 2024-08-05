/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkExpander = record // _GtkExpander
  end;
  PGtkExpander = ^TGtkExpander;

function gtk_expander_get_type: TGType; cdecl; external gtklib;
function gtk_expander_new(_label: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_expander_new_with_mnemonic(_label: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_expander_set_expanded(expander: PGtkExpander; expanded: Tgboolean); cdecl; external gtklib;
function gtk_expander_get_expanded(expander: PGtkExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_expander_set_label(expander: PGtkExpander; _label: PChar); cdecl; external gtklib;
function gtk_expander_get_label(expander: PGtkExpander): PChar; cdecl; external gtklib;
procedure gtk_expander_set_use_underline(expander: PGtkExpander; use_underline: Tgboolean); cdecl; external gtklib;
function gtk_expander_get_use_underline(expander: PGtkExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_expander_set_use_markup(expander: PGtkExpander; use_markup: Tgboolean); cdecl; external gtklib;
function gtk_expander_get_use_markup(expander: PGtkExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_expander_set_label_widget(expander: PGtkExpander; label_widget: PGtkWidget); cdecl; external gtklib;
function gtk_expander_get_label_widget(expander: PGtkExpander): PGtkWidget; cdecl; external gtklib;
procedure gtk_expander_set_resize_toplevel(expander: PGtkExpander; resize_toplevel: Tgboolean); cdecl; external gtklib;
function gtk_expander_get_resize_toplevel(expander: PGtkExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_expander_set_child(expander: PGtkExpander; child: PGtkWidget); cdecl; external gtklib;
function gtk_expander_get_child(expander: PGtkExpander): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 25-7-24 19:41:30 ===

function GTK_TYPE_EXPANDER: TGType;
function GTK_EXPANDER(obj: Pointer): PGtkExpander;
function GTK_IS_EXPANDER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_EXPANDER: TGType;
begin
  GTK_TYPE_EXPANDER := gtk_expander_get_type;
end;

function GTK_EXPANDER(obj: Pointer): PGtkExpander;
begin
  Result := PGtkExpander(g_type_check_instance_cast(obj, GTK_TYPE_EXPANDER));
end;

function GTK_IS_EXPANDER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EXPANDER);
end;



{$ENDIF read_implementation}
