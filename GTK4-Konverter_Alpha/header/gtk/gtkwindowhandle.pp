
unit gtkwindowhandle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwindowhandle.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwindowhandle.h
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
PGtkWindowHandle  = ^GtkWindowHandle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_WINDOW_HANDLE : longint; { return type might be wrong }




function gtk_window_handle_new:PGtkWidget;cdecl;external;

function gtk_window_handle_get_child(self:PGtkWindowHandle):PGtkWidget;cdecl;external;

procedure gtk_window_handle_set_child(self:PGtkWindowHandle; child:PGtkWidget);cdecl;external;


implementation

function GTK_TYPE_WINDOW_HANDLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_HANDLE:=gtk_window_handle_get_type;
  end;


end.
