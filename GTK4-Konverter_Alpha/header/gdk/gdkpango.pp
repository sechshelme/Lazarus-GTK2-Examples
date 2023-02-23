
unit gdkpango;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpango.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpango.h
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
Pcairo_region_t  = ^cairo_region_t;
Plongint  = ^longint;
PPangoLayout  = ^PangoLayout;
PPangoLayoutLine  = ^PangoLayoutLine;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_PANGO_H__}
{$define __GDK_PANGO_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}




function gdk_pango_layout_line_get_clip_region(line:PPangoLayoutLine; x_origin:longint; y_origin:longint; index_ranges:Plongint; n_ranges:longint):Pcairo_region_t;cdecl;external;

function gdk_pango_layout_get_clip_region(layout:PPangoLayout; x_origin:longint; y_origin:longint; index_ranges:Plongint; n_ranges:longint):Pcairo_region_t;cdecl;external;

{$endif}


implementation


end.
