
  Type
  Pcairo_t  = ^cairo_t;
  PGdkTexture  = ^GdkTexture;
  PGtkStyleContext  = ^GtkStyleContext;
  PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2010 Carlos Garnacho <carlosg@gnome.org>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
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
  { Zeile entfernt  }
  { Zeile entfernt  }

  procedure gtk_render_check(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_option(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_arrow(context:PGtkStyleContext; cr:Pcairo_t; angle:double; x:double; y:double; 
              size:double);

  { Zeile entfernt  }
  procedure gtk_render_background(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_frame(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_expander(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_focus(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_layout(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; layout:PPangoLayout);

  { Zeile entfernt  }
  procedure gtk_render_line(context:PGtkStyleContext; cr:Pcairo_t; x0:double; y0:double; x1:double; 
              y1:double);

  { Zeile entfernt  }
  procedure gtk_render_handle(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_activity(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_render_icon(context:PGtkStyleContext; cr:Pcairo_t; texture:PGdkTexture; x:double; y:double);

  { Zeile entfernt  }
{$endif}
  { __GTK_RENDER_H__  }
  procedure gtk_render_check(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_option(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_arrow(context:PGtkStyleContext; cr:Pcairo_t; angle:double; x:double; y:double; 
              size:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_background(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_frame(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_expander(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_focus(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_layout(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; layout:PPangoLayout);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_line(context:PGtkStyleContext; cr:Pcairo_t; x0:double; y0:double; x1:double; 
              y1:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_handle(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_activity(context:PGtkStyleContext; cr:Pcairo_t; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_render_icon(context:PGtkStyleContext; cr:Pcairo_t; texture:PGdkTexture; x:double; y:double);
  begin
    { You must implement this function }
  end;

