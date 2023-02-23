
unit gdkpixbuf;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpixbuf.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpixbuf.h
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
Pcairo_surface_t  = ^cairo_surface_t;
PGdkPixbuf  = ^GdkPixbuf;
PGdkTexture  = ^GdkTexture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_PIXBUF_H__}
{$define __GDK_PIXBUF_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gdk-pixbuf/gdk-pixbuf.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktexture.h>}



function gdk_pixbuf_get_from_surface(surface:Pcairo_surface_t; src_x:longint; src_y:longint; width:longint; height:longint):PGdkPixbuf;cdecl;external;

function gdk_pixbuf_get_from_texture(texture:PGdkTexture):PGdkPixbuf;cdecl;external;

{$endif}


implementation


end.
