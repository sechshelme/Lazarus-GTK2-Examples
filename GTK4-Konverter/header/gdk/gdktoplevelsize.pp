
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
{$ifndef __GDK_TOPLEVEL_SIZE_H__}
{$define __GDK_TOPLEVEL_SIZE_H__}  
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}

  type
    _GdkToplevelSize = GdkToplevelSize;

  { was #define dname def_expr }
  function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }

  function gdk_toplevel_size_get_type:GType;

  procedure gdk_toplevel_size_get_bounds(size:PGdkToplevelSize; bounds_width:Plongint; bounds_height:Plongint);

  procedure gdk_toplevel_size_set_size(size:PGdkToplevelSize; width:longint; height:longint);

  procedure gdk_toplevel_size_set_min_size(size:PGdkToplevelSize; min_width:longint; min_height:longint);

  procedure gdk_toplevel_size_set_shadow_width(size:PGdkToplevelSize; left:longint; right:longint; top:longint; bottom:longint);

{$endif}
  { __GDK_TOPLEVEL_SIZE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }
    begin
      GDK_TYPE_TOPLEVEL_SIZE:=gdk_toplevel_size_get_type;
    end;

  function gdk_toplevel_size_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_size_get_bounds(size:PGdkToplevelSize; bounds_width:Plongint; bounds_height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_size_set_size(size:PGdkToplevelSize; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_size_set_min_size(size:PGdkToplevelSize; min_width:longint; min_height:longint);
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_size_set_shadow_width(size:PGdkToplevelSize; left:longint; right:longint; top:longint; bottom:longint);
  begin
    { You must implement this function }
  end;

