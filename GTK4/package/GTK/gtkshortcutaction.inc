/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  // Ausgelagert wegen gtkwidget
  //TGtkShortcutFunc = function(widget: PGtkWidget; args: PGVariant; user_data: Tgpointer): Tgboolean; cdecl;

  PGtkShortcutActionFlags = ^TGtkShortcutActionFlags;
  TGtkShortcutActionFlags = longint;

const
  GTK_SHORTCUT_ACTION_EXCLUSIVE = 1 shl 0;

  {GDK_DECLARE_INTERNAL_TYPE (GtkShortcutAction, gtk_shortcut_action, GTK, SHORTCUT_ACTION, GObject) }

type
  TGtkShortcutAction = record
  end;
  PGtkShortcutAction = ^TGtkShortcutAction;

  TGtkShortcutActionClass = record
  end;
  PGtkShortcutActionClass = ^TGtkShortcutActionClass;

function gtk_shortcut_action_get_type: TGType; cdecl; external gtklib;
function gtk_shortcut_action_to_string(self: PGtkShortcutAction): PChar; cdecl; external gtklib;
function gtk_shortcut_action_parse_string(_string: PChar): PGtkShortcutAction; cdecl; external gtklib;
procedure gtk_shortcut_action_print(self: PGtkShortcutAction; _string: PGString); cdecl; external gtklib;
function gtk_shortcut_action_activate(self: PGtkShortcutAction; flags: TGtkShortcutActionFlags; widget: PGtkWidget; args: PGVariant): Tgboolean; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkNothingAction, gtk_nothing_action, GTK, NOTHING_ACTION, GtkShortcutAction) }
type
  TGtkNothingAction = record
  end;
  PGtkNothingAction = ^TGtkNothingAction;

  TGtkNothingActionClass = record
  end;
  PGtkNothingActionClass = ^TGtkNothingActionClass;

function gtk_nothing_action_get_type: TGType; cdecl; external gtklib;
function gtk_nothing_action_get: PGtkShortcutAction; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkCallbackAction, gtk_callback_action, GTK, CALLBACK_ACTION, GtkShortcutAction) }
type
  TGtkCallbackAction = record
  end;
  PGtkCallbackAction = ^TGtkCallbackAction;

  TGtkCallbackActionClass = record
  end;
  PGtkCallbackActionClass = ^TGtkCallbackActionClass;

function gtk_callback_action_get_type: TGType; cdecl; external gtklib;

function gtk_callback_action_new(callback: TGtkShortcutFunc; Data: Tgpointer; Destroy: TGDestroyNotify): PGtkShortcutAction; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkMnemonicAction, gtk_mnemonic_action, GTK, MNEMONIC_ACTION, GtkShortcutAction) }
type
  TGtkMnemonicAction = record
  end;
  PGtkMnemonicAction = ^TGtkMnemonicAction;

  TGtkMnemonicActionClass = record
  end;
  PGtkMnemonicActionClass = ^TGtkMnemonicActionClass;

function gtk_mnemonic_action_get_type: TGType; cdecl; external gtklib;
function gtk_mnemonic_action_get: PGtkShortcutAction; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkActivateAction, gtk_activate_action, GTK, ACTIVATE_ACTION, GtkShortcutAction) }
type
  TGtkActivateAction = record
  end;
  PGtkActivateAction = ^TGtkActivateAction;

  TGtkActivateActionClass = record
  end;
  PGtkActivateActionClass = ^TGtkActivateActionClass;

function gtk_activate_action_get_type: TGType; cdecl; external gtklib;
function gtk_activate_action_get: PGtkShortcutAction; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkSignalAction, gtk_signal_action, GTK, SIGNAL_ACTION, GtkShortcutAction) }
type
  TGtkSignalAction = record
  end;
  PGtkSignalAction = ^TGtkSignalAction;

  TGtkSignalActionClass = record
  end;
  PGtkSignalActionClass = ^TGtkSignalActionClass;

