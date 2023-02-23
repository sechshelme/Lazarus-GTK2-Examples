
unit gtkgesturesingle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturesingle.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgesturesingle.h
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
PGdkEventSequence  = ^GdkEventSequence;
PGtkGestureSingle  = ^GtkGestureSingle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GESTURE_SINGLE_H__}
{$define __GTK_GESTURE_SINGLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkgesture.h>}


function GTK_TYPE_GESTURE_SINGLE : longint; { return type might be wrong }

function GTK_GESTURE_SINGLE(o : longint) : longint;

function GTK_GESTURE_SINGLE_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_SINGLE(o : longint) : longint;

function GTK_IS_GESTURE_SINGLE_CLASS(k : longint) : longint;

function GTK_GESTURE_SINGLE_GET_CLASS(o : longint) : longint;

type


function gtk_gesture_single_get_type:TGType;cdecl;external;

function gtk_gesture_single_get_touch_only(gesture:PGtkGestureSingle):Tgboolean;cdecl;external;

procedure gtk_gesture_single_set_touch_only(gesture:PGtkGestureSingle; touch_only:Tgboolean);cdecl;external;

function gtk_gesture_single_get_exclusive(gesture:PGtkGestureSingle):Tgboolean;cdecl;external;

procedure gtk_gesture_single_set_exclusive(gesture:PGtkGestureSingle; exclusive:Tgboolean);cdecl;external;

function gtk_gesture_single_get_button(gesture:PGtkGestureSingle):Tguint;cdecl;external;

procedure gtk_gesture_single_set_button(gesture:PGtkGestureSingle; button:Tguint);cdecl;external;

function gtk_gesture_single_get_current_button(gesture:PGtkGestureSingle):Tguint;cdecl;external;

function gtk_gesture_single_get_current_sequence(gesture:PGtkGestureSingle):PGdkEventSequence;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GESTURE_SINGLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_SINGLE:=gtk_gesture_single_get_type;
  end;

function GTK_GESTURE_SINGLE(o : longint) : longint;
begin
  GTK_GESTURE_SINGLE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_SINGLE,GtkGestureSingle);
end;

function GTK_GESTURE_SINGLE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_SINGLE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_SINGLE,GtkGestureSingleClass);
end;

function GTK_IS_GESTURE_SINGLE(o : longint) : longint;
begin
  GTK_IS_GESTURE_SINGLE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_SINGLE);
end;

function GTK_IS_GESTURE_SINGLE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_SINGLE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_SINGLE);
end;

function GTK_GESTURE_SINGLE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_SINGLE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_SINGLE,GtkGestureSingleClass);
end;


end.
