/*
 * Copyright © 2020 Matthias Clasen
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
 */

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkwidget.h>




#define GTK_TYPE_DRAG_ICON (gtk_drag_icon_get_type ())


//G_DECLARE_FINAL_TYPE (GtkDragIcon, gtk_drag_icon, GTK, DRAG_ICON, GtkWidget)


GtkWidget *     gtk_drag_icon_get_for_drag                      (GdkDrag                *drag);


void            gtk_drag_icon_set_child                         (GtkDragIcon            *self,
                                                                 GtkWidget              *child);

GtkWidget *     gtk_drag_icon_get_child                         (GtkDragIcon            *self);


void            gtk_drag_icon_set_from_paintable (GdkDrag      *drag,
                                                  GdkPaintable *paintable,
                                                  int           hot_x,
                                                  int           hot_y);


GtkWidget *     gtk_drag_icon_create_widget_for_value           (const GValue           *value);