function gtk_signal_action_get_type: TGType; cdecl; external gtklib;
function gtk_signal_action_new(signal_name: PChar): PGtkShortcutAction; cdecl; external gtklib;
function gtk_signal_action_get_signal_name(self: PGtkSignalAction): PChar; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkNamedAction, gtk_named_action, GTK, NAMED_ACTION, GtkShortcutAction) }
type
  TGtkNamedAction = record
  end;
  PGtkNamedAction = ^TGtkNamedAction;

  TGtkNamedActionClass = record
  end;
  PGtkNamedActionClass = ^TGtkNamedActionClass;

function gtk_named_action_get_type: TGType; cdecl; external gtklib;
function gtk_named_action_new(Name: PChar): PGtkShortcutAction; cdecl; external gtklib;
function gtk_named_action_get_action_name(self: PGtkNamedAction): PChar; cdecl; external gtklib;

// === Konventiert am: 17-7-24 15:34:03 ===

function GTK_TYPE_SHORTCUT_ACTION: TGType;
function GTK_SHORTCUT_ACTION(obj: Pointer): PGtkShortcutAction;
function GTK_IS_SHORTCUT_ACTION(obj: Pointer): Tgboolean;
function GTK_SHORTCUT_ACTION_CLASS(klass: Pointer): PGtkShortcutActionClass;
function GTK_IS_SHORTCUT_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_SHORTCUT_ACTION_GET_CLASS(obj: Pointer): PGtkShortcutActionClass;

function GTK_TYPE_NOTHING_ACTION: TGType;
function GTK_NOTHING_ACTION(obj: Pointer): PGtkNothingAction;
function GTK_IS_NOTHING_ACTION(obj: Pointer): Tgboolean;
function GTK_NOTHING_ACTION_CLASS(klass: Pointer): PGtkNothingActionClass;
function GTK_IS_NOTHING_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_NOTHING_ACTION_GET_CLASS(obj: Pointer): PGtkNothingActionClass;

function GTK_TYPE_CALLBACK_ACTION: TGType;
function GTK_CALLBACK_ACTION(obj: Pointer): PGtkCallbackAction;
function GTK_IS_CALLBACK_ACTION(obj: Pointer): Tgboolean;
function GTK_CALLBACK_ACTION_CLASS(klass: Pointer): PGtkCallbackActionClass;
function GTK_IS_CALLBACK_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_CALLBACK_ACTION_GET_CLASS(obj: Pointer): PGtkCallbackActionClass;

function GTK_TYPE_MNEMONIC_ACTION: TGType;
function GTK_MNEMONIC_ACTION(obj: Pointer): PGtkMnemonicAction;
function GTK_IS_MNEMONIC_ACTION(obj: Pointer): Tgboolean;
function GTK_MNEMONIC_ACTION_CLASS(klass: Pointer): PGtkMnemonicActionClass;
function GTK_IS_MNEMONIC_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_MNEMONIC_ACTION_GET_CLASS(obj: Pointer): PGtkMnemonicActionClass;

function GTK_TYPE_ACTIVATE_ACTION: TGType;
function GTK_ACTIVATE_ACTION(obj: Pointer): PGtkActivateAction;
function GTK_IS_ACTIVATE_ACTION(obj: Pointer): Tgboolean;
function GTK_ACTIVATE_ACTION_CLASS(klass: Pointer): PGtkActivateActionClass;
function GTK_IS_ACTIVATE_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_ACTIVATE_ACTION_GET_CLASS(obj: Pointer): PGtkActivateActionClass;

function GTK_TYPE_SIGNAL_ACTION: TGType;
function GTK_SIGNAL_ACTION(obj: Pointer): PGtkSignalAction;
function GTK_IS_SIGNAL_ACTION(obj: Pointer): Tgboolean;
function GTK_SIGNAL_ACTION_CLASS(klass: Pointer): PGtkSignalActionClass;
function GTK_IS_SIGNAL_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_SIGNAL_ACTION_GET_CLASS(obj: Pointer): PGtkSignalActionClass;

