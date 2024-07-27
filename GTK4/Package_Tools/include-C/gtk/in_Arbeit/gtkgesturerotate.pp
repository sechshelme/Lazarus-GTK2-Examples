
unit gtkgesturerotate;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkgesturerotate.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkgesturerotate.h
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
PGtkGestureRotate  = ^GtkGestureRotate;
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
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkgesture.h>}

{ was #define dname def_expr }
function GTK_TYPE_GESTURE_ROTATE : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_ROTATE(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_ROTATE_CLASS(k : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_ROTATE(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_ROTATE_CLASS(k : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_ROTATE_GET_CLASS(o : longint) : longint;

type

function gtk_gesture_rotate_get_type:TGType;cdecl;external;
function gtk_gesture_rotate_new:PGtkGesture;cdecl;external;
function gtk_gesture_rotate_get_angle_delta(gesture:PGtkGestureRotate):Tdouble;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_GESTURE_ROTATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_ROTATE:=gtk_gesture_rotate_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_ROTATE(obj : longint) : longint;
begin
  GTK_GESTURE_ROTATE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_ROTATE,GtkGestureRotate);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_ROTATE_CLASS(klass : longint) : longint;
begin
  GTK_GESTURE_ROTATE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_ROTATE,GtkGestureRotateClass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_ROTATE(obj : longint) : longint;
begin
  GTK_IS_GESTURE_ROTATE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_ROTATE);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_ROTATE_CLASS(klass : longint) : longint;
begin
  GTK_IS_GESTURE_ROTATE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_ROTATE);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_ROTATE_GET_CLASS(obj : longint) : longint;
begin
  GTK_GESTURE_ROTATE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_ROTATE,GtkGestureRotateClass);
end;


end.
