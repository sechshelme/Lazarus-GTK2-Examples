/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkWaylandSurface = ^TGdkWaylandSurface;
  TGdkWaylandSurface = TGdkSurface;

function gdk_wayland_surface_get_type: TGType; cdecl; external gtklib;
function gdk_wayland_surface_get_wl_surface(surface: PGdkSurface): Pwl_surface; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:47 ===

function GDK_TYPE_WAYLAND_SURFACE: TGType;
function GDK_WAYLAND_SURFACE(obj: Pointer): PGdkWaylandSurface;
function GDK_IS_WAYLAND_SURFACE(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

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



{$ENDIF read_implementation}
