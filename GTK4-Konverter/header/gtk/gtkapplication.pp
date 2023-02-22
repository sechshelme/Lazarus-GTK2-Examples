
  Type
  Pchar  = ^char;
  PGList  = ^GList;
  PGMenu  = ^GMenu;
  PGMenuModel  = ^GMenuModel;
  PGtkApplication  = ^GtkApplication;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2010 Codethink Limited
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
{$ifndef __GTK_APPLICATION_H__}
{$define __GTK_APPLICATION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gio/gio.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_APPLICATION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_GET_CLASS(obj : longint) : longint;  


  type
    _GtkApplication = GtkApplication;
    _GtkApplicationClass = GtkApplicationClass;
    _GtkApplication = record
        parent_instance : GApplication;
      end;

  {*
   * GtkApplicationClass:
   * @parent_class: The parent class.
   * @window_added: Signal emitted when a `GtkWindow` is added to
   *    application through gtk_application_add_window().
   * @window_removed: Signal emitted when a `GtkWindow` is removed from
   *    application, either as a side-effect of being destroyed or
   *    explicitly through gtk_application_remove_window().
    }
  {< public > }
  {< private > }
    _GtkApplicationClass = record
        parent_class : GApplicationClass;
        window_added : procedure (application:PGtkApplication; window:PGtkWindow);cdecl;
        window_removed : procedure (application:PGtkApplication; window:PGtkWindow);cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_application_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_application_new(application_id:Pchar; flags:GApplicationFlags):^GtkApplication;

  { Zeile entfernt  }
  procedure gtk_application_add_window(application:PGtkApplication; window:PGtkWindow);

  { Zeile entfernt  }
  procedure gtk_application_remove_window(application:PGtkApplication; window:PGtkWindow);

  { Zeile entfernt  }
  function gtk_application_get_windows(application:PGtkApplication):^GList;

  { Zeile entfernt  }
  function gtk_application_get_menubar(application:PGtkApplication):^GMenuModel;

  { Zeile entfernt  }
  procedure gtk_application_set_menubar(application:PGtkApplication; menubar:PGMenuModel);


  type
    GtkApplicationInhibitFlags = (GTK_APPLICATION_INHIBIT_LOGOUT := 1 shl 0,
      GTK_APPLICATION_INHIBIT_SWITCH := 1 shl 1,
      GTK_APPLICATION_INHIBIT_SUSPEND := 1 shl 2,
      GTK_APPLICATION_INHIBIT_IDLE := 1 shl 3);
  { Zeile entfernt  }
(* Const before type ignored *)

  function gtk_application_inhibit(application:PGtkApplication; window:PGtkWindow; flags:GtkApplicationInhibitFlags; reason:Pchar):guint;

  { Zeile entfernt  }
  procedure gtk_application_uninhibit(application:PGtkApplication; cookie:guint);

  { Zeile entfernt  }
  function gtk_application_get_window_by_id(application:PGtkApplication; id:guint):^GtkWindow;

  { Zeile entfernt  }
  function gtk_application_get_active_window(application:PGtkApplication):^GtkWindow;

  { Zeile entfernt  }
  function gtk_application_list_action_descriptions(application:PGtkApplication):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_application_get_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_application_get_actions_for_accel(application:PGtkApplication; accel:Pchar):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before declarator ignored *)
  procedure gtk_application_set_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar; accels:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_application_get_menu_by_id(application:PGtkApplication; id:Pchar):^GMenu;

  { Zeile entfernt  }
  { Zeile entfernt  }
{$endif}
  { __GTK_APPLICATION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_APPLICATION : longint; { return type might be wrong }
    begin
      GTK_TYPE_APPLICATION:=gtk_application_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION(obj : longint) : longint;
  begin
    GTK_APPLICATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APPLICATION,GtkApplication);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_CLASS(klass : longint) : longint;
  begin
    GTK_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_APPLICATION,GtkApplicationClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION(obj : longint) : longint;
  begin
    GTK_IS_APPLICATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APPLICATION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APPLICATION_CLASS(klass : longint) : longint;
  begin
    GTK_IS_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_APPLICATION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APPLICATION_GET_CLASS(obj : longint) : longint;
  begin
    GTK_APPLICATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_APPLICATION,GtkApplicationClass);
  end;

  function gtk_application_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_application_new(application_id:Pchar; flags:GApplicationFlags):PGtkApplication;
  begin
    { You must implement this function }
  end;
  procedure gtk_application_add_window(application:PGtkApplication; window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  procedure gtk_application_remove_window(application:PGtkApplication; window:PGtkWindow);
  begin
    { You must implement this function }
  end;
  function gtk_application_get_windows(application:PGtkApplication):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_application_get_menubar(application:PGtkApplication):PGMenuModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_application_set_menubar(application:PGtkApplication; menubar:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_application_inhibit(application:PGtkApplication; window:PGtkWindow; flags:GtkApplicationInhibitFlags; reason:Pchar):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_application_uninhibit(application:PGtkApplication; cookie:guint);
  begin
    { You must implement this function }
  end;
  function gtk_application_get_window_by_id(application:PGtkApplication; id:guint):PGtkWindow;
  begin
    { You must implement this function }
  end;
  function gtk_application_get_active_window(application:PGtkApplication):PGtkWindow;
  begin
    { You must implement this function }
  end;
  function gtk_application_list_action_descriptions(application:PGtkApplication):PPchar;
  begin
    { You must implement this function }
  end;
  function gtk_application_get_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar):PPchar;
  begin
    { You must implement this function }
  end;
  function gtk_application_get_actions_for_accel(application:PGtkApplication; accel:Pchar):PPchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_application_set_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar; accels:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_application_get_menu_by_id(application:PGtkApplication; id:Pchar):PGMenu;
  begin
    { You must implement this function }
  end;

