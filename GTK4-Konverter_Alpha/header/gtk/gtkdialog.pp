
unit gtkdialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdialog.h
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
PGtkDialog  = ^GtkDialog;
PGtkDialogClass  = ^GtkDialogClass;
PGtkDialogFlags  = ^GtkDialogFlags;
PGtkResponseType  = ^GtkResponseType;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_DIALOG_H__}
{$define __GTK_DIALOG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}


type
  PGtkDialogFlags = ^TGtkDialogFlags;
  TGtkDialogFlags = (GTK_DIALOG_MODAL := 1 shl 0,GTK_DIALOG_DESTROY_WITH_PARENT := 1 shl 1,
    GTK_DIALOG_USE_HEADER_BAR := 1 shl 2);


  PGtkResponseType = ^TGtkResponseType;
  TGtkResponseType = (GTK_RESPONSE_NONE := -(1),GTK_RESPONSE_REJECT := -(2),
    GTK_RESPONSE_ACCEPT := -(3),GTK_RESPONSE_DELETE_EVENT := -(4),
    GTK_RESPONSE_OK := -(5),GTK_RESPONSE_CANCEL := -(6),
    GTK_RESPONSE_CLOSE := -(7),GTK_RESPONSE_YES := -(8),
    GTK_RESPONSE_NO := -(9),GTK_RESPONSE_APPLY := -(10),
    GTK_RESPONSE_HELP := -(11));

function GTK_TYPE_DIALOG : longint; { return type might be wrong }

function GTK_DIALOG(obj : longint) : longint;

function GTK_DIALOG_CLASS(klass : longint) : longint;

function GTK_IS_DIALOG(obj : longint) : longint;

function GTK_IS_DIALOG_CLASS(klass : longint) : longint;

function GTK_DIALOG_GET_CLASS(obj : longint) : longint;

type
  PGtkDialog = ^TGtkDialog;
  TGtkDialog = record
      parent_instance : TGtkWindow;
    end;





  PGtkDialogClass = ^TGtkDialogClass;
  TGtkDialogClass = record
      parent_class : TGtkWindowClass;
      response : procedure (dialog:PGtkDialog; response_id:longint);cdecl;
      close : procedure (dialog:PGtkDialog);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_dialog_get_type:TGType;cdecl;external;

function gtk_dialog_new:PGtkWidget;cdecl;external;

function gtk_dialog_new_with_buttons(title:Pchar; parent:PGtkWindow; flags:TGtkDialogFlags; first_button_text:Pchar; args:array of const):PGtkWidget;cdecl;external;
function gtk_dialog_new_with_buttons(title:Pchar; parent:PGtkWindow; flags:TGtkDialogFlags; first_button_text:Pchar):PGtkWidget;cdecl;external;

procedure gtk_dialog_add_action_widget(dialog:PGtkDialog; child:PGtkWidget; response_id:longint);cdecl;external;

function gtk_dialog_add_button(dialog:PGtkDialog; button_text:Pchar; response_id:longint):PGtkWidget;cdecl;external;

procedure gtk_dialog_add_buttons(dialog:PGtkDialog; first_button_text:Pchar; args:array of const);cdecl;external;
procedure gtk_dialog_add_buttons(dialog:PGtkDialog; first_button_text:Pchar);cdecl;external;

procedure gtk_dialog_set_response_sensitive(dialog:PGtkDialog; response_id:longint; setting:Tgboolean);cdecl;external;

procedure gtk_dialog_set_default_response(dialog:PGtkDialog; response_id:longint);cdecl;external;

function gtk_dialog_get_widget_for_response(dialog:PGtkDialog; response_id:longint):PGtkWidget;cdecl;external;

function gtk_dialog_get_response_for_widget(dialog:PGtkDialog; widget:PGtkWidget):longint;cdecl;external;


procedure gtk_dialog_response(dialog:PGtkDialog; response_id:longint);cdecl;external;

function gtk_dialog_get_content_area(dialog:PGtkDialog):PGtkWidget;cdecl;external;

function gtk_dialog_get_header_bar(dialog:PGtkDialog):PGtkWidget;cdecl;external;


{$endif}


implementation

function GTK_TYPE_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_DIALOG:=gtk_dialog_get_type;
  end;

function GTK_DIALOG(obj : longint) : longint;
begin
  GTK_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_DIALOG,GtkDialog);
end;

function GTK_DIALOG_CLASS(klass : longint) : longint;
begin
  GTK_DIALOG_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_DIALOG,GtkDialogClass);
end;

function GTK_IS_DIALOG(obj : longint) : longint;
begin
  GTK_IS_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_DIALOG);
end;

function GTK_IS_DIALOG_CLASS(klass : longint) : longint;
begin
  GTK_IS_DIALOG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_DIALOG);
end;

function GTK_DIALOG_GET_CLASS(obj : longint) : longint;
begin
  GTK_DIALOG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_DIALOG,GtkDialogClass);
end;


end.
