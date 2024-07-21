unit gtkshortcutmanager;

interface

uses
  glib2, common_GTK, gtkshortcutcontroller;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {G_DECLARE_INTERFACE (GtkShortcutManager, gtk_shortcut_manager, GTK, SHORTCUT_MANAGER, GtkWidget) }
type
  TGtkShortcutManager = record
  end;
  PGtkShortcutManager = ^TGtkShortcutManager;

  TGtkShortcutManagerInterface = record
    g_iface: TGTypeInterface;
    add_controller: procedure(self: PGtkShortcutManager; controller: PGtkShortcutController); cdecl;
    remove_controller: procedure(self: PGtkShortcutManager; controller: PGtkShortcutController); cdecl;
  end;
  PGtkShortcutManagerInterface = ^TGtkShortcutManagerInterface;

function gtk_shortcut_manager_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 21-7-24 13:26:37 ===

function GTK_TYPE_SHORTCUT_MANAGER: TGType;
function GTK_SHORTCUT_MANAGER(obj: Pointer): PGtkShortcutManager;
function GTK_IS_SHORTCUT_MANAGER(obj: Pointer): Tgboolean;
function GTK_SHORTCUT_MANAGER_GET_IFACE(obj: Pointer): PGtkShortcutManagerInterface;

implementation

function GTK_TYPE_SHORTCUT_MANAGER: TGType;
begin
  Result := gtk_shortcut_manager_get_type;
end;

function GTK_SHORTCUT_MANAGER(obj: Pointer): PGtkShortcutManager;
begin
  Result := PGtkShortcutManager(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUT_MANAGER));
end;

function GTK_IS_SHORTCUT_MANAGER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUT_MANAGER);
end;

function GTK_SHORTCUT_MANAGER_GET_IFACE(obj: Pointer): PGtkShortcutManagerInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_SHORTCUT_MANAGER);
end;




end.
