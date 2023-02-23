
unit gtksizerequest;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksizerequest.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksizerequest.h
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
PGtkRequestedSize  = ^GtkRequestedSize;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SIZE_REQUEST_H__}
{$define __GTK_SIZE_REQUEST_H__}
{$include <gtk/gtkwidget.h>}

type

  PGtkRequestedSize = ^TGtkRequestedSize;
  TGtkRequestedSize = record
      data : Tgpointer;
      minimum_size : longint;
      natural_size : longint;
    end;




function gtk_distribute_natural_allocation(extra_space:longint; n_requested_sizes:Tguint; sizes:PGtkRequestedSize):longint;cdecl;external;

{$endif}


implementation


end.
