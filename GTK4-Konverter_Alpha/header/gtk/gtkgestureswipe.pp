
unit gtkgestureswipe;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgestureswipe.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgestureswipe.h
    -p
    -T
    -S
    -d
    -c
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
PGtkGesture  = ^GtkGesture;
PGtkGestureSwipe  = ^GtkGestureSwipe;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GESTURE_SWIPE_H__}
{$define __GTK_GESTURE_SWIPE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkgesturesingle.h>}


function GTK_TYPE_GESTURE_SWIPE : longint; { return type might be wrong }

function GTK_GESTURE_SWIPE(o : longint) : longint;

function GTK_GESTURE_SWIPE_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_SWIPE(o : longint) : longint;

function GTK_IS_GESTURE_SWIPE_CLASS(k : longint) : longint;

function GTK_GESTURE_SWIPE_GET_CLASS(o : longint) : longint;

type


function gtk_gesture_swipe_get_type:TGType;cdecl;external;

function gtk_gesture_swipe_new:PGtkGesture;cdecl;external;

function gtk_gesture_swipe_get_velocity(gesture:PGtkGestureSwipe; velocity_x:Pdouble; velocity_y:Pdouble):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GESTURE_SWIPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_SWIPE:=gtk_gesture_swipe_get_type;
  end;

function GTK_GESTURE_SWIPE(o : longint) : longint;
begin
  GTK_GESTURE_SWIPE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_SWIPE,GtkGestureSwipe);
end;

function GTK_GESTURE_SWIPE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_SWIPE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_SWIPE,GtkGestureSwipeClass);
end;

function GTK_IS_GESTURE_SWIPE(o : longint) : longint;
begin
  GTK_IS_GESTURE_SWIPE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_SWIPE);
end;

function GTK_IS_GESTURE_SWIPE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_SWIPE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_SWIPE);
end;

function GTK_GESTURE_SWIPE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_SWIPE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_SWIPE,GtkGestureSwipeClass);
end;


end.
