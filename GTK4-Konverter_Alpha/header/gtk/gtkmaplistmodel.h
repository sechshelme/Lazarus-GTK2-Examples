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

#ifndef __GTK_MAP_LIST_MODEL_H__
#define __GTK_MAP_LIST_MODEL_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkwidget.h>


/* Zeile entfernt */

#define GTK_TYPE_MAP_LIST_MODEL (gtk_map_list_model_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/**
 * GtkMapListModelMapFunc:
 * @item: (type GObject) (transfer full): The item to map
 * @user_data: user data
 *
 * User function that is called to map an @item of the original model to
 * an item expected by the map model.
 *
 * The returned items must conform to the item type of the model they are
 * used with.
 *
 * Returns: (type GObject) (transfer full): The item to map to
 */
typedef gpointer (* GtkMapListModelMapFunc) (gpointer item, gpointer user_data);

/* Zeile entfernt */
GtkMapListModel *       gtk_map_list_model_new                  (GListModel             *model,
                                                                 GtkMapListModelMapFunc  map_func,
                                                                 gpointer                user_data,
                                                                 GDestroyNotify          user_destroy);

/* Zeile entfernt */
void                    gtk_map_list_model_set_map_func         (GtkMapListModel        *self,
                                                                 GtkMapListModelMapFunc  map_func,
                                                                 gpointer                user_data,
                                                                 GDestroyNotify          user_destroy);
/* Zeile entfernt */
void                    gtk_map_list_model_set_model            (GtkMapListModel        *self,
                                                                 GListModel             *model);
/* Zeile entfernt */
GListModel *            gtk_map_list_model_get_model            (GtkMapListModel        *self);
/* Zeile entfernt */
gboolean                gtk_map_list_model_has_map              (GtkMapListModel        *self);

/* Zeile entfernt */

#endif /* __GTK_MAP_LIST_MODEL_H__ */
