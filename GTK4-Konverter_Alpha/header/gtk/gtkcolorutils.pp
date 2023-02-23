
unit gtkcolorutils;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorutils.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorutils.h
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
Psingle  = ^single;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_COLOR_UTILS_H__}
{$define __GTK_COLOR_UTILS_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib.h>}
{$include <gdk/gdk.h>}



procedure gtk_hsv_to_rgb(h:single; s:single; v:single; r:Psingle; g:Psingle; 
            b:Psingle);cdecl;external;

procedure gtk_rgb_to_hsv(r:single; g:single; b:single; h:Psingle; s:Psingle; 
            v:Psingle);cdecl;external;

{$endif}


implementation


end.
