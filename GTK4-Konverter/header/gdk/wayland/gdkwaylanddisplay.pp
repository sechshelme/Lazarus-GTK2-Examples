
    Type
    Pchar  = ^char;
    PGdkDisplay  = ^GdkDisplay;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2013 Jan Arne Petersen
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
{$ifndef __GDK_WAYLAND_DISPLAY_H__}
{$define __GDK_WAYLAND_DISPLAY_H__}  
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}
{$ifdef GTK_COMPILATION}

  type
    _GdkWaylandDisplay = GdkWaylandDisplay;
{$else}

  type
    GdkWaylandDisplay = GdkDisplay;
{$endif}

  type
    _GdkWaylandDisplayClass = GdkWaylandDisplayClass;

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_DISPLAY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DISPLAY_GET_CLASS(obj : longint) : longint;  

  function gdk_wayland_display_get_type:GType;

(* error 
struct wl_display      *gdk_wayland_display_get_wl_display      (GdkDisplay *display);
in declaration at line 49 *)
(* error 
struct wl_compositor   *gdk_wayland_display_get_wl_compositor   (GdkDisplay *display);
in declaration at line 51 *)
(* Const before type ignored *)
    procedure gdk_wayland_display_set_cursor_theme(display:PGdkDisplay; name:Pchar; size:longint);

(* Const before type ignored *)
    function gdk_wayland_display_get_startup_notification_id(display:PGdkDisplay):^char;

(* Const before type ignored *)
    procedure gdk_wayland_display_set_startup_notification_id(display:PGdkDisplay; startup_id:Pchar);

(* Const before type ignored *)
    function gdk_wayland_display_query_registry(display:PGdkDisplay; global:Pchar):gboolean;

(* error 
gpointer                gdk_wayland_display_get_egl_display     (GdkDisplay  *display);
 in declarator_list *)
{$endif}
    { __GDK_WAYLAND_DISPLAY_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_DISPLAY : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_DISPLAY:=gdk_wayland_display_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DISPLAY(object : longint) : longint;
  begin
    GDK_WAYLAND_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplay);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;
  begin
    GDK_WAYLAND_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplayClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DISPLAY(object : longint) : longint;
  begin
    GDK_IS_WAYLAND_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_DISPLAY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;
  begin
    GDK_IS_WAYLAND_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_WAYLAND_DISPLAY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DISPLAY_GET_CLASS(obj : longint) : longint;
  begin
    GDK_WAYLAND_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplayClass);
  end;

  function gdk_wayland_display_get_type:GType;
  begin
    { You must implement this function }
  end;
    procedure gdk_wayland_display_set_cursor_theme(display:PGdkDisplay; name:Pchar; size:longint);
    begin
      { You must implement this function }
    end;
    function gdk_wayland_display_get_startup_notification_id(display:PGdkDisplay):Pchar;
    begin
      { You must implement this function }
    end;
    procedure gdk_wayland_display_set_startup_notification_id(display:PGdkDisplay; startup_id:Pchar);
    begin
      { You must implement this function }
    end;
    function gdk_wayland_display_query_registry(display:PGdkDisplay; global:Pchar):gboolean;
    begin
      { You must implement this function }
    end;