function GTK_TYPE_NAMED_ACTION: TGType;
function GTK_NAMED_ACTION(obj: Pointer): PGtkNamedAction;
function GTK_IS_NAMED_ACTION(obj: Pointer): Tgboolean;
function GTK_NAMED_ACTION_CLASS(klass: Pointer): PGtkNamedActionClass;
function GTK_IS_NAMED_ACTION_CLASS(klass: Pointer): Tgboolean;
function GTK_NAMED_ACTION_GET_CLASS(obj: Pointer): PGtkNamedActionClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

// SHORTCUT_ACTION
function GTK_TYPE_SHORTCUT_ACTION: TGType;
begin
  Result := gtk_shortcut_action_get_type;
end;

function GTK_SHORTCUT_ACTION(obj: Pointer): PGtkShortcutAction;
begin
  Result := PGtkShortcutAction(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUT_ACTION));
end;

function GTK_IS_SHORTCUT_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUT_ACTION);
end;

function GTK_SHORTCUT_ACTION_CLASS(klass: Pointer): PGtkShortcutActionClass;
begin
  Result := PGtkShortcutActionClass(g_type_check_class_cast(klass, GTK_TYPE_SHORTCUT_ACTION));
end;

function GTK_IS_SHORTCUT_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_SHORTCUT_ACTION);
end;

function GTK_SHORTCUT_ACTION_GET_CLASS(obj: Pointer): PGtkShortcutActionClass;
begin
  Result := PGtkShortcutActionClass(PGTypeInstance(obj)^.g_class);
end;

// NOTHING_ACTION
function GTK_TYPE_NOTHING_ACTION: TGType;
begin
  Result := gtk_nothing_action_get_type;
end;

function GTK_NOTHING_ACTION(obj: Pointer): PGtkNothingAction;
begin
  Result := PGtkNothingAction(g_type_check_instance_cast(obj, GTK_TYPE_NOTHING_ACTION));
end;

function GTK_IS_NOTHING_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_NOTHING_ACTION);
end;

function GTK_NOTHING_ACTION_CLASS(klass: Pointer): PGtkNothingActionClass;
begin
  Result := PGtkNothingActionClass(g_type_check_class_cast(klass, GTK_TYPE_NOTHING_ACTION));
end;

function GTK_IS_NOTHING_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_NOTHING_ACTION);
end;

function GTK_NOTHING_ACTION_GET_CLASS(obj: Pointer): PGtkNothingActionClass;
begin
  Result := PGtkNothingActionClass(PGTypeInstance(obj)^.g_class);
end;

// CALLBACK_ACTION
function GTK_TYPE_CALLBACK_ACTION: TGType;
begin
  Result := gtk_callback_action_get_type;
end;

function GTK_CALLBACK_ACTION(obj: Pointer): PGtkCallbackAction;
begin
  Result := PGtkCallbackAction(g_type_check_instance_cast(obj, GTK_TYPE_CALLBACK_ACTION));
end;

function GTK_IS_CALLBACK_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CALLBACK_ACTION);
end;

function GTK_CALLBACK_ACTION_CLASS(klass: Pointer): PGtkCallbackActionClass;
begin
  Result := PGtkCallbackActionClass(g_type_check_class_cast(klass, GTK_TYPE_CALLBACK_ACTION));
end;

function GTK_IS_CALLBACK_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_CALLBACK_ACTION);
end;

function GTK_CALLBACK_ACTION_GET_CLASS(obj: Pointer): PGtkCallbackActionClass;
begin
  Result := PGtkCallbackActionClass(PGTypeInstance(obj)^.g_class);
end;

// MNEMONIC_ACTION
function GTK_TYPE_MNEMONIC_ACTION: TGType;
begin
  Result := gtk_mnemonic_action_get_type;
end;

