/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkSurfaceEdge = ^TGdkSurfaceEdge;
  TGdkSurfaceEdge = longint;

const
  GDK_SURFACE_EDGE_NORTH_WEST = 0;
  GDK_SURFACE_EDGE_NORTH = 1;
  GDK_SURFACE_EDGE_NORTH_EAST = 2;
  GDK_SURFACE_EDGE_WEST = 3;
  GDK_SURFACE_EDGE_EAST = 4;
  GDK_SURFACE_EDGE_SOUTH_WEST = 5;
  GDK_SURFACE_EDGE_SOUTH = 6;
  GDK_SURFACE_EDGE_SOUTH_EAST = 7;

type
  PGdkFullscreenMode = ^TGdkFullscreenMode;
  TGdkFullscreenMode = longint;

const
  GDK_FULLSCREEN_ON_CURRENT_MONITOR = 0;
  GDK_FULLSCREEN_ON_ALL_MONITORS = 1;

type
  PGdkToplevelState = ^TGdkToplevelState;
  TGdkToplevelState = longint;

const
  GDK_TOPLEVEL_STATE_MINIMIZED = 1 shl 0;
  GDK_TOPLEVEL_STATE_MAXIMIZED = 1 shl 1;
  GDK_TOPLEVEL_STATE_STICKY = 1 shl 2;
  GDK_TOPLEVEL_STATE_FULLSCREEN = 1 shl 3;
  GDK_TOPLEVEL_STATE_ABOVE = 1 shl 4;
  GDK_TOPLEVEL_STATE_BELOW = 1 shl 5;
  GDK_TOPLEVEL_STATE_FOCUSED = 1 shl 6;
  GDK_TOPLEVEL_STATE_TILED = 1 shl 7;
  GDK_TOPLEVEL_STATE_TOP_TILED = 1 shl 8;
  GDK_TOPLEVEL_STATE_TOP_RESIZABLE = 1 shl 9;
  GDK_TOPLEVEL_STATE_RIGHT_TILED = 1 shl 10;
  GDK_TOPLEVEL_STATE_RIGHT_RESIZABLE = 1 shl 11;
  GDK_TOPLEVEL_STATE_BOTTOM_TILED = 1 shl 12;
  GDK_TOPLEVEL_STATE_BOTTOM_RESIZABLE = 1 shl 13;
  GDK_TOPLEVEL_STATE_LEFT_TILED = 1 shl 14;
  GDK_TOPLEVEL_STATE_LEFT_RESIZABLE = 1 shl 15;
  GDK_TOPLEVEL_STATE_SUSPENDED = 1 shl 16;

type
  PGdkTitlebarGesture = ^TGdkTitlebarGesture;
  TGdkTitlebarGesture = longint;

const
  GDK_TITLEBAR_GESTURE_DOUBLE_CLICK = 1;
  GDK_TITLEBAR_GESTURE_RIGHT_CLICK = 2;
  GDK_TITLEBAR_GESTURE_MIDDLE_CLICK = 3;


  {G_DECLARE_INTERFACE (GdkToplevel, gdk_toplevel, GDK, TOPLEVEL, GObject) }
type
  TGdkToplevel = record
  end;
  PGdkToplevel = ^TGdkToplevel;

  TGdkToplevelInterface = record
  end;
  PGdkToplevelInterface = ^TGdkToplevelInterface;

function gdk_toplevel_get_type: TGType; cdecl; external gtklib;
procedure gdk_toplevel_present(toplevel: PGdkToplevel; layout: PGdkToplevelLayout); cdecl; external gtklib;
function gdk_toplevel_minimize(toplevel: PGdkToplevel): Tgboolean; cdecl; external gtklib;
function gdk_toplevel_lower(toplevel: PGdkToplevel): Tgboolean; cdecl; external gtklib;
procedure gdk_toplevel_focus(toplevel: PGdkToplevel; timestamp: Tguint32); cdecl; external gtklib;
function gdk_toplevel_get_state(toplevel: PGdkToplevel): TGdkToplevelState; cdecl; external gtklib;
procedure gdk_toplevel_set_title(toplevel: PGdkToplevel; title: PChar); cdecl; external gtklib;
procedure gdk_toplevel_set_startup_id(toplevel: PGdkToplevel; startup_id: PChar); cdecl; external gtklib;
procedure gdk_toplevel_set_transient_for(toplevel: PGdkToplevel; parent: PGdkSurface); cdecl; external gtklib;
procedure gdk_toplevel_set_modal(toplevel: PGdkToplevel; modal: Tgboolean); cdecl; external gtklib;
procedure gdk_toplevel_set_icon_list(toplevel: PGdkToplevel; surfaces: PGList); cdecl; external gtklib;
function gdk_toplevel_show_window_menu(toplevel: PGdkToplevel; event: PGdkEvent): Tgboolean; cdecl; external gtklib;
procedure gdk_toplevel_set_decorated(toplevel: PGdkToplevel; decorated: Tgboolean); cdecl; external gtklib;
procedure gdk_toplevel_set_deletable(toplevel: PGdkToplevel; deletable: Tgboolean); cdecl; external gtklib;
function gdk_toplevel_supports_edge_constraints(toplevel: PGdkToplevel): Tgboolean; cdecl; external gtklib;
procedure gdk_toplevel_inhibit_system_shortcuts(toplevel: PGdkToplevel; event: PGdkEvent); cdecl; external gtklib;
procedure gdk_toplevel_restore_system_shortcuts(toplevel: PGdkToplevel); cdecl; external gtklib;
procedure gdk_toplevel_begin_resize(toplevel: PGdkToplevel; edge: TGdkSurfaceEdge; device: PGdkDevice; button: longint; x: Tdouble;
  y: Tdouble; timestamp: Tguint32); cdecl; external gtklib;
procedure gdk_toplevel_begin_move(toplevel: PGdkToplevel; device: PGdkDevice; button: longint; x: Tdouble; y: Tdouble;
  timestamp: Tguint32); cdecl; external gtklib;
function gdk_toplevel_titlebar_gesture(toplevel: PGdkToplevel; gesture: TGdkTitlebarGesture): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 19:33:34 ===

function GDK_TYPE_TOPLEVEL: TGType;
function GDK_TOPLEVEL(obj: Pointer): PGdkToplevel;
function GDK_IS_TOPLEVEL(obj: Pointer): Tgboolean;
function GDK_TOPLEVEL_GET_IFACE(obj: Pointer): PGdkToplevelInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_TOPLEVEL: TGType;
begin
  Result := gdk_toplevel_get_type;
end;

function GDK_TOPLEVEL(obj: Pointer): PGdkToplevel;
begin
  Result := PGdkToplevel(g_type_check_instance_cast(obj, GDK_TYPE_TOPLEVEL));
end;

function GDK_IS_TOPLEVEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_TOPLEVEL);
end;

function GDK_TOPLEVEL_GET_IFACE(obj: Pointer): PGdkToplevelInterface;
begin
  Result := g_type_interface_peek(obj, GDK_TYPE_TOPLEVEL);
end;




{$ENDIF read_implementation}
