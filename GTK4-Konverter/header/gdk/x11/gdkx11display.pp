
    Type
    Pchar  = ^char;
    PDisplay  = ^Display;
    PGdkCursor  = ^GdkCursor;
    PGdkDisplay  = ^GdkDisplay;
    PGdkMonitor  = ^GdkMonitor;
    PGdkSurface  = ^GdkSurface;
    PGdkX11Screen  = ^GdkX11Screen;
    PScreen  = ^Screen;
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
{$ifndef __GDK_X11_DISPLAY_H__}
{$define __GDK_X11_DISPLAY_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gdk/x11/gdkx11screen.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}
{$ifdef GTK_COMPILATION}

  type
    _GdkX11Display = GdkX11Display;
{$else}

  type
    GdkX11Display = GdkDisplay;
{$endif}

  type
    _GdkX11DisplayClass = GdkX11DisplayClass;

  { was #define dname def_expr }
  function GDK_TYPE_X11_DISPLAY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DISPLAY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DISPLAY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DISPLAY_GET_CLASS(obj : longint) : longint;  

  function gdk_x11_display_get_type:GType;

(* Const before type ignored *)
  function gdk_x11_display_open(display_name:Pchar):^GdkDisplay;

  function gdk_x11_display_get_xdisplay(display:PGdkDisplay):^Display;

  function gdk_x11_display_get_xscreen(display:PGdkDisplay):^Screen;

  function gdk_x11_display_get_xrootwindow(display:PGdkDisplay):Window;

  function gdk_x11_display_get_xcursor(display:PGdkDisplay; cursor:PGdkCursor):Cursor;

  {*
   * GDK_DISPLAY_XDISPLAY:
   * @display: a `GdkDisplay`
   *
   * Returns the display of a `GdkDisplay`.
   *
   * Returns: an Xlib Display*
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DISPLAY_XDISPLAY(display : longint) : longint;  

  function gdk_x11_display_get_user_time(display:PGdkDisplay):guint32;

(* Const before type ignored *)
  function gdk_x11_display_get_startup_notification_id(display:PGdkDisplay):^char;

(* Const before type ignored *)
  procedure gdk_x11_display_set_startup_notification_id(display:PGdkDisplay; startup_id:Pchar);

(* Const before type ignored *)
  procedure gdk_x11_display_set_program_class(display:PGdkDisplay; program_class:Pchar);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gdk_x11_display_set_cursor_theme(display:PGdkDisplay; theme:Pchar; size:longint);

(* Const before type ignored *)
(* error 
                                                ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : pointer;

  function gdk_x11_lookup_xdisplay(xdisplay:PDisplay):^GdkDisplay;

  function gdk_x11_display_get_screen(display:PGdkDisplay):^GdkX11Screen;

  function gdk_x11_display_get_primary_monitor(display:PGdkDisplay):^GdkMonitor;

  procedure gdk_x11_display_grab(display:PGdkDisplay);

  procedure gdk_x11_display_ungrab(display:PGdkDisplay);

  procedure gdk_x11_display_set_surface_scale(display:PGdkDisplay; scale:longint);

  procedure gdk_x11_display_error_trap_push(display:PGdkDisplay);

  { warn unused because you could use pop_ignored otherwise  }
(* error 
G_GNUC_WARN_UNUSED_RESULT int  gdk_x11_display_error_trap_pop         (GdkDisplay *display);
in declaration at line 124 *)
    procedure gdk_x11_display_error_trap_pop_ignored(display:PGdkDisplay);

(* Const before type ignored *)
    procedure gdk_x11_set_sm_client_id(sm_client_id:Pchar);

    function gdk_x11_display_get_default_group(display:PGdkDisplay):^GdkSurface;

{$endif}
    { __GDK_X11_DISPLAY_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_DISPLAY : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_DISPLAY:=gdk_x11_display_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DISPLAY(object : longint) : longint;
  begin
    GDK_X11_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_DISPLAY,GdkX11Display);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DISPLAY_CLASS(klass : longint) : longint;
  begin
    GDK_X11_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_DISPLAY,GdkX11DisplayClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DISPLAY(object : longint) : longint;
  begin
    GDK_IS_X11_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_DISPLAY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DISPLAY_CLASS(klass : longint) : longint;
  begin
    GDK_IS_X11_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_DISPLAY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DISPLAY_GET_CLASS(obj : longint) : longint;
  begin
    GDK_X11_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_DISPLAY,GdkX11DisplayClass);
  end;

  function gdk_x11_display_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_open(display_name:Pchar):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_xdisplay(display:PGdkDisplay):PDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_xscreen(display:PGdkDisplay):PScreen;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_xrootwindow(display:PGdkDisplay):Window;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_xcursor(display:PGdkDisplay; cursor:PGdkCursor):Cursor;
  begin
    { You must implement this function }
  end;
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DISPLAY_XDISPLAY(display : longint) : longint;
  begin
    GDK_DISPLAY_XDISPLAY:=gdk_x11_display_get_xdisplay(display);
  end;

  function gdk_x11_display_get_user_time(display:PGdkDisplay):guint32;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_startup_notification_id(display:PGdkDisplay):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_set_startup_notification_id(display:PGdkDisplay; startup_id:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_set_program_class(display:PGdkDisplay; program_class:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_set_cursor_theme(display:PGdkDisplay; theme:Pchar; size:longint);
  begin
    { You must implement this function }
  end;
  function gdk_x11_lookup_xdisplay(xdisplay:PDisplay):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_screen(display:PGdkDisplay):PGdkX11Screen;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_get_primary_monitor(display:PGdkDisplay):PGdkMonitor;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_grab(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_ungrab(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_set_surface_scale(display:PGdkDisplay; scale:longint);
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_display_error_trap_push(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
    procedure gdk_x11_display_error_trap_pop_ignored(display:PGdkDisplay);
    begin
      { You must implement this function }
    end;
    procedure gdk_x11_set_sm_client_id(sm_client_id:Pchar);
    begin
      { You must implement this function }
    end;
    function gdk_x11_display_get_default_group(display:PGdkDisplay):PGdkSurface;
    begin
      { You must implement this function }
    end;

