
unit gtkcolorchooserdialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorchooserdialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorchooserdialog.h
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
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COLOR_CHOOSER_DIALOG_H__}
{$define __GTK_COLOR_CHOOSER_DIALOG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkdialog.h>}


function GTK_TYPE_COLOR_CHOOSER_DIALOG : longint; { return type might be wrong }

function GTK_COLOR_CHOOSER_DIALOG(obj : longint) : longint;

function GTK_IS_COLOR_CHOOSER_DIALOG(obj : longint) : longint;

type


function gtk_color_chooser_dialog_get_type:TGType;cdecl;external;

function gtk_color_chooser_dialog_new(title:Pchar; parent:PGtkWindow):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_COLOR_CHOOSER_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_CHOOSER_DIALOG:=gtk_color_chooser_dialog_get_type;
  end;

function GTK_COLOR_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_COLOR_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_CHOOSER_DIALOG,GtkColorChooserDialog);
end;

function GTK_IS_COLOR_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_IS_COLOR_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_CHOOSER_DIALOG);
end;


end.
