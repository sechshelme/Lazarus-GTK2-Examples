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

#ifndef __GTK_SLICE_LIST_MODEL_H__
#define __GTK_SLICE_LIST_MODEL_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkwidget.h>


/* Zeile entfernt */

#define GTK_TYPE_SLICE_LIST_MODEL (gtk_slice_list_model_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkSliceListModel *     gtk_slice_list_model_new                (GListModel             *model,
                                                                 guint                   offset,
                                                                 guint                   size);

/* Zeile entfernt */
void                    gtk_slice_list_model_set_model          (GtkSliceListModel      *self,
                                                                 GListModel             *model);
/* Zeile entfernt */
GListModel *            gtk_slice_list_model_get_model          (GtkSliceListModel      *self);
/* Zeile entfernt */
void                    gtk_slice_list_model_set_offset         (GtkSliceListModel      *self,
                                                                 guint                   offset);
/* Zeile entfernt */
guint                   gtk_slice_list_model_get_offset         (GtkSliceListModel      *self);
/* Zeile entfernt */
void                    gtk_slice_list_model_set_size           (GtkSliceListModel      *self,
                                                                 guint                   size);
/* Zeile entfernt */
guint                   gtk_slice_list_model_get_size           (GtkSliceListModel      *self);

/* Zeile entfernt */

#endif /* __GTK_SLICE_LIST_MODEL_H__ */
