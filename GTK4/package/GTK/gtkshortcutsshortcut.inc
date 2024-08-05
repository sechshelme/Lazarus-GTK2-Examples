/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkShortcutType = ^TGtkShortcutType;
  TGtkShortcutType = longint;

const
  GTK_SHORTCUT_ACCELERATOR = 0;
  GTK_SHORTCUT_GESTURE_PINCH = 1;
  GTK_SHORTCUT_GESTURE_STRETCH = 2;
  GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE = 3;
  GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE = 4;
  GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT = 5;
  GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT = 6;
  GTK_SHORTCUT_GESTURE = 7;
  GTK_SHORTCUT_GESTURE_SWIPE_LEFT = 8;
  GTK_SHORTCUT_GESTURE_SWIPE_RIGHT = 9;

type
  TGtkShortcutsShortcut = record // _GtkShortcutsShortcut
  end;
  PGtkShortcutsShortcut = ^TGtkShortcutsShortcut;

  TGtkShortcutsShortcutClass = record // _GtkShortcutsShortcutClass
  end;
  PGtkShortcutsShortcutClass = ^TGtkShortcutsShortcutClass;


function gtk_shortcuts_shortcut_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 16-7-24 19:14:33 ===

function GTK_TYPE_SHORTCUTS_SHORTCUT: TGType;
function GTK_SHORTCUTS_SHORTCUT(obj: Pointer): PGtkShortcutsShortcut;
function GTK_IS_SHORTCUTS_SHORTCUT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SHORTCUTS_SHORTCUT: TGType;
begin
  GTK_TYPE_SHORTCUTS_SHORTCUT := gtk_shortcuts_shortcut_get_type;
end;

function GTK_SHORTCUTS_SHORTCUT(obj: Pointer): PGtkShortcutsShortcut;
begin
  Result := PGtkShortcutsShortcut(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUTS_SHORTCUT));
end;

function GTK_IS_SHORTCUTS_SHORTCUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUTS_SHORTCUT);
end;



{$ENDIF read_implementation}
