/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkShortcutController = record // _GtkShortcutController
  end;
  PGtkShortcutController = ^TGtkShortcutController;

  TGtkShortcutControllerClass = record // _GtkShortcutControllerClass
  end;
  PGtkShortcutControllerClass = ^TGtkShortcutControllerClass;

function gtk_shortcut_controller_get_type: TGType; cdecl; external gtklib;
function gtk_shortcut_controller_new: PGtkEventController; cdecl; external gtklib;
function gtk_shortcut_controller_new_for_model(model: PGListModel): PGtkEventController; cdecl; external gtklib;
procedure gtk_shortcut_controller_set_mnemonics_modifiers(self: PGtkShortcutController; modifiers: TGdkModifierType); cdecl; external gtklib;
function gtk_shortcut_controller_get_mnemonics_modifiers(self: PGtkShortcutController): TGdkModifierType; cdecl; external gtklib;
procedure gtk_shortcut_controller_set_scope(self: PGtkShortcutController; scope: TGtkShortcutScope); cdecl; external gtklib;
function gtk_shortcut_controller_get_scope(self: PGtkShortcutController): TGtkShortcutScope; cdecl; external gtklib;
procedure gtk_shortcut_controller_add_shortcut(self: PGtkShortcutController; shortcut: PGtkShortcut); cdecl; external gtklib;
procedure gtk_shortcut_controller_remove_shortcut(self: PGtkShortcutController; shortcut: PGtkShortcut); cdecl; external gtklib;

// === Konventiert am: 21-7-24 13:37:17 ===

function GTK_TYPE_SHORTCUT_CONTROLLER: TGType;
function GTK_SHORTCUT_CONTROLLER(obj: Pointer): PGtkShortcutController;
function GTK_SHORTCUT_CONTROLLER_CLASS(klass: Pointer): PGtkShortcutControllerClass;
function GTK_IS_SHORTCUT_CONTROLLER(obj: Pointer): Tgboolean;
function GTK_IS_SHORTCUT_CONTROLLER_CLASS(klass: Pointer): Tgboolean;
function GTK_SHORTCUT_CONTROLLER_GET_CLASS(obj: Pointer): PGtkShortcutControllerClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SHORTCUT_CONTROLLER: TGType;
begin
  GTK_TYPE_SHORTCUT_CONTROLLER := gtk_shortcut_controller_get_type;
end;

function GTK_SHORTCUT_CONTROLLER(obj: Pointer): PGtkShortcutController;
begin
  Result := PGtkShortcutController(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUT_CONTROLLER));
end;

function GTK_SHORTCUT_CONTROLLER_CLASS(klass: Pointer): PGtkShortcutControllerClass;
begin
  Result := PGtkShortcutControllerClass(g_type_check_class_cast(klass, GTK_TYPE_SHORTCUT_CONTROLLER));
end;

function GTK_IS_SHORTCUT_CONTROLLER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUT_CONTROLLER);
end;

function GTK_IS_SHORTCUT_CONTROLLER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_SHORTCUT_CONTROLLER);
end;

function GTK_SHORTCUT_CONTROLLER_GET_CLASS(obj: Pointer): PGtkShortcutControllerClass;
begin
  Result := PGtkShortcutControllerClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
