
unit gtkseparator;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkseparator.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkseparator.h
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
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SEPARATOR_H__}
{$define __GTK_SEPARATOR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SEPARATOR : longint; { return type might be wrong }

function GTK_SEPARATOR(obj : longint) : longint;

function GTK_IS_SEPARATOR(obj : longint) : longint;

type


function gtk_separator_get_type:TGType;cdecl;external;

function gtk_separator_new(orientation:TGtkOrientation):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SEPARATOR : longint; { return type might be wrong }
  begin
    GTK_TYPE_SEPARATOR:=gtk_separator_get_type;
  end;

function GTK_SEPARATOR(obj : longint) : longint;
begin
  GTK_SEPARATOR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEPARATOR,GtkSeparator);
end;

function GTK_IS_SEPARATOR(obj : longint) : longint;
begin
  GTK_IS_SEPARATOR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEPARATOR);
end;


end.
