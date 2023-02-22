
  Type
  PGtkEventController  = ^GtkEventController;
  PGtkEventControllerMotion  = ^GtkEventControllerMotion;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2017, Red Hat, Inc.
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
   * Author(s): Matthias Clasen <mclasen@redhat.com>
    }
{$ifndef __GTK_EVENT_CONTROLLER_MOTION_H__}
{$define __GTK_EVENT_CONTROLLER_MOTION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}

  { was #define dname def_expr }
  function GTK_TYPE_EVENT_CONTROLLER_MOTION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_MOTION(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER_MOTION(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;  


  type
    _GtkEventControllerMotion = GtkEventControllerMotion;
    _GtkEventControllerMotionClass = GtkEventControllerMotionClass;
(* error 
GType               gtk_event_controller_motion_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_event_controller_motion_new:^GtkEventController;

  function gtk_event_controller_motion_contains_pointer(self:PGtkEventControllerMotion):gboolean;

  function gtk_event_controller_motion_is_pointer(self:PGtkEventControllerMotion):gboolean;

{$endif}
  { __GTK_EVENT_CONTROLLER_MOTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_EVENT_CONTROLLER_MOTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_EVENT_CONTROLLER_MOTION:=gtk_event_controller_motion_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_MOTION(o : longint) : longint;
  begin
    GTK_EVENT_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_MOTION,GtkEventControllerMotion);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;
  begin
    GTK_EVENT_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_MOTION,GtkEventControllerMotionClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER_MOTION(o : longint) : longint;
  begin
    GTK_IS_EVENT_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_MOTION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;
  begin
    GTK_IS_EVENT_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_MOTION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EVENT_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;
  begin
    GTK_EVENT_CONTROLLER_MOTION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_MOTION,GtkEventControllerMotionClass);
  end;

  function gtk_event_controller_motion_new:PGtkEventController;
  begin
    { You must implement this function }
  end;
  function gtk_event_controller_motion_contains_pointer(self:PGtkEventControllerMotion):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_event_controller_motion_is_pointer(self:PGtkEventControllerMotion):gboolean;
  begin
    { You must implement this function }
  end;

