
unit gdkcairo;
interface

{
  Automatically converted by H2Pas 1.0.0 from gdkcairo.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gdkcairo.h
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
Pcairo_region_t  = ^cairo_region_t;
Pcairo_surface_t  = ^cairo_surface_t;
Pcairo_t  = ^cairo_t;
PGdkPixbuf  = ^GdkPixbuf;
PGdkRectangle  = ^GdkRectangle;
PGdkRGBA  = ^GdkRGBA;
PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GDK - The GIMP Drawing Kit
 * Copyright (C) 2005 Red Hat, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/deprecated/gdkpixbuf.h>}
{$include <pango/pangocairo.h>}
(* Const before type ignored *)

procedure gdk_cairo_set_source_rgba(cr:Pcairo_t; rgba:PGdkRGBA);cdecl;external;
(* Const before type ignored *)
procedure gdk_cairo_set_source_pixbuf(cr:Pcairo_t; pixbuf:PGdkPixbuf; pixbuf_x:Tdouble; pixbuf_y:Tdouble);cdecl;external;
(* Const before type ignored *)
procedure gdk_cairo_rectangle(cr:Pcairo_t; rectangle:PGdkRectangle);cdecl;external;
(* Const before type ignored *)
procedure gdk_cairo_region(cr:Pcairo_t; region:Pcairo_region_t);cdecl;external;
function gdk_cairo_region_create_from_surface(surface:Pcairo_surface_t):Pcairo_region_t;cdecl;external;
procedure gdk_cairo_draw_from_gl(cr:Pcairo_t; surface:PGdkSurface; source:longint; source_type:longint; buffer_scale:longint; 
            x:longint; y:longint; width:longint; height:longint);cdecl;external;

implementation


end.
