
unit gdktoplevellayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktoplevellayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktoplevellayout.h
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
Pgboolean  = ^gboolean;
PGdkMonitor  = ^GdkMonitor;
PGdkToplevelLayout  = ^GdkToplevelLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_TOPLEVEL_LAYOUT_H__}
{$define __GDK_TOPLEVEL_LAYOUT_H__}
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}

type

function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }


function gdk_toplevel_layout_get_type:TGType;cdecl;external;

function gdk_toplevel_layout_new:PGdkToplevelLayout;cdecl;external;

function gdk_toplevel_layout_ref(layout:PGdkToplevelLayout):PGdkToplevelLayout;cdecl;external;

procedure gdk_toplevel_layout_unref(layout:PGdkToplevelLayout);cdecl;external;

function gdk_toplevel_layout_copy(layout:PGdkToplevelLayout):PGdkToplevelLayout;cdecl;external;

function gdk_toplevel_layout_equal(layout:PGdkToplevelLayout; other:PGdkToplevelLayout):Tgboolean;cdecl;external;

procedure gdk_toplevel_layout_set_maximized(layout:PGdkToplevelLayout; maximized:Tgboolean);cdecl;external;

procedure gdk_toplevel_layout_set_fullscreen(layout:PGdkToplevelLayout; fullscreen:Tgboolean; monitor:PGdkMonitor);cdecl;external;

function gdk_toplevel_layout_get_maximized(layout:PGdkToplevelLayout; maximized:Pgboolean):Tgboolean;cdecl;external;

function gdk_toplevel_layout_get_fullscreen(layout:PGdkToplevelLayout; fullscreen:Pgboolean):Tgboolean;cdecl;external;

function gdk_toplevel_layout_get_fullscreen_monitor(layout:PGdkToplevelLayout):PGdkMonitor;cdecl;external;

procedure gdk_toplevel_layout_set_resizable(layout:PGdkToplevelLayout; resizable:Tgboolean);cdecl;external;

function gdk_toplevel_layout_get_resizable(layout:PGdkToplevelLayout):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_LAYOUT:=gdk_toplevel_layout_get_type;
  end;


end.
