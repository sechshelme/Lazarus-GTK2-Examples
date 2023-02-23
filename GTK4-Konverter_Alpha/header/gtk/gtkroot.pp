
unit gtkroot;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkroot.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkroot.h
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
PGdkDisplay  = ^GdkDisplay;
PGtkRoot  = ^GtkRoot;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ROOT_H__}
{$define __GTK_ROOT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_ROOT : longint; { return type might be wrong }




function gtk_root_get_display(self:PGtkRoot):PGdkDisplay;cdecl;external;

procedure gtk_root_set_focus(self:PGtkRoot; focus:PGtkWidget);cdecl;external;

function gtk_root_get_focus(self:PGtkRoot):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ROOT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ROOT:=gtk_root_get_type;
  end;


end.
