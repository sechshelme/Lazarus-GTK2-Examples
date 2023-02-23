
unit gtkgesturepan;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturepan.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturepan.h
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
PGtkGesturePan  = ^GtkGesturePan;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GESTURE_PAN_H__}
{$define __GTK_GESTURE_PAN_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtkgesturedrag.h>}


function GTK_TYPE_GESTURE_PAN : longint; { return type might be wrong }

function GTK_GESTURE_PAN(o : longint) : longint;

function GTK_GESTURE_PAN_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_PAN(o : longint) : longint;

function GTK_IS_GESTURE_PAN_CLASS(k : longint) : longint;

function GTK_GESTURE_PAN_GET_CLASS(o : longint) : longint;

type


function gtk_gesture_pan_get_type:TGType;cdecl;external;

function gtk_gesture_pan_new(orientation:TGtkOrientation):PGtkGesture;cdecl;external;

function gtk_gesture_pan_get_orientation(gesture:PGtkGesturePan):TGtkOrientation;cdecl;external;

procedure gtk_gesture_pan_set_orientation(gesture:PGtkGesturePan; orientation:TGtkOrientation);cdecl;external;

{$endif}


implementation

function GTK_TYPE_GESTURE_PAN : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_PAN:=gtk_gesture_pan_get_type;
  end;

function GTK_GESTURE_PAN(o : longint) : longint;
begin
  GTK_GESTURE_PAN:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_PAN,GtkGesturePan);
end;

function GTK_GESTURE_PAN_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_PAN_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_PAN,GtkGesturePanClass);
end;

function GTK_IS_GESTURE_PAN(o : longint) : longint;
begin
  GTK_IS_GESTURE_PAN:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_PAN);
end;

function GTK_IS_GESTURE_PAN_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_PAN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_PAN);
end;

function GTK_GESTURE_PAN_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_PAN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_PAN,GtkGesturePanClass);
end;


end.
