
  Type
  PGtkWidget  = ^GtkWidget;
  PGtkWidgetPaintable  = ^GtkWidgetPaintable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_WIDGET_PAINTABLE_H__}
{$define __GTK_WIDGET_PAINTABLE_H__}  
{$include <gtk/gtktypes.h>}

  { was #define dname def_expr }
  function GTK_TYPE_WIDGET_PAINTABLE : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkWidgetPaintable, gtk_widget_paintable, GTK, WIDGET_PAINTABLE, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkWidgetPaintable, gtk_widget_paintable, GTK, WIDGET_PAINTABLE, GObject)
 in declarator_list *)
  function gtk_widget_paintable_get_widget(self:PGtkWidgetPaintable):^GtkWidget;

  procedure gtk_widget_paintable_set_widget(self:PGtkWidgetPaintable; widget:PGtkWidget);

{$endif}
  { __GTK_WIDGET_PAINTABLE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_WIDGET_PAINTABLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_WIDGET_PAINTABLE:=gtk_widget_paintable_get_type;
    end;

  function gtk_widget_paintable_get_widget(self:PGtkWidgetPaintable):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_paintable_set_widget(self:PGtkWidgetPaintable; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;

