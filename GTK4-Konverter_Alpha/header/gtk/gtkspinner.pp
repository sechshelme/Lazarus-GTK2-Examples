
unit gtkspinner;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkspinner.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkspinner.h
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
PGtkSpinner  = ^GtkSpinner;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SPINNER_H__}
{$define __GTK_SPINNER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SPINNER : longint; { return type might be wrong }

function GTK_SPINNER(obj : longint) : longint;

function GTK_IS_SPINNER(obj : longint) : longint;

type


function gtk_spinner_get_type:TGType;cdecl;external;

function gtk_spinner_new:PGtkWidget;cdecl;external;

procedure gtk_spinner_start(spinner:PGtkSpinner);cdecl;external;

procedure gtk_spinner_stop(spinner:PGtkSpinner);cdecl;external;

procedure gtk_spinner_set_spinning(spinner:PGtkSpinner; spinning:Tgboolean);cdecl;external;

function gtk_spinner_get_spinning(spinner:PGtkSpinner):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SPINNER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SPINNER:=gtk_spinner_get_type;
  end;

function GTK_SPINNER(obj : longint) : longint;
begin
  GTK_SPINNER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SPINNER,GtkSpinner);
end;

function GTK_IS_SPINNER(obj : longint) : longint;
begin
  GTK_IS_SPINNER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SPINNER);
end;


end.
