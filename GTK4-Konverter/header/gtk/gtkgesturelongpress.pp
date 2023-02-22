
  Type
  PGtkGesture  = ^GtkGesture;
  PGtkGestureLongPress  = ^GtkGestureLongPress;
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
{$ifndef __GTK_GESTURE_LONG_PRESS_H__}
{$define __GTK_GESTURE_LONG_PRESS_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkgesturesingle.h>}

  { was #define dname def_expr }
  function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_LONG_PRESS(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_LONG_PRESS(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_LONG_PRESS_GET_CLASS(o : longint) : longint;  


  type
    _GtkGestureLongPress = GtkGestureLongPress;
    _GtkGestureLongPressClass = GtkGestureLongPressClass;
(* error 
GType        gtk_gesture_long_press_get_type   (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_gesture_long_press_new:^GtkGesture;

  procedure gtk_gesture_long_press_set_delay_factor(gesture:PGtkGestureLongPress; delay_factor:double);

  function gtk_gesture_long_press_get_delay_factor(gesture:PGtkGestureLongPress):double;

{$endif}
  { __GTK_GESTURE_LONG_PRESS_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }
    begin
      GTK_TYPE_GESTURE_LONG_PRESS:=gtk_gesture_long_press_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_LONG_PRESS(o : longint) : longint;
  begin
    GTK_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPress);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;
  begin
    GTK_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_LONG_PRESS(o : longint) : longint;
  begin
    GTK_IS_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_LONG_PRESS);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;
  begin
    GTK_IS_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_LONG_PRESS);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_LONG_PRESS_GET_CLASS(o : longint) : longint;
  begin
    GTK_GESTURE_LONG_PRESS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
  end;

  function gtk_gesture_long_press_new:PGtkGesture;
  begin
    { You must implement this function }
  end;
  procedure gtk_gesture_long_press_set_delay_factor(gesture:PGtkGestureLongPress; delay_factor:double);
  begin
    { You must implement this function }
  end;
  function gtk_gesture_long_press_get_delay_factor(gesture:PGtkGestureLongPress):double;
  begin
    { You must implement this function }
  end;

