
unit gtkpadcontroller;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpadcontroller.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpadcontroller.h
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
PGActionGroup  = ^GActionGroup;
PGdkDevice  = ^GdkDevice;
PGtkPadActionEntry  = ^GtkPadActionEntry;
PGtkPadActionType  = ^GtkPadActionType;
PGtkPadController  = ^GtkPadController;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PAD_CONTROLLER_H__}
{$define __GTK_PAD_CONTROLLER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkeventcontroller.h>}


function GTK_TYPE_PAD_CONTROLLER : longint; { return type might be wrong }

function GTK_PAD_CONTROLLER(o : longint) : longint;

function GTK_PAD_CONTROLLER_CLASS(k : longint) : longint;

function GTK_IS_PAD_CONTROLLER(o : longint) : longint;

function GTK_IS_PAD_CONTROLLER_CLASS(k : longint) : longint;

function GTK_PAD_CONTROLLER_GET_CLASS(o : longint) : longint;

type


  PGtkPadActionType = ^TGtkPadActionType;
  TGtkPadActionType = (GTK_PAD_ACTION_BUTTON,GTK_PAD_ACTION_RING,
    GTK_PAD_ACTION_STRIP);

  PGtkPadActionEntry = ^TGtkPadActionEntry;
  TGtkPadActionEntry = record
      _type : TGtkPadActionType;
      index : longint;
      mode : longint;
      _label : Pchar;
      action_name : Pchar;
    end;



function gtk_pad_controller_get_type:TGType;cdecl;external;

function gtk_pad_controller_new(group:PGActionGroup; pad:PGdkDevice):PGtkPadController;cdecl;external;

procedure gtk_pad_controller_set_action_entries(controller:PGtkPadController; entries:PGtkPadActionEntry; n_entries:longint);cdecl;external;

procedure gtk_pad_controller_set_action(controller:PGtkPadController; _type:TGtkPadActionType; index:longint; mode:longint; _label:Pchar; 
            action_name:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_PAD_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAD_CONTROLLER:=gtk_pad_controller_get_type;
  end;

function GTK_PAD_CONTROLLER(o : longint) : longint;
begin
  GTK_PAD_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_PAD_CONTROLLER,GtkPadController);
end;

function GTK_PAD_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_PAD_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_PAD_CONTROLLER,GtkPadControllerClass);
end;

function GTK_IS_PAD_CONTROLLER(o : longint) : longint;
begin
  GTK_IS_PAD_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_PAD_CONTROLLER);
end;

function GTK_IS_PAD_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_IS_PAD_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_PAD_CONTROLLER);
end;

function GTK_PAD_CONTROLLER_GET_CLASS(o : longint) : longint;
begin
  GTK_PAD_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_PAD_CONTROLLER,GtkPadControllerClass);
end;


end.
