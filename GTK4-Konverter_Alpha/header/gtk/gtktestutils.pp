
unit gtktestutils;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktestutils.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktestutils.h
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
PGType  = ^GType;
Pguint  = ^guint;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TEST_UTILS_H__}
{$define __GTK_TEST_UTILS_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkspinbutton.h>}




procedure gtk_test_init(argcp:Plongint; argvp:PPPchar; args:array of const);cdecl;external;
procedure gtk_test_init(argcp:Plongint; argvp:PPPchar);cdecl;external;

procedure gtk_test_register_all_types;cdecl;external;

function gtk_test_list_all_types(n_types:Pguint):PGType;cdecl;external;

procedure gtk_test_widget_wait_for_draw(widget:PGtkWidget);cdecl;external;

{$endif}


implementation


end.
