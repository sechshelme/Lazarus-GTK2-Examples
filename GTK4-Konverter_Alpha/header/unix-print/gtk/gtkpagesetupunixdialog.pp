
unit gtkpagesetupunixdialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/unix-print/gtk/gtkpagesetupunixdialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/unix-print/gtk/gtkpagesetupunixdialog.h
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
PGtkPageSetup  = ^GtkPageSetup;
PGtkPageSetupUnixDialog  = ^GtkPageSetupUnixDialog;
PGtkPrintSettings  = ^GtkPrintSettings;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PAGE_SETUP_UNIX_DIALOG_H__}
{$define __GTK_PAGE_SETUP_UNIX_DIALOG_H__}
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <gtk/gtk.h>}


function GTK_TYPE_PAGE_SETUP_UNIX_DIALOG : longint; { return type might be wrong }

function GTK_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;

function GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;

type


function gtk_page_setup_unix_dialog_get_type:TGType;cdecl;external;

function gtk_page_setup_unix_dialog_new(title:Pchar; parent:PGtkWindow):PGtkWidget;cdecl;external;

procedure gtk_page_setup_unix_dialog_set_page_setup(dialog:PGtkPageSetupUnixDialog; page_setup:PGtkPageSetup);cdecl;external;

function gtk_page_setup_unix_dialog_get_page_setup(dialog:PGtkPageSetupUnixDialog):PGtkPageSetup;cdecl;external;

procedure gtk_page_setup_unix_dialog_set_print_settings(dialog:PGtkPageSetupUnixDialog; print_settings:PGtkPrintSettings);cdecl;external;

function gtk_page_setup_unix_dialog_get_print_settings(dialog:PGtkPageSetupUnixDialog):PGtkPrintSettings;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PAGE_SETUP_UNIX_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAGE_SETUP_UNIX_DIALOG:=gtk_page_setup_unix_dialog_get_type;
  end;

function GTK_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;
begin
  GTK_PAGE_SETUP_UNIX_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PAGE_SETUP_UNIX_DIALOG,GtkPageSetupUnixDialog);
end;

function GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;
begin
  GTK_IS_PAGE_SETUP_UNIX_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PAGE_SETUP_UNIX_DIALOG);
end;


end.
