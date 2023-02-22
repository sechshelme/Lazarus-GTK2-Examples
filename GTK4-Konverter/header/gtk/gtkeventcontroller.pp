
    Type
    Pchar  = ^char;
    PGdkDevice  = ^GdkDevice;
    PGdkEvent  = ^GdkEvent;
    PGtkEventController  = ^GtkEventController;
    PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2012, One Laptop Per Child.
   * Copyright (C) 2014, Red Hat, Inc.
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
   *
   * Author(s): Carlos Garnacho <carlosg@gnome.org>
    }
{$ifndef __GTK_EVENT_CONTROLLER_H__}
{$define __GTK_EVENT_CONTROLLER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}

  type
    _GtkEventControllerClass = GtkEventControllerClass;
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_EVENT_CONTROLLER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_GET_CLASS(o : longint) : longint;  

  { Zeile entfernt  }
  function gtk_event_controller_get_type:GType;

  { Zeile entfernt  }
  function gtk_event_controller_get_widget(controller:PGtkEventController):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_event_controller_reset(controller:PGtkEventController);

  { Zeile entfernt  }
  function gtk_event_controller_get_propagation_phase(controller:PGtkEventController):GtkPropagationPhase;

  { Zeile entfernt  }
  procedure gtk_event_controller_set_propagation_phase(controller:PGtkEventController; phase:GtkPropagationPhase);

  { Zeile entfernt  }
  function gtk_event_controller_get_propagation_limit(controller:PGtkEventController):GtkPropagationLimit;

  { Zeile entfernt  }
  procedure gtk_event_controller_set_propagation_limit(controller:PGtkEventController; limit:GtkPropagationLimit);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_event_controller_get_name(controller:PGtkEventController):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_event_controller_set_name(controller:PGtkEventController; name:Pchar);

(* error 
void                gtk_event_controller_set_static_name       (GtkEventController *controller,
in declaration at line 73 *)
    { Zeile entfernt  }
    function gtk_event_controller_get_current_event(controller:PGtkEventController):^GdkEvent;

    { Zeile entfernt  }
    function gtk_event_controller_get_current_event_time(controller:PGtkEventController):guint32;

    { Zeile entfernt  }
    function gtk_event_controller_get_current_event_device(controller:PGtkEventController):^GdkDevice;

    { Zeile entfernt  }
    function gtk_event_controller_get_current_event_state(controller:PGtkEventController):GdkModifierType;

    { Zeile entfernt  }
{$endif}
    { __GTK_EVENT_CONTROLLER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_EVENT_CONTROLLER : longint; { return type might be wrong }
    begin
      GTK_TYPE_EVENT_CONTROLLER:=gtk_event_controller_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER(o : longint) : longint;
  begin
    GTK_EVENT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER,GtkEventController);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_CLASS(k : longint) : longint;
  begin
    GTK_EVENT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER,GtkEventControllerClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER(o : longint) : longint;
  begin
    GTK_IS_EVENT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER_CLASS(k : longint) : longint;
  begin
    GTK_IS_EVENT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_GET_CLASS(o : longint) : longint;
  begin
    GTK_EVENT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER,GtkEventControllerClass);
  end;

  function gtk_event_controller_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_event_controller_get_widget(controller:PGtkEventController):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_event_controller_reset(controller:PGtkEventController);
  begin
    { You must implement this function }
  end;
  function gtk_event_controller_get_propagation_phase(controller:PGtkEventController):GtkPropagationPhase;
  begin
    { You must implement this function }
  end;
  procedure gtk_event_controller_set_propagation_phase(controller:PGtkEventController; phase:GtkPropagationPhase);
  begin
    { You must implement this function }
  end;
  function gtk_event_controller_get_propagation_limit(controller:PGtkEventController):GtkPropagationLimit;
  begin
    { You must implement this function }
  end;
  procedure gtk_event_controller_set_propagation_limit(controller:PGtkEventController; limit:GtkPropagationLimit);
  begin
    { You must implement this function }
  end;
  function gtk_event_controller_get_name(controller:PGtkEventController):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_event_controller_set_name(controller:PGtkEventController; name:Pchar);
  begin
    { You must implement this function }
  end;
    function gtk_event_controller_get_current_event(controller:PGtkEventController):PGdkEvent;
    begin
      { You must implement this function }
    end;
    function gtk_event_controller_get_current_event_time(controller:PGtkEventController):guint32;
    begin
      { You must implement this function }
    end;
    function gtk_event_controller_get_current_event_device(controller:PGtkEventController):PGdkDevice;
    begin
      { You must implement this function }
    end;
    function gtk_event_controller_get_current_event_state(controller:PGtkEventController):GdkModifierType;
    begin
      { You must implement this function }
    end;

