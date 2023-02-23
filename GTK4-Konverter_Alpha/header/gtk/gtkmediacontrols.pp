
unit gtkmediacontrols;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmediacontrols.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmediacontrols.h
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
PGtkMediaControls  = ^GtkMediaControls;
PGtkMediaStream  = ^GtkMediaStream;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MEDIA_CONTROLS_H__}
{$define __GTK_MEDIA_CONTROLS_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkmediastream.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_MEDIA_CONTROLS : longint; { return type might be wrong }




function gtk_media_controls_new(stream:PGtkMediaStream):PGtkWidget;cdecl;external;

function gtk_media_controls_get_media_stream(controls:PGtkMediaControls):PGtkMediaStream;cdecl;external;

procedure gtk_media_controls_set_media_stream(controls:PGtkMediaControls; stream:PGtkMediaStream);cdecl;external;

{$endif}


implementation

function GTK_TYPE_MEDIA_CONTROLS : longint; { return type might be wrong }
  begin
    GTK_TYPE_MEDIA_CONTROLS:=gtk_media_controls_get_type;
  end;


end.
