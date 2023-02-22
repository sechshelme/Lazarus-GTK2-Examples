
  Type
  Pchar  = ^char;
  PGdkCursor  = ^GdkCursor;
  PGdkTexture  = ^GdkTexture;
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
{$ifndef __GDK_CURSOR_H__}
{$define __GDK_CURSOR_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_CURSOR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CURSOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CURSOR(object : longint) : longint;  

  { Cursors
    }
  { Zeile entfernt  }
  function gdk_cursor_get_type:GType;

  { Zeile entfernt  }
  function gdk_cursor_new_from_texture(texture:PGdkTexture; hotspot_x:longint; hotspot_y:longint; fallback:PGdkCursor):^GdkCursor;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_cursor_new_from_name(name:Pchar; fallback:PGdkCursor):^GdkCursor;

  { Zeile entfernt  }
  function gdk_cursor_get_fallback(cursor:PGdkCursor):^GdkCursor;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_cursor_get_name(cursor:PGdkCursor):^char;

  { Zeile entfernt  }
  function gdk_cursor_get_texture(cursor:PGdkCursor):^GdkTexture;

  { Zeile entfernt  }
  function gdk_cursor_get_hotspot_x(cursor:PGdkCursor):longint;

  { Zeile entfernt  }
  function gdk_cursor_get_hotspot_y(cursor:PGdkCursor):longint;

  { Zeile entfernt  }
{$endif}
  { __GDK_CURSOR_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_CURSOR : longint; { return type might be wrong }
    begin
      GDK_TYPE_CURSOR:=gdk_cursor_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CURSOR(object : longint) : longint;
  begin
    GDK_CURSOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_CURSOR,GdkCursor);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CURSOR(object : longint) : longint;
  begin
    GDK_IS_CURSOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_CURSOR);
  end;

  function gdk_cursor_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_new_from_texture(texture:PGdkTexture; hotspot_x:longint; hotspot_y:longint; fallback:PGdkCursor):PGdkCursor;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_new_from_name(name:Pchar; fallback:PGdkCursor):PGdkCursor;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_get_fallback(cursor:PGdkCursor):PGdkCursor;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_get_name(cursor:PGdkCursor):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_get_texture(cursor:PGdkCursor):PGdkTexture;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_get_hotspot_x(cursor:PGdkCursor):longint;
  begin
    { You must implement this function }
  end;
  function gdk_cursor_get_hotspot_y(cursor:PGdkCursor):longint;
  begin
    { You must implement this function }
  end;

