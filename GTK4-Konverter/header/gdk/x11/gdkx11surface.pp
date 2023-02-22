
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGdkSurface  = ^GdkSurface;
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
{$ifndef __GDK_X11_SURFACE_H__}
{$define __GDK_X11_SURFACE_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}

  { was #define dname def_expr }
  function GDK_TYPE_X11_SURFACE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SURFACE(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SURFACE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SURFACE(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SURFACE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SURFACE_GET_CLASS(obj : longint) : longint;  

{$ifdef GTK_COMPILATION}

  type
    _GdkX11Surface = GdkX11Surface;
{$else}

  type
    GdkX11Surface = GdkSurface;
{$endif}

  type
    _GdkX11SurfaceClass = GdkX11SurfaceClass;

  function gdk_x11_surface_get_type:GType;

  function gdk_x11_surface_get_xid(surface:PGdkSurface):Window;

  procedure gdk_x11_surface_set_user_time(surface:PGdkSurface; timestamp:guint32);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gdk_x11_surface_set_utf8_property(surface:PGdkSurface; name:Pchar; value:Pchar);

(* Const before type ignored *)
  procedure gdk_x11_surface_set_theme_variant(surface:PGdkSurface; variant:Pchar);

  procedure gdk_x11_surface_move_to_current_desktop(surface:PGdkSurface);

  function gdk_x11_surface_get_desktop(surface:PGdkSurface):guint32;

  procedure gdk_x11_surface_move_to_desktop(surface:PGdkSurface; desktop:guint32);

  procedure gdk_x11_surface_set_frame_sync_enabled(surface:PGdkSurface; frame_sync_enabled:gboolean);

  {*
   * GDK_SURFACE_XDISPLAY:
   * @win: a `GdkSurface`
   *
   * Returns the display of a `GdkSurface`.
   *
   * Returns: an Xlib Display*.
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_XDISPLAY(win : longint) : longint;  

  {*
   * GDK_SURFACE_XID:
   * @win: a `GdkSurface`
   *
   * Returns the X window belonging to a `GdkSurface`.
   *
   * Returns: the Xlib Window of @win.
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_XID(win : longint) : longint;  

  function gdk_x11_get_server_time(surface:PGdkSurface):guint32;

  function gdk_x11_surface_lookup_for_display(display:PGdkDisplay; window:Window):^GdkSurface;

  procedure gdk_x11_surface_set_skip_taskbar_hint(surface:PGdkSurface; skips_taskbar:gboolean);

  procedure gdk_x11_surface_set_skip_pager_hint(surface:PGdkSurface; skips_pager:gboolean);

  procedure gdk_x11_surface_set_urgency_hint(surface:PGdkSurface; urgent:gboolean);

  procedure gdk_x11_surface_set_group(surface:PGdkSurface; leader:PGdkSurface);

  function gdk_x11_surface_get_group(surface:PGdkSurface):^GdkSurface;

{$endif}
  { __GDK_X11_SURFACE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_SURFACE : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_SURFACE:=gdk_x11_surface_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SURFACE(object : longint) : longint;
  begin
    GDK_X11_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_SURFACE,GdkX11Surface);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SURFACE_CLASS(klass : longint) : longint;
  begin
    GDK_X11_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_SURFACE,GdkX11SurfaceClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SURFACE(object : longint) : longint;
  begin
    GDK_IS_X11_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_SURFACE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SURFACE_CLASS(klass : longint) : longint;
  begin
    GDK_IS_X11_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_SURFACE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SURFACE_GET_CLASS(obj : longint) : longint;
  begin
    GDK_X11_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_SURFACE,GdkX11SurfaceClass);
  end;

  function gdk_x11_surface_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_x11_surface_get_xid(surface:PGdkSurface):Window;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_user_time(surface:PGdkSurface; timestamp:guint32);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_utf8_property(surface:PGdkSurface; name:Pchar; value:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_theme_variant(surface:PGdkSurface; variant:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_move_to_current_desktop(surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  function gdk_x11_surface_get_desktop(surface:PGdkSurface):guint32;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_move_to_desktop(surface:PGdkSurface; desktop:guint32);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_frame_sync_enabled(surface:PGdkSurface; frame_sync_enabled:gboolean);
  begin
    { You must implement this function }
  end;
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_XDISPLAY(win : longint) : longint;
  begin
    GDK_SURFACE_XDISPLAY:=GDK_DISPLAY_XDISPLAY(gdk_surface_get_display(win));
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_XID(win : longint) : longint;
  begin
    GDK_SURFACE_XID:=gdk_x11_surface_get_xid(win);
  end;

  function gdk_x11_get_server_time(surface:PGdkSurface):guint32;
  begin
    { You must implement this function }
  end;
  function gdk_x11_surface_lookup_for_display(display:PGdkDisplay; window:Window):PGdkSurface;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_skip_taskbar_hint(surface:PGdkSurface; skips_taskbar:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_skip_pager_hint(surface:PGdkSurface; skips_pager:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_urgency_hint(surface:PGdkSurface; urgent:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_surface_set_group(surface:PGdkSurface; leader:PGdkSurface);
  begin
    { You must implement this function }
  end;
  function gdk_x11_surface_get_group(surface:PGdkSurface):PGdkSurface;
  begin
    { You must implement this function }
  end;

