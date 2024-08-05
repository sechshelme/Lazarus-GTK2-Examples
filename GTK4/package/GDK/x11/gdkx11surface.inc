/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkX11Surface = ^TGdkX11Surface;
  TGdkX11Surface = TGdkSurface;

  TGdkX11SurfaceClass = record
  end;
  PGdkX11SurfaceClass = ^TGdkX11SurfaceClass;

function gdk_x11_surface_get_type: TGType; cdecl; external gtklib;
function gdk_x11_surface_get_xid(surface: PGdkSurface): TWindow; cdecl; external gtklib;
procedure gdk_x11_surface_set_user_time(surface: PGdkSurface; timestamp: Tguint32); cdecl; external gtklib;
procedure gdk_x11_surface_set_utf8_property(surface: PGdkSurface; Name: PChar; Value: PChar); cdecl; external gtklib;
procedure gdk_x11_surface_set_theme_variant(surface: PGdkSurface; variant: PChar); cdecl; external gtklib;
procedure gdk_x11_surface_move_to_current_desktop(surface: PGdkSurface); cdecl; external gtklib;
function gdk_x11_surface_get_desktop(surface: PGdkSurface): Tguint32; cdecl; external gtklib;
procedure gdk_x11_surface_move_to_desktop(surface: PGdkSurface; desktop: Tguint32); cdecl; external gtklib;
procedure gdk_x11_surface_set_frame_sync_enabled(surface: PGdkSurface; frame_sync_enabled: Tgboolean); cdecl; external gtklib;
function gdk_x11_get_server_time(surface: PGdkSurface): Tguint32; cdecl; external gtklib;
function gdk_x11_surface_lookup_for_display(display: PGdkDisplay; window: TWindow): PGdkSurface; cdecl; external gtklib;
procedure gdk_x11_surface_set_skip_taskbar_hint(surface: PGdkSurface; skips_taskbar: Tgboolean); cdecl; external gtklib;
procedure gdk_x11_surface_set_skip_pager_hint(surface: PGdkSurface; skips_pager: Tgboolean); cdecl; external gtklib;
procedure gdk_x11_surface_set_urgency_hint(surface: PGdkSurface; urgent: Tgboolean); cdecl; external gtklib;
procedure gdk_x11_surface_set_group(surface: PGdkSurface; leader: PGdkSurface); cdecl; external gtklib;
function gdk_x11_surface_get_group(surface: PGdkSurface): PGdkSurface; cdecl; external gtklib;

function GDK_SURFACE_XDISPLAY(win: PGdkSurface): PDisplay;
function GDK_SURFACE_XID(win: PGdkSurface): TWindow;

// === Konventiert am: 3-8-24 17:50:59 ===

function GDK_TYPE_X11_SURFACE: TGType;
function GDK_X11_SURFACE(obj: Pointer): PGdkX11Surface;
function GDK_X11_SURFACE_CLASS(klass: Pointer): PGdkX11SurfaceClass;
function GDK_IS_X11_SURFACE(obj: Pointer): Tgboolean;
function GDK_IS_X11_SURFACE_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_SURFACE_GET_CLASS(obj: Pointer): PGdkX11SurfaceClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_X11_SURFACE: TGType;
begin
  GDK_TYPE_X11_SURFACE := gdk_x11_surface_get_type;
end;

function GDK_X11_SURFACE(obj: Pointer): PGdkX11Surface;
begin
  Result := PGdkX11Surface(g_type_check_instance_cast(obj, GDK_TYPE_X11_SURFACE));
end;

function GDK_X11_SURFACE_CLASS(klass: Pointer): PGdkX11SurfaceClass;
begin
  Result := PGdkX11SurfaceClass(g_type_check_class_cast(klass, GDK_TYPE_X11_SURFACE));
end;

function GDK_IS_X11_SURFACE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_SURFACE);
end;

function GDK_IS_X11_SURFACE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_SURFACE);
end;

function GDK_X11_SURFACE_GET_CLASS(obj: Pointer): PGdkX11SurfaceClass;
begin
  Result := PGdkX11SurfaceClass(PGTypeInstance(obj)^.g_class);
end;

// ====

function GDK_SURFACE_XDISPLAY(win: PGdkSurface): PDisplay;
begin
  GDK_SURFACE_XDISPLAY := GDK_DISPLAY_XDISPLAY(gdk_surface_get_display(win));
end;

function GDK_SURFACE_XID(win: PGdkSurface): TWindow;
begin
  GDK_SURFACE_XID := gdk_x11_surface_get_xid(win);
end;


{$ENDIF read_implementation}
