
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
{$ifndef __GDK_CAIRO_H__}
{$define __GDK_CAIRO_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdkrgba.h>}
{$include <gdk/gdkpixbuf.h>}
{$include <pango/pangocairo.h>}
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)

  procedure gdk_cairo_set_source_rgba(cr:Pcairo_t; rgba:PGdkRGBA);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_cairo_set_source_pixbuf(cr:Pcairo_t; pixbuf:PGdkPixbuf; pixbuf_x:double; pixbuf_y:double);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_cairo_rectangle(cr:Pcairo_t; rectangle:PGdkRectangle);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_cairo_region(cr:Pcairo_t; region:Pcairo_region_t);

  { Zeile entfernt  }
  function gdk_cairo_region_create_from_surface(surface:Pcairo_surface_t):^cairo_region_t;

  { Zeile entfernt  }
  procedure gdk_cairo_draw_from_gl(cr:Pcairo_t; surface:PGdkSurface; source:longint; source_type:longint; buffer_scale:longint; 
              x:longint; y:longint; width:longint; height:longint);

  { Zeile entfernt  }
{$endif}
  { __GDK_CAIRO_H__  }
  procedure gdk_cairo_set_source_rgba(cr:Pcairo_t; rgba:PGdkRGBA);
  begin
    { You must implement this function }
  end;
  procedure gdk_cairo_set_source_pixbuf(cr:Pcairo_t; pixbuf:PGdkPixbuf; pixbuf_x:double; pixbuf_y:double);
  begin
    { You must implement this function }
  end;
  procedure gdk_cairo_rectangle(cr:Pcairo_t; rectangle:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gdk_cairo_region(cr:Pcairo_t; region:Pcairo_region_t);
  begin
    { You must implement this function }
  end;
  function gdk_cairo_region_create_from_surface(surface:Pcairo_surface_t):Pcairo_region_t;
  begin
    { You must implement this function }
  end;
  procedure gdk_cairo_draw_from_gl(cr:Pcairo_t; surface:PGdkSurface; source:longint; source_type:longint; buffer_scale:longint; 
              x:longint; y:longint; width:longint; height:longint);
  begin
    { You must implement this function }
  end;

