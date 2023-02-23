
unit gtkmessagedialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmessagedialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmessagedialog.h
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
PGtkButtonsType  = ^GtkButtonsType;
PGtkMessageDialog  = ^GtkMessageDialog;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_MESSAGE_DIALOG_H__}
{$define __GTK_MESSAGE_DIALOG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkdialog.h>}
{$include <gtk/gtkenums.h>}


function GTK_TYPE_MESSAGE_DIALOG : longint; { return type might be wrong }

function GTK_MESSAGE_DIALOG(obj : longint) : longint;

function GTK_IS_MESSAGE_DIALOG(obj : longint) : longint;

type
  PGtkMessageDialog = ^TGtkMessageDialog;
  TGtkMessageDialog = record
      parent_instance : TGtkDialog;
    end;



  PGtkButtonsType = ^TGtkButtonsType;
  TGtkButtonsType = (GTK_BUTTONS_NONE,GTK_BUTTONS_OK,GTK_BUTTONS_CLOSE,
    GTK_BUTTONS_CANCEL,GTK_BUTTONS_YES_NO,GTK_BUTTONS_OK_CANCEL
    );


function gtk_message_dialog_get_type:TGType;cdecl;external;

(* error 
                                        ...) G_GNUC_PRINTF (5, 6);
(* error 
                                        ...) G_GNUC_PRINTF (5, 6);
 in declarator_list *)
 in declarator_list *)

(* error 
                                                 ...) G_GNUC_PRINTF (5, 6);
(* error 
                                                 ...) G_GNUC_PRINTF (5, 6);
 in declarator_list *)
 in declarator_list *)

procedure gtk_message_dialog_set_markup(message_dialog:PGtkMessageDialog; str:Pchar);cdecl;external;

(* error 
                                                     ...) G_GNUC_PRINTF (2, 3);
(* error 
                                                     ...) G_GNUC_PRINTF (2, 3);
 in declarator_list *)
 in declarator_list *)

(* error 
                                                       ...) G_GNUC_PRINTF (2, 3);
(* error 
                                                       ...) G_GNUC_PRINTF (2, 3);
 in declarator_list *)
 in declarator_list *)

function gtk_message_dialog_get_message_area(message_dialog:PGtkMessageDialog):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_MESSAGE_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_MESSAGE_DIALOG:=gtk_message_dialog_get_type;
  end;

function GTK_MESSAGE_DIALOG(obj : longint) : longint;
begin
  GTK_MESSAGE_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_MESSAGE_DIALOG,GtkMessageDialog);
end;

function GTK_IS_MESSAGE_DIALOG(obj : longint) : longint;
begin
  GTK_IS_MESSAGE_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_MESSAGE_DIALOG);
end;


end.
