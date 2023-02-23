
unit gtkrender;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrender.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrender.h
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
Pcairo_t  = ^cairo_t;
PGdkTexture  = ^GdkTexture;
PGtkStyleContext  = ^GtkStyleContext;
PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_RENDER_H__}
{$define __GTK_RENDER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <pango/pango.h>}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypes.h>}



procedure gtk_render_check(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_option(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_arrow(context:PGtkStyleContext; cr:Pcairo_t; angle:Tdouble; x:Tdouble; y:Tdouble; 
            size:Tdouble);cdecl;external;

procedure gtk_render_background(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_frame(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_expander(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_focus(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_layout(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; layout:PPangoLayout);cdecl;external;

procedure gtk_render_line(context:PGtkStyleContext; cr:Pcairo_t; x0:Tdouble; y0:Tdouble; x1:Tdouble; 
            y1:Tdouble);cdecl;external;

procedure gtk_render_handle(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_activity(context:PGtkStyleContext; cr:Pcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_render_icon(context:PGtkStyleContext; cr:Pcairo_t; texture:PGdkTexture; x:Tdouble; y:Tdouble);cdecl;external;

{$endif}


implementation


end.
