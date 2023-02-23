/*
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
 */

#ifndef __GTK_FLATTEN_LIST_MODEL_H__
#define __GTK_FLATTEN_LIST_MODEL_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gdk/gdk.h>


/* Zeile entfernt */

#define GTK_TYPE_FLATTEN_LIST_MODEL (gtk_flatten_list_model_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkFlattenListModel *    gtk_flatten_list_model_new             (GListModel             *model);

/* Zeile entfernt */
void                    gtk_flatten_list_model_set_model        (GtkFlattenListModel    *self,
                                                                 GListModel             *model);
/* Zeile entfernt */
GListModel *            gtk_flatten_list_model_get_model        (GtkFlattenListModel    *self);

/* Zeile entfernt */
GListModel *            gtk_flatten_list_model_get_model_for_item (GtkFlattenListModel    *self,
                                                                   guint                   position);

/* Zeile entfernt */

#endif /* __GTK_FLATTEN_LIST_MODEL_H__ */
