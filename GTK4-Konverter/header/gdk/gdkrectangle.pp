
  Type
  PGdkRectangle  = ^GdkRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GDK_RECTANGLE_H__}
{$define __GDK_RECTANGLE_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }
  { Rectangle utilities
    }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)

  function gdk_rectangle_intersect(src1:PGdkRectangle; src2:PGdkRectangle; dest:PGdkRectangle):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gdk_rectangle_union(src1:PGdkRectangle; src2:PGdkRectangle; dest:PGdkRectangle);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_rectangle_equal(rect1:PGdkRectangle; rect2:PGdkRectangle):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_rectangle_contains_point(rect:PGdkRectangle; x:longint; y:longint):gboolean;

  { Zeile entfernt  }
  function gdk_rectangle_get_type:GType;

  { was #define dname def_expr }
  function GDK_TYPE_RECTANGLE : longint; { return type might be wrong }

  { Zeile entfernt  }
{$endif}
  { __GDK__RECTANGLE_H__  }
  function gdk_rectangle_intersect(src1:PGdkRectangle; src2:PGdkRectangle; dest:PGdkRectangle):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_rectangle_union(src1:PGdkRectangle; src2:PGdkRectangle; dest:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  function gdk_rectangle_equal(rect1:PGdkRectangle; rect2:PGdkRectangle):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_rectangle_contains_point(rect:PGdkRectangle; x:longint; y:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_rectangle_get_type:GType;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GDK_TYPE_RECTANGLE : longint; { return type might be wrong }
    begin
      GDK_TYPE_RECTANGLE:=gdk_rectangle_get_type;
    end;


