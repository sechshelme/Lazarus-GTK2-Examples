
unit gtkgesturelongpress;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkgesturelongpress.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkgesturelongpress.h
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
(** unsupported pragma#pragma once*)
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

function gtk_gesture_long_press_get_type:TGType;cdecl;external;
function gtk_gesture_long_press_new:PGtkGesture;cdecl;external;
procedure gtk_gesture_long_press_set_delay_factor(gesture:PGtkGestureLongPress; delay_factor:Tdouble);cdecl;external;
function gtk_gesture_long_press_get_delay_factor(gesture:PGtkGestureLongPress):Tdouble;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_LONG_PRESS:=gtk_gesture_long_press_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_LONG_PRESS(obj : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPress);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_LONG_PRESS_CLASS(klass : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_LONG_PRESS(obj : longint) : longint;
begin
  GTK_IS_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_LONG_PRESS);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_LONG_PRESS_CLASS(klass : longint) : longint;
begin
  GTK_IS_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_LONG_PRESS);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_LONG_PRESS_GET_CLASS(obj : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
end;


end.
