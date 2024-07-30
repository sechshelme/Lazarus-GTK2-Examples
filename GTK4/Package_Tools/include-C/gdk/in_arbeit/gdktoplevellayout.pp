
unit gdktoplevellayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from gdktoplevellayout.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gdktoplevellayout.h
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


{ GDK - The GIMP Drawing Kit
 * Copyright (C) 2020 Red Hat
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
  }
(** unsupported pragma#pragma once*)
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkmonitor.h>}
type

{ was #define dname def_expr }
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

implementation

{ was #define dname def_expr }
function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_LAYOUT:=gdk_toplevel_layout_get_type;
  end;


end.
