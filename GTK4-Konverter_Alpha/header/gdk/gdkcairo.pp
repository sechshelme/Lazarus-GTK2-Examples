
unit gdkcairo;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcairo.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcairo.h
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
Pcairo_surface_t  = ^cairo_surface_t;
Pcairo_t  = ^cairo_t;
PGdkPixbuf  = ^GdkPixbuf;
PGdkRectangle  = ^GdkRectangle;
PGdkRGBA  = ^GdkRGBA;
PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_CAIRO_H__}
{$define __GDK_CAIRO_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdkrgba.h>}
{$include <gdk/gdkpixbuf.h>}
{$include <pango/pangocairo.h>}



procedure gdk_cairo_set_source_rgba(cr:Pcairo_t; rgba:PGdkRGBA);cdecl;external;

procedure gdk_cairo_set_source_pixbuf(cr:Pcairo_t; pixbuf:PGdkPixbuf; pixbuf_x:Tdouble; pixbuf_y:Tdouble);cdecl;external;

procedure gdk_cairo_rectangle(cr:Pcairo_t; rectangle:PGdkRectangle);cdecl;external;

procedure gdk_cairo_region(cr:Pcairo_t; region:Pcairo_region_t);cdecl;external;

function gdk_cairo_region_create_from_surface(surface:Pcairo_surface_t):Pcairo_region_t;cdecl;external;

procedure gdk_cairo_draw_from_gl(cr:Pcairo_t; surface:PGdkSurface; source:longint; source_type:longint; buffer_scale:longint; 
            x:longint; y:longint; width:longint; height:longint);cdecl;external;

{$endif}


implementation


end.
