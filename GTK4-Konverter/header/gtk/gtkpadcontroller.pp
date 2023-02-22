
  Type
  Pchar  = ^char;
  PGActionGroup  = ^GActionGroup;
  PGdkDevice  = ^GdkDevice;
  PGtkPadActionEntry  = ^GtkPadActionEntry;
  PGtkPadController  = ^GtkPadController;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2016, Red Hat, Inc.
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
{$ifndef __GTK_PAD_CONTROLLER_H__}
{$define __GTK_PAD_CONTROLLER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_PAD_CONTROLLER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAD_CONTROLLER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAD_CONTROLLER_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PAD_CONTROLLER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PAD_CONTROLLER_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAD_CONTROLLER_GET_CLASS(o : longint) : longint;  


  type
    _GtkPadController = GtkPadController;
    _GtkPadControllerClass = GtkPadControllerClass;
    _GtkPadActionEntry = GtkPadActionEntry;
  {*
   * GtkPadActionType:
   * @GTK_PAD_ACTION_BUTTON: Action is triggered by a pad button
   * @GTK_PAD_ACTION_RING: Action is triggered by a pad ring
   * @GTK_PAD_ACTION_STRIP: Action is triggered by a pad strip
   *
   * The type of a pad action.
    }

    GtkPadActionType = (GTK_PAD_ACTION_BUTTON,GTK_PAD_ACTION_RING,
      GTK_PAD_ACTION_STRIP);
  {*
   * GtkPadActionEntry:
   * @type: the type of pad feature that will trigger this action entry.
   * @index: the 0-indexed button/ring/strip number that will trigger this action
   *   entry.
   * @mode: the mode that will trigger this action entry, or -1 for all modes.
   * @label: Human readable description of this action entry, this string should
   *   be deemed user-visible.
   * @action_name: action name that will be activated in the `GActionGroup`.
   *
   * Struct defining a pad action entry.
    }
(* Const before type ignored *)
(* Const before type ignored *)
    _GtkPadActionEntry = record
        _type : GtkPadActionType;
        index : longint;
        mode : longint;
        _label : ^char;
        action_name : ^char;
      end;

  { Zeile entfernt  }

  function gtk_pad_controller_get_type:GType;

  { Zeile entfernt  }
  function gtk_pad_controller_new(group:PGActionGroup; pad:PGdkDevice):^GtkPadController;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_pad_controller_set_action_entries(controller:PGtkPadController; entries:PGtkPadActionEntry; n_entries:longint);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_pad_controller_set_action(controller:PGtkPadController; _type:GtkPadActionType; index:longint; mode:longint; _label:Pchar; 
              action_name:Pchar);

  { Zeile entfernt  }
{$endif}
  { __GTK_PAD_CONTROLLER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PAD_CONTROLLER : longint; { return type might be wrong }
    begin
      GTK_TYPE_PAD_CONTROLLER:=gtk_pad_controller_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAD_CONTROLLER(o : longint) : longint;
  begin
    GTK_PAD_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_PAD_CONTROLLER,GtkPadController);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAD_CONTROLLER_CLASS(k : longint) : longint;
  begin
    GTK_PAD_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_PAD_CONTROLLER,GtkPadControllerClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PAD_CONTROLLER(o : longint) : longint;
  begin
    GTK_IS_PAD_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_PAD_CONTROLLER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PAD_CONTROLLER_CLASS(k : longint) : longint;
  begin
    GTK_IS_PAD_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_PAD_CONTROLLER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAD_CONTROLLER_GET_CLASS(o : longint) : longint;
  begin
    GTK_PAD_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_PAD_CONTROLLER,GtkPadControllerClass);
  end;

  function gtk_pad_controller_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_pad_controller_new(group:PGActionGroup; pad:PGdkDevice):PGtkPadController;
  begin
    { You must implement this function }
  end;
  procedure gtk_pad_controller_set_action_entries(controller:PGtkPadController; entries:PGtkPadActionEntry; n_entries:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_pad_controller_set_action(controller:PGtkPadController; _type:GtkPadActionType; index:longint; mode:longint; _label:Pchar; 
              action_name:Pchar);
  begin
    { You must implement this function }
  end;