function GTK_MNEMONIC_ACTION(obj: Pointer): PGtkMnemonicAction;
begin
  Result := PGtkMnemonicAction(g_type_check_instance_cast(obj, GTK_TYPE_MNEMONIC_ACTION));
end;

function GTK_IS_MNEMONIC_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MNEMONIC_ACTION);
end;

function GTK_MNEMONIC_ACTION_CLASS(klass: Pointer): PGtkMnemonicActionClass;
begin
  Result := PGtkMnemonicActionClass(g_type_check_class_cast(klass, GTK_TYPE_MNEMONIC_ACTION));
end;

function GTK_IS_MNEMONIC_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_MNEMONIC_ACTION);
end;

function GTK_MNEMONIC_ACTION_GET_CLASS(obj: Pointer): PGtkMnemonicActionClass;
begin
  Result := PGtkMnemonicActionClass(PGTypeInstance(obj)^.g_class);
end;

// ACTIVATE_ACTION
function GTK_TYPE_ACTIVATE_ACTION: TGType;
begin
  Result := gtk_activate_action_get_type;
end;

function GTK_ACTIVATE_ACTION(obj: Pointer): PGtkActivateAction;
begin
  Result := PGtkActivateAction(g_type_check_instance_cast(obj, GTK_TYPE_ACTIVATE_ACTION));
end;

function GTK_IS_ACTIVATE_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ACTIVATE_ACTION);
end;

function GTK_ACTIVATE_ACTION_CLASS(klass: Pointer): PGtkActivateActionClass;
begin
  Result := PGtkActivateActionClass(g_type_check_class_cast(klass, GTK_TYPE_ACTIVATE_ACTION));
end;

function GTK_IS_ACTIVATE_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ACTIVATE_ACTION);
end;

function GTK_ACTIVATE_ACTION_GET_CLASS(obj: Pointer): PGtkActivateActionClass;
begin
  Result := PGtkActivateActionClass(PGTypeInstance(obj)^.g_class);
end;

// SIGNAL_ACTION
function GTK_TYPE_SIGNAL_ACTION: TGType;
begin
  Result := gtk_signal_action_get_type;
end;

function GTK_SIGNAL_ACTION(obj: Pointer): PGtkSignalAction;
begin
  Result := PGtkSignalAction(g_type_check_instance_cast(obj, GTK_TYPE_SIGNAL_ACTION));
end;

function GTK_IS_SIGNAL_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SIGNAL_ACTION);
end;

function GTK_SIGNAL_ACTION_CLASS(klass: Pointer): PGtkSignalActionClass;
begin
  Result := PGtkSignalActionClass(g_type_check_class_cast(klass, GTK_TYPE_SIGNAL_ACTION));
end;

function GTK_IS_SIGNAL_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_SIGNAL_ACTION);
end;

function GTK_SIGNAL_ACTION_GET_CLASS(obj: Pointer): PGtkSignalActionClass;
begin
  Result := PGtkSignalActionClass(PGTypeInstance(obj)^.g_class);
end;

// NAMED_ACTION
function GTK_TYPE_NAMED_ACTION: TGType;
begin
  Result := gtk_named_action_get_type;
end;

function GTK_NAMED_ACTION(obj: Pointer): PGtkNamedAction;
begin
  Result := PGtkNamedAction(g_type_check_instance_cast(obj, GTK_TYPE_NAMED_ACTION));
end;

function GTK_IS_NAMED_ACTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_NAMED_ACTION);
end;

function GTK_NAMED_ACTION_CLASS(klass: Pointer): PGtkNamedActionClass;
begin
  Result := PGtkNamedActionClass(g_type_check_class_cast(klass, GTK_TYPE_NAMED_ACTION));
end;

function GTK_IS_NAMED_ACTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_NAMED_ACTION);
end;

function GTK_NAMED_ACTION_GET_CLASS(obj: Pointer): PGtkNamedActionClass;
begin
  Result := PGtkNamedActionClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
