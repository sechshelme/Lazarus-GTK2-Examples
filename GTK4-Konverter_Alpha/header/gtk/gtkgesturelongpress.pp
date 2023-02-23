
unit gtkgesturelongpress;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturelongpress.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturelongpress.h
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
PGtkGesture  = ^GtkGesture;
PGtkGestureLongPress  = ^GtkGestureLongPress;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GESTURE_LONG_PRESS_H__}
{$define __GTK_GESTURE_LONG_PRESS_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkgesturesingle.h>}


function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }

function GTK_GESTURE_LONG_PRESS(o : longint) : longint;

function GTK_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_LONG_PRESS(o : longint) : longint;

function GTK_IS_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;

function GTK_GESTURE_LONG_PRESS_GET_CLASS(o : longint) : longint;

type


function gtk_gesture_long_press_get_type:TGType;cdecl;external;

function gtk_gesture_long_press_new:PGtkGesture;cdecl;external;

procedure gtk_gesture_long_press_set_delay_factor(gesture:PGtkGestureLongPress; delay_factor:Tdouble);cdecl;external;

function gtk_gesture_long_press_get_delay_factor(gesture:PGtkGestureLongPress):Tdouble;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_LONG_PRESS:=gtk_gesture_long_press_get_type;
  end;

function GTK_GESTURE_LONG_PRESS(o : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPress);
end;

function GTK_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
end;

function GTK_IS_GESTURE_LONG_PRESS(o : longint) : longint;
begin
  GTK_IS_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_LONG_PRESS);
end;

function GTK_IS_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_LONG_PRESS);
end;

function GTK_GESTURE_LONG_PRESS_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
end;


end.
