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

#ifndef __GTK_SORT_LIST_MODEL_H__
#define __GTK_SORT_LIST_MODEL_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkwidget.h>
#include <gtk/gtksorter.h>


/* Zeile entfernt */

#define GTK_TYPE_SORT_LIST_MODEL (gtk_sort_list_model_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkSortListModel *      gtk_sort_list_model_new                 (GListModel            *model,
                                                                 GtkSorter             *sorter);
/* Zeile entfernt */
void                    gtk_sort_list_model_set_sorter          (GtkSortListModel       *self,
                                                                 GtkSorter              *sorter);
/* Zeile entfernt */
GtkSorter *             gtk_sort_list_model_get_sorter          (GtkSortListModel       *self);

/* Zeile entfernt */
void                    gtk_sort_list_model_set_model           (GtkSortListModel       *self,
                                                                 GListModel             *model);
/* Zeile entfernt */
GListModel *            gtk_sort_list_model_get_model           (GtkSortListModel       *self);

/* Zeile entfernt */
void                    gtk_sort_list_model_set_incremental     (GtkSortListModel       *self,
                                                                 gboolean                incremental);
/* Zeile entfernt */
gboolean                gtk_sort_list_model_get_incremental     (GtkSortListModel       *self);

/* Zeile entfernt */
guint                   gtk_sort_list_model_get_pending         (GtkSortListModel       *self);

/* Zeile entfernt */

#endif /* __GTK_SORT_LIST_MODEL_H__ */
