
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gdkwaylandmonitor.h
   *
   * Copyright 2016 Red Hat, Inc.
   *
   * Matthias Clasen <mclasen@redhat.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GDK_WAYLAND_MONITOR_H__}
{$define __GDK_WAYLAND_MONITOR_H__}  
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_MONITOR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_MONITOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_MONITOR(object : longint) : longint;  


  type
    _GdkWaylandMonitor = GdkWaylandMonitor;
    _GdkWaylandMonitorClass = GdkWaylandMonitorClass;
(* error 
GType             gdk_wayland_monitor_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* error 
struct wl_output *gdk_wayland_monitor_get_wl_output       (GdkMonitor *monitor);
in declaration at line 44 *)
{$endif}
    { __GDK_WAYLAND_MONITOR_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_MONITOR : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_MONITOR:=gdk_wayland_monitor_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_MONITOR(object : longint) : longint;
  begin
    GDK_WAYLAND_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_MONITOR,GdkWaylandMonitor);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_MONITOR(object : longint) : longint;
  begin
    GDK_IS_WAYLAND_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_MONITOR);
  end;


