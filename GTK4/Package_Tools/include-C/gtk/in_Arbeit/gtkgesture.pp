
unit gtkgesture;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkgesture.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkgesture.h
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
Pdouble  = ^double;
PGdkDevice  = ^GdkDevice;
PGdkEvent  = ^GdkEvent;
PGdkEventSequence  = ^GdkEventSequence;
PGdkRectangle  = ^GdkRectangle;
PGList  = ^GList;
PGtkGesture  = ^GtkGesture;
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
{$include <gtk/gtkeventcontroller.h>}
{$include <gtk/gtkenums.h>}

{ was #define dname def_expr }
function GTK_TYPE_GESTURE : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_CLASS(k : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_CLASS(k : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_GET_CLASS(o : longint) : longint;

type

function gtk_gesture_get_type:TGType;cdecl;external;
function gtk_gesture_get_device(gesture:PGtkGesture):PGdkDevice;cdecl;external;
function gtk_gesture_set_state(gesture:PGtkGesture; state:TGtkEventSequenceState):Tgboolean;cdecl;external;
function gtk_gesture_get_sequence_state(gesture:PGtkGesture; sequence:PGdkEventSequence):TGtkEventSequenceState;cdecl;external;
function gtk_gesture_set_sequence_state(gesture:PGtkGesture; sequence:PGdkEventSequence; state:TGtkEventSequenceState):Tgboolean;cdecl;external;
function gtk_gesture_get_sequences(gesture:PGtkGesture):PGList;cdecl;external;
function gtk_gesture_get_last_updated_sequence(gesture:PGtkGesture):PGdkEventSequence;cdecl;external;
function gtk_gesture_handles_sequence(gesture:PGtkGesture; sequence:PGdkEventSequence):Tgboolean;cdecl;external;
function gtk_gesture_get_last_event(gesture:PGtkGesture; sequence:PGdkEventSequence):PGdkEvent;cdecl;external;
function gtk_gesture_get_point(gesture:PGtkGesture; sequence:PGdkEventSequence; x:Pdouble; y:Pdouble):Tgboolean;cdecl;external;
function gtk_gesture_get_bounding_box(gesture:PGtkGesture; rect:PGdkRectangle):Tgboolean;cdecl;external;
function gtk_gesture_get_bounding_box_center(gesture:PGtkGesture; x:Pdouble; y:Pdouble):Tgboolean;cdecl;external;
function gtk_gesture_is_active(gesture:PGtkGesture):Tgboolean;cdecl;external;
function gtk_gesture_is_recognized(gesture:PGtkGesture):Tgboolean;cdecl;external;
procedure gtk_gesture_group(group_gesture:PGtkGesture; gesture:PGtkGesture);cdecl;external;
procedure gtk_gesture_ungroup(gesture:PGtkGesture);cdecl;external;
function gtk_gesture_get_group(gesture:PGtkGesture):PGList;cdecl;external;
function gtk_gesture_is_grouped_with(gesture:PGtkGesture; other:PGtkGesture):Tgboolean;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_GESTURE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE:=gtk_gesture_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE(o : longint) : longint;
begin
  GTK_GESTURE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE,GtkGesture);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE,GtkGestureClass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE(o : longint) : longint;
begin
  GTK_IS_GESTURE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_GESTURE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_GESTURE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE,GtkGestureClass);
end;


end.
