
unit gtkeventcontrollerlegacy;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontrollerlegacy.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeventcontrollerlegacy.h
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
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EVENT_CONTROLLER_LEGACY_H__}
{$define __GTK_EVENT_CONTROLLER_LEGACY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkeventcontroller.h>}


function GTK_TYPE_EVENT_CONTROLLER_LEGACY : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_LEGACY(o : longint) : longint;

function GTK_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_LEGACY(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS(o : longint) : longint;

type


function gtk_event_controller_legacy_get_type:TGType;cdecl;external;

function gtk_event_controller_legacy_new:PGtkEventController;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EVENT_CONTROLLER_LEGACY : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_LEGACY:=gtk_event_controller_legacy_get_type;
  end;

function GTK_EVENT_CONTROLLER_LEGACY(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_LEGACY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_LEGACY,GtkEventControllerLegacy);
end;

function GTK_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_LEGACY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_LEGACY,GtkEventControllerLegacyClass);
end;

function GTK_IS_EVENT_CONTROLLER_LEGACY(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_LEGACY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_LEGACY);
end;

function GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_LEGACY);
end;

function GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_LEGACY,GtkEventControllerLegacyClass);
end;


end.
