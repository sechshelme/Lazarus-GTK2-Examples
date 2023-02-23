
unit gtkeventcontrollerscroll;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontrollerscroll.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontrollerscroll.h
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
PGtkEventControllerScroll  = ^GtkEventControllerScroll;
PGtkEventControllerScrollFlags  = ^GtkEventControllerScrollFlags;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EVENT_CONTROLLER_SCROLL_H__}
{$define __GTK_EVENT_CONTROLLER_SCROLL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}


function GTK_TYPE_EVENT_CONTROLLER_SCROLL : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_SCROLL(o : longint) : longint;

function GTK_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_SCROLL(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_SCROLL_GET_CLASS(o : longint) : longint;

type


  PGtkEventControllerScrollFlags = ^TGtkEventControllerScrollFlags;
  TGtkEventControllerScrollFlags = (GTK_EVENT_CONTROLLER_SCROLL_NONE := 0,
    GTK_EVENT_CONTROLLER_SCROLL_VERTICAL := 1 shl 0,
    GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL := 1 shl 1,
    GTK_EVENT_CONTROLLER_SCROLL_DISCRETE := 1 shl 2,
    GTK_EVENT_CONTROLLER_SCROLL_KINETIC := 1 shl 3,
    GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES := GTK_EVENT_CONTROLLER_SCROLL_VERTICAL or GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL
    );


function gtk_event_controller_scroll_get_type:TGType;cdecl;external;

function gtk_event_controller_scroll_new(flags:TGtkEventControllerScrollFlags):PGtkEventController;cdecl;external;

procedure gtk_event_controller_scroll_set_flags(scroll:PGtkEventControllerScroll; flags:TGtkEventControllerScrollFlags);cdecl;external;

function gtk_event_controller_scroll_get_flags(scroll:PGtkEventControllerScroll):TGtkEventControllerScrollFlags;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EVENT_CONTROLLER_SCROLL : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_SCROLL:=gtk_event_controller_scroll_get_type;
  end;

function GTK_EVENT_CONTROLLER_SCROLL(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_SCROLL:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_SCROLL,GtkEventControllerScroll);
end;

function GTK_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_SCROLL_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_SCROLL,GtkEventControllerScrollClass);
end;

function GTK_IS_EVENT_CONTROLLER_SCROLL(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_SCROLL:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_SCROLL);
end;

function GTK_IS_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_SCROLL_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_SCROLL);
end;

function GTK_EVENT_CONTROLLER_SCROLL_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_SCROLL_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_SCROLL,GtkEventControllerScrollClass);
end;


end.
