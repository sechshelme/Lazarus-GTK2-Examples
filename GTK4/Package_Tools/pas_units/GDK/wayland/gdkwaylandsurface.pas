unit gdkwaylandsurface;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkWaylandSurface = ^TGdkWaylandSurface;
  TGdkWaylandSurface = TGdkSurface;

function gdk_wayland_surface_get_type: TGType; cdecl; external gtklib;
function gdk_wayland_surface_get_wl_surface(surface: PGdkSurface): Pwl_surface; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:47 ===

function GDK_TYPE_WAYLAND_SURFACE: TGType;
function GDK_WAYLAND_SURFACE(obj: Pointer): PGdkWaylandSurface;
function GDK_IS_WAYLAND_SURFACE(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_WAYLAND_SURFACE: TGType;
begin
  GDK_TYPE_WAYLAND_SURFACE := gdk_wayland_surface_get_type;
end;

function GDK_WAYLAND_SURFACE(obj: Pointer): PGdkWaylandSurface;
begin
  Result := PGdkWaylandSurface(g_type_check_instance_cast(obj, GDK_TYPE_WAYLAND_SURFACE));
end;

function GDK_IS_WAYLAND_SURFACE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_WAYLAND_SURFACE);
end;



end.
