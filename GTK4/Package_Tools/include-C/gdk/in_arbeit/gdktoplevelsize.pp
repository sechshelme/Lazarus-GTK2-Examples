
unit gdktoplevelsize;
interface

{
  Automatically converted by H2Pas 1.0.0 from gdktoplevelsize.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gdktoplevelsize.h
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
PGdkToplevelSize  = ^GdkToplevelSize;
Plongint  = ^longint;
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
type

{ was #define dname def_expr }
function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }

function gdk_toplevel_size_get_type:TGType;cdecl;external;
procedure gdk_toplevel_size_get_bounds(size:PGdkToplevelSize; bounds_width:Plongint; bounds_height:Plongint);cdecl;external;
procedure gdk_toplevel_size_set_size(size:PGdkToplevelSize; width:longint; height:longint);cdecl;external;
procedure gdk_toplevel_size_set_min_size(size:PGdkToplevelSize; min_width:longint; min_height:longint);cdecl;external;
procedure gdk_toplevel_size_set_shadow_width(size:PGdkToplevelSize; left:longint; right:longint; top:longint; bottom:longint);cdecl;external;

implementation

{ was #define dname def_expr }
function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_SIZE:=gdk_toplevel_size_get_type;
  end;


end.
