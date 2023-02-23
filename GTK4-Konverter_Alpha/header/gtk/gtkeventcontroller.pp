
unit gtkeventcontroller;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontroller.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontroller.h
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
Pchar  = ^char;
PGdkDevice  = ^GdkDevice;
PGdkEvent  = ^GdkEvent;
PGtkEventController  = ^GtkEventController;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EVENT_CONTROLLER_H__}
{$define __GTK_EVENT_CONTROLLER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
type
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}


function GTK_TYPE_EVENT_CONTROLLER : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER(o : longint) : longint;

function GTK_EVENT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_GET_CLASS(o : longint) : longint;


function gtk_event_controller_get_type:TGType;cdecl;external;

function gtk_event_controller_get_widget(controller:PGtkEventController):PGtkWidget;cdecl;external;

procedure gtk_event_controller_reset(controller:PGtkEventController);cdecl;external;

function gtk_event_controller_get_propagation_phase(controller:PGtkEventController):TGtkPropagationPhase;cdecl;external;

procedure gtk_event_controller_set_propagation_phase(controller:PGtkEventController; phase:TGtkPropagationPhase);cdecl;external;

function gtk_event_controller_get_propagation_limit(controller:PGtkEventController):TGtkPropagationLimit;cdecl;external;

procedure gtk_event_controller_set_propagation_limit(controller:PGtkEventController; limit:TGtkPropagationLimit);cdecl;external;

function gtk_event_controller_get_name(controller:PGtkEventController):Pchar;cdecl;external;

procedure gtk_event_controller_set_name(controller:PGtkEventController; name:Pchar);cdecl;external;

function gtk_event_controller_get_current_event(controller:PGtkEventController):PGdkEvent;cdecl;external;

function gtk_event_controller_get_current_event_time(controller:PGtkEventController):Tguint32;cdecl;external;

function gtk_event_controller_get_current_event_device(controller:PGtkEventController):PGdkDevice;cdecl;external;

function gtk_event_controller_get_current_event_state(controller:PGtkEventController):TGdkModifierType;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EVENT_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER:=gtk_event_controller_get_type;
  end;

function GTK_EVENT_CONTROLLER(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER,GtkEventController);
end;

function GTK_EVENT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER,GtkEventControllerClass);
end;

function GTK_IS_EVENT_CONTROLLER(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER);
end;

function GTK_IS_EVENT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER);
end;

function GTK_EVENT_CONTROLLER_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER,GtkEventControllerClass);
end;


end.
