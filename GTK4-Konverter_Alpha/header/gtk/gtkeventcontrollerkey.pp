
unit gtkeventcontrollerkey;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontrollerkey.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontrollerkey.h
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
PGtkEventController  = ^GtkEventController;
PGtkEventControllerKey  = ^GtkEventControllerKey;
PGtkIMContext  = ^GtkIMContext;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EVENT_CONTROLLER_KEY_H__}
{$define __GTK_EVENT_CONTROLLER_KEY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}
{$include <gtk/gtkimcontext.h>}


function GTK_TYPE_EVENT_CONTROLLER_KEY : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_KEY(o : longint) : longint;

function GTK_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_KEY(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_KEY_GET_CLASS(o : longint) : longint;

type


function gtk_event_controller_key_get_type:TGType;cdecl;external;

function gtk_event_controller_key_new:PGtkEventController;cdecl;external;

procedure gtk_event_controller_key_set_im_context(controller:PGtkEventControllerKey; im_context:PGtkIMContext);cdecl;external;

function gtk_event_controller_key_get_im_context(controller:PGtkEventControllerKey):PGtkIMContext;cdecl;external;

function gtk_event_controller_key_forward(controller:PGtkEventControllerKey; widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_event_controller_key_get_group(controller:PGtkEventControllerKey):Tguint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EVENT_CONTROLLER_KEY : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_KEY:=gtk_event_controller_key_get_type;
  end;

function GTK_EVENT_CONTROLLER_KEY(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_KEY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_KEY,GtkEventControllerKey);
end;

function GTK_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_KEY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_KEY,GtkEventControllerKeyClass);
end;

function GTK_IS_EVENT_CONTROLLER_KEY(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_KEY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_KEY);
end;

function GTK_IS_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_KEY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_KEY);
end;

function GTK_EVENT_CONTROLLER_KEY_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_KEY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_KEY,GtkEventControllerKeyClass);
end;


end.
