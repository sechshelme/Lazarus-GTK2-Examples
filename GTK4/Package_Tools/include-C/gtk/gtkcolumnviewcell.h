/*
 * Copyright © 2023 Benjamin Otte
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

#include <gtk/gtktypes.h>
#include <gtk/gtklistitem.h>



#define GTK_TYPE_COLUMN_VIEW_CELL (gtk_column_view_cell_get_type ())

GDK_DECLARE_INTERNAL_TYPE(GtkColumnViewCell, gtk_column_view_cell, GTK, COLUMN_VIEW_CELL, GtkListItem)


gpointer        gtk_column_view_cell_get_item                   (GtkColumnViewCell      *self);

guint           gtk_column_view_cell_get_position               (GtkColumnViewCell      *self) ;

gboolean        gtk_column_view_cell_get_selected               (GtkColumnViewCell      *self) ;

gboolean        gtk_column_view_cell_get_focusable              (GtkColumnViewCell      *self) ;

void            gtk_column_view_cell_set_focusable              (GtkColumnViewCell      *self,
                                                                 gboolean                focusable);


void            gtk_column_view_cell_set_child                  (GtkColumnViewCell      *self,
                                                                 GtkWidget              *child);

GtkWidget *     gtk_column_view_cell_get_child                  (GtkColumnViewCell      *self);



