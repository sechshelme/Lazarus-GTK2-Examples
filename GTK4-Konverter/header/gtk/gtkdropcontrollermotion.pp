
  Type
  PGdkDrop  = ^GdkDrop;
  PGtkDropControllerMotion  = ^GtkDropControllerMotion;
  PGtkEventController  = ^GtkEventController;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2020 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_DROP_CONTROLLER_MOTION_H__}
{$define __GTK_DROP_CONTROLLER_MOTION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_DROP_CONTROLLER_MOTION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_CONTROLLER_MOTION(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_CONTROLLER_MOTION(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;  


  type
    _GtkDropControllerMotion = GtkDropControllerMotion;
    _GtkDropControllerMotionClass = GtkDropControllerMotionClass;
  { Zeile entfernt  }

  function gtk_drop_controller_motion_get_type:GType;

  { Zeile entfernt  }
  function gtk_drop_controller_motion_new:^GtkEventController;

  { Zeile entfernt  }
  function gtk_drop_controller_motion_contains_pointer(self:PGtkDropControllerMotion):gboolean;

  { Zeile entfernt  }
  function gtk_drop_controller_motion_get_drop(self:PGtkDropControllerMotion):^GdkDrop;

  { Zeile entfernt  }
  function gtk_drop_controller_motion_is_pointer(self:PGtkDropControllerMotion):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_DROP_CONTROLLER_MOTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DROP_CONTROLLER_MOTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_DROP_CONTROLLER_MOTION:=gtk_drop_controller_motion_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_CONTROLLER_MOTION(o : longint) : longint;
  begin
    GTK_DROP_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotion);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;
  begin
    GTK_DROP_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotionClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_CONTROLLER_MOTION(o : longint) : longint;
  begin
    GTK_IS_DROP_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_CONTROLLER_MOTION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;
  begin
    GTK_IS_DROP_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_CONTROLLER_MOTION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;
  begin
    GTK_DROP_CONTROLLER_MOTION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotionClass);
  end;

  function gtk_drop_controller_motion_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_drop_controller_motion_new:PGtkEventController;
  begin
    { You must implement this function }
  end;
  function gtk_drop_controller_motion_contains_pointer(self:PGtkDropControllerMotion):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_drop_controller_motion_get_drop(self:PGtkDropControllerMotion):PGdkDrop;
  begin
    { You must implement this function }
  end;
  function gtk_drop_controller_motion_is_pointer(self:PGtkDropControllerMotion):gboolean;
  begin
    { You must implement this function }
  end;

