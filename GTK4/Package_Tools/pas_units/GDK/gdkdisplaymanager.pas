unit gdkdisplaymanager;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkDisplayManager = record
  end;
  PGdkDisplayManager = ^TGdkDisplayManager;

function gdk_display_manager_get_type: TGType; cdecl; external gtklib;
function gdk_display_manager_get: PGdkDisplayManager; cdecl; external gtklib;
function gdk_display_manager_get_default_display(manager: PGdkDisplayManager): PGdkDisplay; cdecl; external gtklib;
procedure gdk_display_manager_set_default_display(manager: PGdkDisplayManager; display: PGdkDisplay); cdecl; external gtklib;
function gdk_display_manager_list_displays(manager: PGdkDisplayManager): PGSList; cdecl; external gtklib;
function gdk_display_manager_open_display(manager: PGdkDisplayManager; Name: PChar): PGdkDisplay; cdecl; external gtklib;
procedure gdk_set_allowed_backends(backends: PChar); cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:09:54 ===

function GDK_TYPE_DISPLAY_MANAGER: TGType;
function GDK_DISPLAY_MANAGER(obj: Pointer): PGdkDisplayManager;
function GDK_IS_DISPLAY_MANAGER(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_DISPLAY_MANAGER: TGType;
begin
  GDK_TYPE_DISPLAY_MANAGER := gdk_display_manager_get_type;
end;

function GDK_DISPLAY_MANAGER(obj: Pointer): PGdkDisplayManager;
begin
  Result := PGdkDisplayManager(g_type_check_instance_cast(obj, GDK_TYPE_DISPLAY_MANAGER));
end;

function GDK_IS_DISPLAY_MANAGER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DISPLAY_MANAGER);
end;



end.
