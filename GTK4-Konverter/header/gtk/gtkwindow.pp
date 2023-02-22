
    Type
    Pchar  = ^char;
    PGdkDisplay  = ^GdkDisplay;
    PGdkMonitor  = ^GdkMonitor;
    PGList  = ^GList;
    PGListModel  = ^GListModel;
    PGtkApplication  = ^GtkApplication;
    PGtkWidget  = ^GtkWidget;
    PGtkWindow  = ^GtkWindow;
    PGtkWindowGroup  = ^GtkWindowGroup;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
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
{$ifndef __GTK_WINDOW_H__}
{$define __GTK_WINDOW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkapplication.h>}
{$include <gtk/gtkaccelgroup.h>}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_WINDOW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WINDOW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WINDOW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WINDOW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WINDOW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WINDOW_GET_CLASS(obj : longint) : longint;  


  type
    _GtkWindowClass = GtkWindowClass;
    _GtkWindowGroup = GtkWindowGroup;
    _GtkWindowGroupClass = GtkWindowGroupClass;
    _GtkWindowGroupPrivate = GtkWindowGroupPrivate;
    _GtkWindow = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkWindowClass:
   * @parent_class: The parent class.
   * @activate_focus: Activates the current focused widget within the window.
   * @activate_default: Activates the default widget for the window.
   * @keys_changed: Signal gets emitted when the set of accelerators or
   *   mnemonics that are associated with window changes.
   * @enable_debugging: Class handler for the `GtkWindow::enable-debugging`
   *   keybinding signal.
   * @close_request: Class handler for the `GtkWindow::close-request` signal.
    }
  {< public > }
  { G_SIGNAL_ACTION signals for keybindings  }
  {< private > }
    _GtkWindowClass = record
        parent_class : GtkWidgetClass;
        activate_focus : procedure (window:PGtkWindow);cdecl;
        activate_default : procedure (window:PGtkWindow);cdecl;
        keys_changed : procedure (window:PGtkWindow);cdecl;
        enable_debugging : function (window:PGtkWindow; toggle:gboolean):gboolean;cdecl;
        close_request : function (window:PGtkWindow):gboolean;cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType      gtk_window_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_window_new:^GtkWidget;

(* Const before type ignored *)
  procedure gtk_window_set_title(window:PGtkWindow; title:Pchar);

(* Const before type ignored *)
  function gtk_window_get_title(window:PGtkWindow):^char;

(* Const before type ignored *)
  procedure gtk_window_set_startup_id(window:PGtkWindow; startup_id:Pchar);

  procedure gtk_window_set_focus(window:PGtkWindow; focus:PGtkWidget);

  function gtk_window_get_focus(window:PGtkWindow):^GtkWidget;

  procedure gtk_window_set_default_widget(window:PGtkWindow; default_widget:PGtkWidget);

  function gtk_window_get_default_widget(window:PGtkWindow):^GtkWidget;

  procedure gtk_window_set_transient_for(window:PGtkWindow; parent:PGtkWindow);

  function gtk_window_get_transient_for(window:PGtkWindow):^GtkWindow;

  procedure gtk_window_set_destroy_with_parent(window:PGtkWindow; setting:gboolean);

  function gtk_window_get_destroy_with_parent(window:PGtkWindow):gboolean;

  procedure gtk_window_set_hide_on_close(window:PGtkWindow; setting:gboolean);

  function gtk_window_get_hide_on_close(window:PGtkWindow):gboolean;

  procedure gtk_window_set_mnemonics_visible(window:PGtkWindow; setting:gboolean);

  function gtk_window_get_mnemonics_visible(window:PGtkWindow):gboolean;

  procedure gtk_window_set_focus_visible(window:PGtkWindow; setting:gboolean);

  function gtk_window_get_focus_visible(window:PGtkWindow):gboolean;

  procedure gtk_window_set_resizable(window:PGtkWindow; resizable:gboolean);

  function gtk_window_get_resizable(window:PGtkWindow):gboolean;

  procedure gtk_window_set_display(window:PGtkWindow; display:PGdkDisplay);

  function gtk_window_is_active(window:PGtkWindow):gboolean;

  procedure gtk_window_set_decorated(window:PGtkWindow; setting:gboolean);

  function gtk_window_get_decorated(window:PGtkWindow):gboolean;

  procedure gtk_window_set_deletable(window:PGtkWindow; setting:gboolean);

  function gtk_window_get_deletable(window:PGtkWindow):gboolean;

(* Const before type ignored *)
  procedure gtk_window_set_icon_name(window:PGtkWindow; name:Pchar);

(* Const before type ignored *)
  function gtk_window_get_icon_name(window:PGtkWindow):^char;

(* Const before type ignored *)
  procedure gtk_window_set_default_icon_name(name:Pchar);

