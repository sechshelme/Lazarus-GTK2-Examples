
  Type
  PGdkMonitor  = ^GdkMonitor;
  PGdkRectangle  = ^GdkRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gdkx11monitor.h
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
{$ifndef __GDK_X11_MONITOR_H__}
{$define __GDK_X11_MONITOR_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}

  { was #define dname def_expr }
  function GDK_TYPE_X11_MONITOR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_MONITOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_MONITOR(object : longint) : longint;  


  type
    _GdkX11Monitor = GdkX11Monitor;
    _GdkX11MonitorClass = GdkX11MonitorClass;
(* error 
GType             gdk_x11_monitor_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gdk_x11_monitor_get_output(monitor:PGdkMonitor):XID;

  procedure gdk_x11_monitor_get_workarea(monitor:PGdkMonitor; workarea:PGdkRectangle);

{$endif}
  { __GDK_X11_MONITOR_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_MONITOR : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_MONITOR:=gdk_x11_monitor_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_MONITOR(object : longint) : longint;
  begin
    GDK_X11_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_MONITOR,GdkX11Monitor);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_MONITOR(object : longint) : longint;
  begin
    GDK_IS_X11_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_MONITOR);
  end;

  function gdk_x11_monitor_get_output(monitor:PGdkMonitor):XID;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_monitor_get_workarea(monitor:PGdkMonitor; workarea:PGdkRectangle);
  begin
    { You must implement this function }
  end;

