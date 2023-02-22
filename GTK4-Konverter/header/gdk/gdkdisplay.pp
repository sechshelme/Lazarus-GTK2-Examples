
  Type
  Pchar  = ^char;
  PGdkAppLaunchContext  = ^GdkAppLaunchContext;
  PGdkClipboard  = ^GdkClipboard;
  PGdkDevice  = ^GdkDevice;
  PGdkDisplay  = ^GdkDisplay;
  PGdkEvent  = ^GdkEvent;
  PGdkKeymapKey  = ^GdkKeymapKey;
  PGdkModifierType  = ^GdkModifierType;
  PGdkMonitor  = ^GdkMonitor;
  PGdkSeat  = ^GdkSeat;
  PGdkSurface  = ^GdkSurface;
  PGList  = ^GList;
  Pguint  = ^guint;
  PGValue  = ^GValue;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gdkdisplay.h
   *
   * Copyright 2001 Sun Microsystems Inc.
   *
   * Erwann Chenede <erwann.chenede@sun.com>
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
{$ifndef __GDK_DISPLAY_H__}
{$define __GDK_DISPLAY_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdkseat.h>}
{$include <gdk/gdkmonitor.h>}

  { was #define dname def_expr }
  function GDK_TYPE_DISPLAY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DISPLAY(object : longint) : longint;  

(* error 
GType       gdk_display_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gdk_display_open(display_name:Pchar):^GdkDisplay;

(* Const before type ignored *)
  function gdk_display_get_name(display:PGdkDisplay):^char;

  function gdk_display_device_is_grabbed(display:PGdkDisplay; device:PGdkDevice):gboolean;

  procedure gdk_display_beep(display:PGdkDisplay);

  procedure gdk_display_sync(display:PGdkDisplay);

  procedure gdk_display_flush(display:PGdkDisplay);

  procedure gdk_display_close(display:PGdkDisplay);

  function gdk_display_is_closed(display:PGdkDisplay):gboolean;

  function gdk_display_is_composited(display:PGdkDisplay):gboolean;

  function gdk_display_is_rgba(display:PGdkDisplay):gboolean;

  function gdk_display_supports_input_shapes(display:PGdkDisplay):gboolean;

(* error 
gboolean    gdk_display_prepare_gl         (GdkDisplay  *self,
(* error 
                                            GError     **error);
 in declarator_list *)
 in declarator_list *)
(* error 
GdkGLContext *gdk_display_create_gl_context(GdkDisplay  *self,
(* error 
                                            GError     **error);
 in declarator_list *)
 in declarator_list *)
  function gdk_display_get_default:^GdkDisplay;

  function gdk_display_get_clipboard(display:PGdkDisplay):^GdkClipboard;

  function gdk_display_get_primary_clipboard(display:PGdkDisplay):^GdkClipboard;

(* Const before type ignored *)
  procedure gdk_display_notify_startup_complete(display:PGdkDisplay; startup_id:Pchar);

(* Const before type ignored *)
  function gdk_display_get_startup_notification_id(display:PGdkDisplay):^char;

  function gdk_display_get_app_launch_context(display:PGdkDisplay):^GdkAppLaunchContext;

  function gdk_display_get_default_seat(display:PGdkDisplay):^GdkSeat;

  function gdk_display_list_seats(display:PGdkDisplay):^GList;

(* error 
GListModel * gdk_display_get_monitors          (GdkDisplay *self) G_GNUC_PURE;
 in declarator_list *)

    var
 : GListModel;

  function gdk_display_get_monitor_at_surface(display:PGdkDisplay; surface:PGdkSurface):^GdkMonitor;

  procedure gdk_display_put_event(display:PGdkDisplay; event:PGdkEvent);

  function gdk_display_map_keyval(display:PGdkDisplay; keyval:guint; keys:PPGdkKeymapKey; n_keys:Plongint):gboolean;

  function gdk_display_map_keycode(display:PGdkDisplay; keycode:guint; keys:PPGdkKeymapKey; keyvals:PPguint; n_entries:Plongint):gboolean;

  function gdk_display_translate_key(display:PGdkDisplay; keycode:guint; state:GdkModifierType; group:longint; keyval:Pguint; 
             effective_group:Plongint; level:Plongint; consumed:PGdkModifierType):gboolean;

(* Const before type ignored *)
  function gdk_display_get_setting(display:PGdkDisplay; name:Pchar; value:PGValue):gboolean;

{$endif}
  { __GDK_DISPLAY_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_DISPLAY : longint; { return type might be wrong }
    begin
      GDK_TYPE_DISPLAY:=gdk_display_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DISPLAY(object : longint) : longint;
  begin
    GDK_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DISPLAY,GdkDisplay);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DISPLAY(object : longint) : longint;
  begin
    GDK_IS_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DISPLAY);
  end;

  function gdk_display_open(display_name:Pchar):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_name(display:PGdkDisplay):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_display_device_is_grabbed(display:PGdkDisplay; device:PGdkDevice):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_display_beep(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  procedure gdk_display_sync(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  procedure gdk_display_flush(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  procedure gdk_display_close(display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  function gdk_display_is_closed(display:PGdkDisplay):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_is_composited(display:PGdkDisplay):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_is_rgba(display:PGdkDisplay):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_supports_input_shapes(display:PGdkDisplay):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_default:PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_clipboard(display:PGdkDisplay):PGdkClipboard;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_primary_clipboard(display:PGdkDisplay):PGdkClipboard;
  begin
    { You must implement this function }
  end;
  procedure gdk_display_notify_startup_complete(display:PGdkDisplay; startup_id:Pchar);
  begin
    { You must implement this function }
  end;
  function gdk_display_get_startup_notification_id(display:PGdkDisplay):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_app_launch_context(display:PGdkDisplay):PGdkAppLaunchContext;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_default_seat(display:PGdkDisplay):PGdkSeat;
  begin
    { You must implement this function }
  end;
  function gdk_display_list_seats(display:PGdkDisplay):PGList;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_monitor_at_surface(display:PGdkDisplay; surface:PGdkSurface):PGdkMonitor;
  begin
    { You must implement this function }
  end;
  procedure gdk_display_put_event(display:PGdkDisplay; event:PGdkEvent);
  begin
    { You must implement this function }
  end;
  function gdk_display_map_keyval(display:PGdkDisplay; keyval:guint; keys:PPGdkKeymapKey; n_keys:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_map_keycode(display:PGdkDisplay; keycode:guint; keys:PPGdkKeymapKey; keyvals:PPguint; n_entries:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_translate_key(display:PGdkDisplay; keycode:guint; state:GdkModifierType; group:longint; keyval:Pguint; 
             effective_group:Plongint; level:Plongint; consumed:PGdkModifierType):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_display_get_setting(display:PGdkDisplay; name:Pchar; value:PGValue):gboolean;
  begin
    { You must implement this function }
  end;

