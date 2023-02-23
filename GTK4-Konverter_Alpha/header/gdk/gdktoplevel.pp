
unit gdktoplevel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktoplevel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktoplevel.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGdkDevice  = ^GdkDevice;
PGdkEvent  = ^GdkEvent;
PGdkFullscreenMode  = ^GdkFullscreenMode;
PGdkSurface  = ^GdkSurface;
PGdkSurfaceEdge  = ^GdkSurfaceEdge;
PGdkTitlebarGesture  = ^GdkTitlebarGesture;
PGdkToplevel  = ^GdkToplevel;
PGdkToplevelLayout  = ^GdkToplevelLayout;
PGdkToplevelState  = ^GdkToplevelState;
PGList  = ^GList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_TOPLEVEL_H__}
{$define __GDK_TOPLEVEL_H__}
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkseat.h>}
{$include <gdk/gdksurface.h>}
{$include <gdk/gdktoplevellayout.h>}


type
  PGdkSurfaceEdge = ^TGdkSurfaceEdge;
  TGdkSurfaceEdge = (GDK_SURFACE_EDGE_NORTH_WEST,GDK_SURFACE_EDGE_NORTH,
    GDK_SURFACE_EDGE_NORTH_EAST,GDK_SURFACE_EDGE_WEST,
    GDK_SURFACE_EDGE_EAST,GDK_SURFACE_EDGE_SOUTH_WEST,
    GDK_SURFACE_EDGE_SOUTH,GDK_SURFACE_EDGE_SOUTH_EAST
    );


  PGdkFullscreenMode = ^TGdkFullscreenMode;
  TGdkFullscreenMode = (GDK_FULLSCREEN_ON_CURRENT_MONITOR,GDK_FULLSCREEN_ON_ALL_MONITORS
    );


  PGdkToplevelState = ^TGdkToplevelState;
  TGdkToplevelState = (GDK_TOPLEVEL_STATE_MINIMIZED := 1 shl 0,GDK_TOPLEVEL_STATE_MAXIMIZED := 1 shl 1,
    GDK_TOPLEVEL_STATE_STICKY := 1 shl 2,GDK_TOPLEVEL_STATE_FULLSCREEN := 1 shl 3,
    GDK_TOPLEVEL_STATE_ABOVE := 1 shl 4,GDK_TOPLEVEL_STATE_BELOW := 1 shl 5,
    GDK_TOPLEVEL_STATE_FOCUSED := 1 shl 6,GDK_TOPLEVEL_STATE_TILED := 1 shl 7,
    GDK_TOPLEVEL_STATE_TOP_TILED := 1 shl 8,GDK_TOPLEVEL_STATE_TOP_RESIZABLE := 1 shl 9,
    GDK_TOPLEVEL_STATE_RIGHT_TILED := 1 shl 10,GDK_TOPLEVEL_STATE_RIGHT_RESIZABLE := 1 shl 11,
    GDK_TOPLEVEL_STATE_BOTTOM_TILED := 1 shl 12,
    GDK_TOPLEVEL_STATE_BOTTOM_RESIZABLE := 1 shl 13,
    GDK_TOPLEVEL_STATE_LEFT_TILED := 1 shl 14,GDK_TOPLEVEL_STATE_LEFT_RESIZABLE := 1 shl 15
    );


  PGdkTitlebarGesture = ^TGdkTitlebarGesture;
  TGdkTitlebarGesture = (GDK_TITLEBAR_GESTURE_DOUBLE_CLICK := 1,
    GDK_TITLEBAR_GESTURE_RIGHT_CLICK := 2,
    GDK_TITLEBAR_GESTURE_MIDDLE_CLICK := 3
    );

function GDK_TYPE_TOPLEVEL : longint; { return type might be wrong }




procedure gdk_toplevel_present(toplevel:PGdkToplevel; layout:PGdkToplevelLayout);cdecl;external;

function gdk_toplevel_minimize(toplevel:PGdkToplevel):Tgboolean;cdecl;external;

function gdk_toplevel_lower(toplevel:PGdkToplevel):Tgboolean;cdecl;external;

procedure gdk_toplevel_focus(toplevel:PGdkToplevel; timestamp:Tguint32);cdecl;external;

function gdk_toplevel_get_state(toplevel:PGdkToplevel):TGdkToplevelState;cdecl;external;

procedure gdk_toplevel_set_title(toplevel:PGdkToplevel; title:Pchar);cdecl;external;

procedure gdk_toplevel_set_startup_id(toplevel:PGdkToplevel; startup_id:Pchar);cdecl;external;

procedure gdk_toplevel_set_transient_for(toplevel:PGdkToplevel; parent:PGdkSurface);cdecl;external;

procedure gdk_toplevel_set_modal(toplevel:PGdkToplevel; modal:Tgboolean);cdecl;external;

procedure gdk_toplevel_set_icon_list(toplevel:PGdkToplevel; surfaces:PGList);cdecl;external;

function gdk_toplevel_show_window_menu(toplevel:PGdkToplevel; event:PGdkEvent):Tgboolean;cdecl;external;

procedure gdk_toplevel_set_decorated(toplevel:PGdkToplevel; decorated:Tgboolean);cdecl;external;

procedure gdk_toplevel_set_deletable(toplevel:PGdkToplevel; deletable:Tgboolean);cdecl;external;

function gdk_toplevel_supports_edge_constraints(toplevel:PGdkToplevel):Tgboolean;cdecl;external;

procedure gdk_toplevel_inhibit_system_shortcuts(toplevel:PGdkToplevel; event:PGdkEvent);cdecl;external;

procedure gdk_toplevel_restore_system_shortcuts(toplevel:PGdkToplevel);cdecl;external;

procedure gdk_toplevel_begin_resize(toplevel:PGdkToplevel; edge:TGdkSurfaceEdge; device:PGdkDevice; button:longint; x:Tdouble; 
            y:Tdouble; timestamp:Tguint32);cdecl;external;

procedure gdk_toplevel_begin_move(toplevel:PGdkToplevel; device:PGdkDevice; button:longint; x:Tdouble; y:Tdouble; 
            timestamp:Tguint32);cdecl;external;

function gdk_toplevel_titlebar_gesture(toplevel:PGdkToplevel; gesture:TGdkTitlebarGesture):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_TOPLEVEL : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL:=gdk_toplevel_get_type;
  end;


end.