(* Const before type ignored *)
  function gtk_window_get_default_icon_name:^char;

  procedure gtk_window_set_auto_startup_notification(setting:gboolean);

  { If window is set modal, input will be grabbed when show and released when hide  }
  procedure gtk_window_set_modal(window:PGtkWindow; modal:gboolean);

  function gtk_window_get_modal(window:PGtkWindow):gboolean;

  function gtk_window_get_toplevels:^GListModel;

  function gtk_window_list_toplevels:^GList;

  procedure gtk_window_present(window:PGtkWindow);

  procedure gtk_window_present_with_time(window:PGtkWindow; timestamp:guint32);

  procedure gtk_window_minimize(window:PGtkWindow);

  procedure gtk_window_unminimize(window:PGtkWindow);

  procedure gtk_window_maximize(window:PGtkWindow);

  procedure gtk_window_unmaximize(window:PGtkWindow);

  procedure gtk_window_fullscreen(window:PGtkWindow);

  procedure gtk_window_unfullscreen(window:PGtkWindow);

  procedure gtk_window_fullscreen_on_monitor(window:PGtkWindow; monitor:PGdkMonitor);

  procedure gtk_window_close(window:PGtkWindow);

  { Set initial default size of the window (does not constrain user
   * resize operations)
    }
  procedure gtk_window_set_default_size(window:PGtkWindow; width:longint; height:longint);

  procedure gtk_window_get_default_size(window:PGtkWindow; width:Plongint; height:Plongint);

  function gtk_window_get_group(window:PGtkWindow):^GtkWindowGroup;

  function gtk_window_has_group(window:PGtkWindow):gboolean;

  function gtk_window_get_application(window:PGtkWindow):^GtkApplication;

  procedure gtk_window_set_application(window:PGtkWindow; application:PGtkApplication);

  procedure gtk_window_set_child(window:PGtkWindow; child:PGtkWidget);

  function gtk_window_get_child(window:PGtkWindow):^GtkWidget;

  procedure gtk_window_set_titlebar(window:PGtkWindow; titlebar:PGtkWidget);

  function gtk_window_get_titlebar(window:PGtkWindow):^GtkWidget;

  function gtk_window_is_maximized(window:PGtkWindow):gboolean;

  function gtk_window_is_fullscreen(window:PGtkWindow):gboolean;

  procedure gtk_window_destroy(window:PGtkWindow);

  procedure gtk_window_set_interactive_debugging(enable:gboolean);

(* error 
void     gtk_window_set_handle_menubar_accel (GtkWindow *window,
in declaration at line 256 *)
(* error 
gboolean gtk_window_get_handle_menubar_accel (GtkWindow *window);
 in declarator_list *)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkWindow, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkWindow, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkWindowGroup, g_object_unref)
{$endif}
    { __GTK_WINDOW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_WINDOW : longint; { return type might be wrong }
    begin
      GTK_TYPE_WINDOW:=gtk_window_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WINDOW(obj : longint) : longint;
  begin
    GTK_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_WINDOW,GtkWindow);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WINDOW_CLASS(klass : longint) : longint;
  begin
    GTK_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WINDOW,GtkWindowClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WINDOW(obj : longint) : longint;
  begin
    GTK_IS_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_WINDOW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WINDOW_CLASS(klass : longint) : longint;
  begin
    GTK_IS_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WINDOW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WINDOW_GET_CLASS(obj : longint) : longint;
  begin
    GTK_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WINDOW,GtkWindowClass);
  end;

  function gtk_window_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_title(window:PGtkWindow; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_title(window:PGtkWindow):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_startup_id(window:PGtkWindow; startup_id:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_focus(window:PGtkWindow; focus:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_focus(window:PGtkWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_default_widget(window:PGtkWindow; default_widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_default_widget(window:PGtkWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_transient_for(window:PGtkWindow; parent:PGtkWindow);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_transient_for(window:PGtkWindow):PGtkWindow;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_destroy_with_parent(window:PGtkWindow; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_destroy_with_parent(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_hide_on_close(window:PGtkWindow; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_hide_on_close(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_mnemonics_visible(window:PGtkWindow; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_mnemonics_visible(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_focus_visible(window:PGtkWindow; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_focus_visible(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_resizable(window:PGtkWindow; resizable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_resizable(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_display(window:PGtkWindow; display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  function gtk_window_is_active(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_decorated(window:PGtkWindow; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_decorated(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_deletable(window:PGtkWindow; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_deletable(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_icon_name(window:PGtkWindow; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_icon_name(window:PGtkWindow):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_default_icon_name(name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_default_icon_name:Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_auto_startup_notification(setting:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_modal(window:PGtkWindow; modal:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_modal(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_window_get_toplevels:PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_window_list_toplevels:PGList;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_present(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_present_with_time(window:PGtkWindow; timestamp:guint32);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_minimize(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_unminimize(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_maximize(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_unmaximize(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_fullscreen(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_unfullscreen(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_fullscreen_on_monitor(window:PGtkWindow; monitor:PGdkMonitor);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_close(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_default_size(window:PGtkWindow; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_get_default_size(window:PGtkWindow; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_group(window:PGtkWindow):PGtkWindowGroup;
  begin
    { You must implement this function }
  end;
  function gtk_window_has_group(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_window_get_application(window:PGtkWindow):PGtkApplication;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_application(window:PGtkWindow; application:PGtkApplication);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_child(window:PGtkWindow; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_child(window:PGtkWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_titlebar(window:PGtkWindow; titlebar:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_window_get_titlebar(window:PGtkWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_window_is_maximized(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_window_is_fullscreen(window:PGtkWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_destroy(window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_window_set_interactive_debugging(enable:gboolean);
  begin
    { You must implement this function }
  end;

