
  Type
  PGtkApplication  = ^GtkApplication;
  PGtkApplicationWindow  = ^GtkApplicationWindow;
  PGtkShortcutsWindow  = ^GtkShortcutsWindow;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2011 Canonical Limited
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the licence, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Author: Ryan Lortie <desrt@desrt.ca>
    }
{$ifndef __GTK_APPLICATION_WINDOW_H__}
{$define __GTK_APPLICATION_WINDOW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
{$include <gtk/gtkshortcutswindow.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_WINDOW(inst : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;  


  type
    _GtkApplicationWindowClass = GtkApplicationWindowClass;
    _GtkApplicationWindow = GtkApplicationWindow;
    _GtkApplicationWindow = record
        parent_instance : GtkWindow;
      end;

  {*
   * GtkApplicationWindowClass:
   * @parent_class: The parent class.
    }
  {< private > }
    _GtkApplicationWindowClass = record
        parent_class : GtkWindowClass;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_application_window_get_type:GType;

  { Zeile entfernt  }
  function gtk_application_window_new(application:PGtkApplication):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_application_window_set_show_menubar(window:PGtkApplicationWindow; show_menubar:gboolean);

  { Zeile entfernt  }
  function gtk_application_window_get_show_menubar(window:PGtkApplicationWindow):gboolean;

  { Zeile entfernt  }
  function gtk_application_window_get_id(window:PGtkApplicationWindow):guint;

  { Zeile entfernt  }
  procedure gtk_application_window_set_help_overlay(window:PGtkApplicationWindow; help_overlay:PGtkShortcutsWindow);

  { Zeile entfernt  }
  function gtk_application_window_get_help_overlay(window:PGtkApplicationWindow):^GtkShortcutsWindow;

  { Zeile entfernt  }
{$endif}
  { __GTK_APPLICATION_WINDOW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }
    begin
      GTK_TYPE_APPLICATION_WINDOW:=gtk_application_window_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_WINDOW(inst : longint) : longint;
  begin
    GTK_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindow);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
  begin
    GTK_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(_class,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;
  begin
    GTK_IS_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_APPLICATION_WINDOW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
  begin
    GTK_IS_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(_class,GTK_TYPE_APPLICATION_WINDOW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;
  begin
    GTK_APPLICATION_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
  end;

  function gtk_application_window_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_application_window_new(application:PGtkApplication):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_application_window_set_show_menubar(window:PGtkApplicationWindow; show_menubar:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_application_window_get_show_menubar(window:PGtkApplicationWindow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_application_window_get_id(window:PGtkApplicationWindow):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_application_window_set_help_overlay(window:PGtkApplicationWindow; help_overlay:PGtkShortcutsWindow);
  begin
    { You must implement this function }
  end;
  function gtk_application_window_get_help_overlay(window:PGtkApplicationWindow):PGtkShortcutsWindow;
  begin
    { You must implement this function }
  end;

