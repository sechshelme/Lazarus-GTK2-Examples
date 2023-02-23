
unit gtkgesturestylus;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturestylus.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturestylus.h
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
PGdkAxisUse  = ^GdkAxisUse;
PGdkDeviceTool  = ^GdkDeviceTool;
PGdkTimeCoord  = ^GdkTimeCoord;
PGtkGesture  = ^GtkGesture;
PGtkGestureStylus  = ^GtkGestureStylus;
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GESTURE_STYLUS_H__}
{$define __GTK_GESTURE_STYLUS_H__}
{$include <gtk/gtkgesture.h>}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}


function GTK_TYPE_GESTURE_STYLUS : longint; { return type might be wrong }

function GTK_GESTURE_STYLUS(o : longint) : longint;

function GTK_GESTURE_STYLUS_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_STYLUS(o : longint) : longint;

function GTK_IS_GESTURE_STYLUS_CLASS(k : longint) : longint;

function GTK_GESTURE_STYLUS_GET_CLASS(o : longint) : longint;

type


function gtk_gesture_stylus_get_type:TGType;cdecl;external;

function gtk_gesture_stylus_new:PGtkGesture;cdecl;external;

function gtk_gesture_stylus_get_axis(gesture:PGtkGestureStylus; axis:TGdkAxisUse; value:Pdouble):Tgboolean;cdecl;external;

function gtk_gesture_stylus_get_axes(gesture:PGtkGestureStylus; axes:PGdkAxisUse; values:PPdouble):Tgboolean;cdecl;external;

function gtk_gesture_stylus_get_backlog(gesture:PGtkGestureStylus; backlog:PPGdkTimeCoord; n_elems:Pguint):Tgboolean;cdecl;external;

function gtk_gesture_stylus_get_device_tool(gesture:PGtkGestureStylus):PGdkDeviceTool;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GESTURE_STYLUS : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_STYLUS:=gtk_gesture_stylus_get_type;
  end;

function GTK_GESTURE_STYLUS(o : longint) : longint;
begin
  GTK_GESTURE_STYLUS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_STYLUS,GtkGestureStylus);
end;

function GTK_GESTURE_STYLUS_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_STYLUS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_STYLUS,GtkGestureStylusClass);
end;

function GTK_IS_GESTURE_STYLUS(o : longint) : longint;
begin
  GTK_IS_GESTURE_STYLUS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_STYLUS);
end;

function GTK_IS_GESTURE_STYLUS_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_STYLUS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_STYLUS);
end;

function GTK_GESTURE_STYLUS_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_STYLUS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_STYLUS,GtkGestureStylusClass);
end;


end.
