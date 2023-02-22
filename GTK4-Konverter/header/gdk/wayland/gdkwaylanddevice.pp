
    Type
    Pchar  = ^char;
    PGdkDevice  = ^GdkDevice;
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
{$ifndef __GDK_WAYLAND_DEVICE_H__}
{$define __GDK_WAYLAND_DEVICE_H__}  
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}
  { Zeile entfernt  }
{$ifdef GTK_COMPILATION}

  type
    _GdkWaylandDevice = GdkWaylandDevice;
{$else}

  type
    GdkWaylandDevice = GdkDevice;
{$endif}

  type
    _GdkWaylandDeviceClass = GdkWaylandDeviceClass;

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_DEVICE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DEVICE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DEVICE_CLASS(c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DEVICE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DEVICE_CLASS(c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DEVICE_GET_CLASS(o : longint) : longint;  

  { Zeile entfernt  }
  function gdk_wayland_device_get_type:GType;

  { Zeile entfernt  }
(* error 
struct wl_seat      *gdk_wayland_device_get_wl_seat         (GdkDevice *device);
in declaration at line 50 *)
    { Zeile entfernt  }
(* error 
struct wl_pointer   *gdk_wayland_device_get_wl_pointer      (GdkDevice *device);
in declaration at line 52 *)
    { Zeile entfernt  }
(* error 
struct wl_keyboard  *gdk_wayland_device_get_wl_keyboard     (GdkDevice *device);
in declaration at line 54 *)
    { Zeile entfernt  }
(* error 
struct xkb_keymap   *gdk_wayland_device_get_xkb_keymap      (GdkDevice *device);
in declaration at line 56 *)
    { Zeile entfernt  }
(* Const before type ignored *)
    function gdk_wayland_device_get_node_path(device:PGdkDevice):^char;

    { Zeile entfernt  }
{$endif}
    { __GDK_WAYLAND_DEVICE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_DEVICE : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_DEVICE:=gdk_wayland_device_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DEVICE(o : longint) : longint;
  begin
    GDK_WAYLAND_DEVICE:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDevice);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DEVICE_CLASS(c : longint) : longint;
  begin
    GDK_WAYLAND_DEVICE_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDeviceClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DEVICE(o : longint) : longint;
  begin
    GDK_IS_WAYLAND_DEVICE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_WAYLAND_DEVICE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_DEVICE_CLASS(c : longint) : longint;
  begin
    GDK_IS_WAYLAND_DEVICE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_WAYLAND_DEVICE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_DEVICE_GET_CLASS(o : longint) : longint;
  begin
    GDK_WAYLAND_DEVICE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDeviceClass);
  end;

  function gdk_wayland_device_get_type:GType;
  begin
    { You must implement this function }
  end;
    function gdk_wayland_device_get_node_path(device:PGdkDevice):Pchar;
    begin
      { You must implement this function }
    end;

