/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkShortcutsGroup = record // _GtkShortcutsGroup
  end;
  PGtkShortcutsGroup = ^TGtkShortcutsGroup;

  TGtkShortcutsGroupClass = record // _GtkShortcutsGroupClass
  end;
  PGtkShortcutsGroupClass = ^TGtkShortcutsGroupClass;

function gtk_shortcuts_group_get_type: TGType; cdecl; external gtklib;
procedure gtk_shortcuts_group_add_shortcut(self: PGtkShortcutsGroup; shortcut: PGtkShortcutsShortcut); cdecl; external gtklib;

// === Konventiert am: 21-7-24 13:26:57 ===

function GTK_TYPE_SHORTCUTS_GROUP: TGType;
function GTK_SHORTCUTS_GROUP(obj: Pointer): PGtkShortcutsGroup;
function GTK_IS_SHORTCUTS_GROUP(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SHORTCUTS_GROUP: TGType;
begin
  GTK_TYPE_SHORTCUTS_GROUP := gtk_shortcuts_group_get_type;
end;

function GTK_SHORTCUTS_GROUP(obj: Pointer): PGtkShortcutsGroup;
begin
  Result := PGtkShortcutsGroup(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUTS_GROUP));
end;

function GTK_IS_SHORTCUTS_GROUP(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUTS_GROUP);
end;



{$ENDIF read_implementation}
