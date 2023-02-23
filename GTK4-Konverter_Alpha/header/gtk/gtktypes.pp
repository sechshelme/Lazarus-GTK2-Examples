
unit gtktypes;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktypes.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktypes.h
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
PGtkSnapshot  = ^GtkSnapshot;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TYPES_H__}
{$define __GTK_TYPES_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}

type

  PGtkSnapshot = ^TGtkSnapshot;
  TGtkSnapshot = TGdkSnapshot;


function GTK_INVALID_LIST_POSITION : Tguint;  


{$endif}


implementation

function GTK_INVALID_LIST_POSITION : Tguint;
  begin
    GTK_INVALID_LIST_POSITION:=Tguint($ffffffff);
  end;


end.
