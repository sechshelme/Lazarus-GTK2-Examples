
  Type
  Pchar  = ^char;
  PGdkRGBA  = ^GdkRGBA;
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
{$ifndef __GDK_RGBA_H__}
{$define __GDK_RGBA_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }

  type
    _GdkRGBA = record
        red : single;
        green : single;
        blue : single;
        alpha : single;
      end;


  { was #define dname def_expr }
  function GDK_TYPE_RGBA : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gdk_rgba_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_rgba_copy(rgba:PGdkRGBA):^GdkRGBA;

  { Zeile entfernt  }
  procedure gdk_rgba_free(rgba:PGdkRGBA);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_rgba_is_clear(rgba:PGdkRGBA):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_rgba_is_opaque(rgba:PGdkRGBA):gboolean;

  { Zeile entfernt  }
  function gdk_rgba_hash(p:gconstpointer):guint;

  { Zeile entfernt  }
  function gdk_rgba_equal(p1:gconstpointer; p2:gconstpointer):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_rgba_parse(rgba:PGdkRGBA; spec:Pchar):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
char *   gdk_rgba_to_string (const GdkRGBA *rgba) G_GNUC_MALLOC;
 in declarator_list *)

    var
 : char;
  { Zeile entfernt  }
{$endif}
  { __GDK_RGBA_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_RGBA : longint; { return type might be wrong }
    begin
      GDK_TYPE_RGBA:=gdk_rgba_get_type;
    end;

  function gdk_rgba_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_rgba_copy(rgba:PGdkRGBA):PGdkRGBA;
  begin
    { You must implement this function }
  end;
  procedure gdk_rgba_free(rgba:PGdkRGBA);
  begin
    { You must implement this function }
  end;
  function gdk_rgba_is_clear(rgba:PGdkRGBA):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_rgba_is_opaque(rgba:PGdkRGBA):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_rgba_hash(p:gconstpointer):guint;
  begin
    { You must implement this function }
  end;
  function gdk_rgba_equal(p1:gconstpointer; p2:gconstpointer):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_rgba_parse(rgba:PGdkRGBA; spec:Pchar):gboolean;
  begin
    { You must implement this function }
  end;

