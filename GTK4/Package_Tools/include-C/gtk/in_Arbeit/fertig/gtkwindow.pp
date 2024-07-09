
unit gtkwindow;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkwindow.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkwindow.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkMonitor  = ^GdkMonitor;
PGList  = ^GList;
PGListModel  = ^GListModel;
PGtkApplication  = ^GtkApplication;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
PGtkWindowClass  = ^GtkWindowClass;
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
{ // // //  }

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
  PGtkWindow = ^TGtkWindow;
  TGtkWindow = record
      parent_instance : TGtkWidget;
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
  PGtkWindowClass = ^TGtkWindowClass;
  TGtkWindowClass = record
      parent_class : TGtkWidgetClass;
      activate_focus : procedure (window:PGtkWindow);cdecl;
      activate_default : procedure (window:PGtkWindow);cdecl;
      keys_changed : procedure (window:PGtkWindow);cdecl;
      enable_debugging : function (window:PGtkWindow; toggle:Tgboolean):Tgboolean;cdecl;
      close_request : function (window:PGtkWindow):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_window_get_type:TGType;cdecl;external;
function gtk_window_new:PGtkWidget;cdecl;external;
(* Const before type ignored *)
procedure gtk_window_set_title(window:PGtkWindow; title:Pchar);cdecl;external;
(* Const before type ignored *)
function gtk_window_get_title(window:PGtkWindow):Pchar;cdecl;external;
(* Const before type ignored *)
procedure gtk_window_set_startup_id(window:PGtkWindow; startup_id:Pchar);cdecl;external;
procedure gtk_window_set_focus(window:PGtkWindow; focus:PGtkWidget);cdecl;external;
function gtk_window_get_focus(window:PGtkWindow):PGtkWidget;cdecl;external;
procedure gtk_window_set_default_widget(window:PGtkWindow; default_widget:PGtkWidget);cdecl;external;
function gtk_window_get_default_widget(window:PGtkWindow):PGtkWidget;cdecl;external;
procedure gtk_window_set_transient_for(window:PGtkWindow; parent:PGtkWindow);cdecl;external;
function gtk_window_get_transient_for(window:PGtkWindow):PGtkWindow;cdecl;external;
procedure gtk_window_set_destroy_with_parent(window:PGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_destroy_with_parent(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_hide_on_close(window:PGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_hide_on_close(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_mnemonics_visible(window:PGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_mnemonics_visible(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_focus_visible(window:PGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_focus_visible(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_resizable(window:PGtkWindow; resizable:Tgboolean);cdecl;external;
function gtk_window_get_resizable(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_display(window:PGtkWindow; display:PGdkDisplay);cdecl;external;
function gtk_window_is_active(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_decorated(window:PGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_decorated(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_deletable(window:PGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_deletable(window:PGtkWindow):Tgboolean;cdecl;external;
(* Const before type ignored *)
procedure gtk_window_set_icon_name(window:PGtkWindow; name:Pchar);cdecl;external;
(* Const before type ignored *)
function gtk_window_get_icon_name(window:PGtkWindow):Pchar;cdecl;external;
(* Const before type ignored *)
procedure gtk_window_set_default_icon_name(name:Pchar);cdecl;external;
(* Const before type ignored *)
function gtk_window_get_default_icon_name:Pchar;cdecl;external;
procedure gtk_window_set_auto_startup_notification(setting:Tgboolean);cdecl;external;
{ If window is set modal, input will be grabbed when show and released when hide  }
procedure gtk_window_set_modal(window:PGtkWindow; modal:Tgboolean);cdecl;external;
function gtk_window_get_modal(window:PGtkWindow):Tgboolean;cdecl;external;
function gtk_window_get_toplevels:PGListModel;cdecl;external;
function gtk_window_list_toplevels:PGList;cdecl;external;
procedure gtk_window_present(window:PGtkWindow);cdecl;external;
procedure gtk_window_present_with_time(window:PGtkWindow; timestamp:Tguint32);cdecl;external;
procedure gtk_window_minimize(window:PGtkWindow);cdecl;external;
procedure gtk_window_unminimize(window:PGtkWindow);cdecl;external;
procedure gtk_window_maximize(window:PGtkWindow);cdecl;external;
procedure gtk_window_unmaximize(window:PGtkWindow);cdecl;external;
procedure gtk_window_fullscreen(window:PGtkWindow);cdecl;external;
procedure gtk_window_unfullscreen(window:PGtkWindow);cdecl;external;
procedure gtk_window_fullscreen_on_monitor(window:PGtkWindow; monitor:PGdkMonitor);cdecl;external;
procedure gtk_window_close(window:PGtkWindow);cdecl;external;
{ Set initial default size of the window (does not constrain user
 * resize operations)
  }
procedure gtk_window_set_default_size(window:PGtkWindow; width:longint; height:longint);cdecl;external;
procedure gtk_window_get_default_size(window:PGtkWindow; width:Plongint; height:Plongint);cdecl;external;
function gtk_window_get_group(window:PGtkWindow):PGtkWindowGroup;cdecl;external;
function gtk_window_has_group(window:PGtkWindow):Tgboolean;cdecl;external;
function gtk_window_get_application(window:PGtkWindow):PGtkApplication;cdecl;external;
procedure gtk_window_set_application(window:PGtkWindow; application:PGtkApplication);cdecl;external;
procedure gtk_window_set_child(window:PGtkWindow; child:PGtkWidget);cdecl;external;
function gtk_window_get_child(window:PGtkWindow):PGtkWidget;cdecl;external;
procedure gtk_window_set_titlebar(window:PGtkWindow; titlebar:PGtkWidget);cdecl;external;
function gtk_window_get_titlebar(window:PGtkWindow):PGtkWidget;cdecl;external;
function gtk_window_is_maximized(window:PGtkWindow):Tgboolean;cdecl;external;
function gtk_window_is_fullscreen(window:PGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_destroy(window:PGtkWindow);cdecl;external;
procedure gtk_window_set_interactive_debugging(enable:Tgboolean);cdecl;external;
procedure gtk_window_set_handle_menubar_accel(window:PGtkWindow; handle_menubar_accel:Tgboolean);cdecl;external;
function gtk_window_get_handle_menubar_accel(window:PGtkWindow):Tgboolean;cdecl;external;
{G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkWindow, g_object_unref) }
{G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkWindowGroup, g_object_unref) }
{ // // //  }
{$endif}
{ __GTK_WINDOW_H__  }

implementation

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


end.
