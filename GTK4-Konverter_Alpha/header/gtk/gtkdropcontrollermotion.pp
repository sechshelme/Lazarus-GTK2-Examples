
unit gtkdropcontrollermotion;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdropcontrollermotion.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdropcontrollermotion.h
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
PGdkDrop  = ^GdkDrop;
PGtkDropControllerMotion  = ^GtkDropControllerMotion;
PGtkEventController  = ^GtkEventController;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_DROP_CONTROLLER_MOTION_H__}
{$define __GTK_DROP_CONTROLLER_MOTION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}


function GTK_TYPE_DROP_CONTROLLER_MOTION : longint; { return type might be wrong }

function GTK_DROP_CONTROLLER_MOTION(o : longint) : longint;

function GTK_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;

function GTK_IS_DROP_CONTROLLER_MOTION(o : longint) : longint;

function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;

function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;

type


function gtk_drop_controller_motion_get_type:TGType;cdecl;external;

function gtk_drop_controller_motion_new:PGtkEventController;cdecl;external;

function gtk_drop_controller_motion_contains_pointer(self:PGtkDropControllerMotion):Tgboolean;cdecl;external;

function gtk_drop_controller_motion_get_drop(self:PGtkDropControllerMotion):PGdkDrop;cdecl;external;

function gtk_drop_controller_motion_is_pointer(self:PGtkDropControllerMotion):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_DROP_CONTROLLER_MOTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_CONTROLLER_MOTION:=gtk_drop_controller_motion_get_type;
  end;

function GTK_DROP_CONTROLLER_MOTION(o : longint) : longint;
begin
  GTK_DROP_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotion);
end;

function GTK_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;
begin
  GTK_DROP_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotionClass);
end;

function GTK_IS_DROP_CONTROLLER_MOTION(o : longint) : longint;
begin
  GTK_IS_DROP_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_CONTROLLER_MOTION);
end;

function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;
begin
  GTK_IS_DROP_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_CONTROLLER_MOTION);
end;

function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;
begin
  GTK_DROP_CONTROLLER_MOTION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotionClass);
end;


end.
