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

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkwidget.h>
#include <gtk/gtksorter.h>




#define GTK_TYPE_SORT_LIST_MODEL (gtk_sort_list_model_get_type ())


//G_DECLARE_FINAL_TYPE (GtkSortListModel, gtk_sort_list_model, GTK, SORT_LIST_MODEL, GObject)


GtkSortListModel *      gtk_sort_list_model_new                 (GListModel            *model,
                                                                 GtkSorter             *sorter);

void                    gtk_sort_list_model_set_sorter          (GtkSortListModel       *self,
                                                                 GtkSorter              *sorter);

GtkSorter *             gtk_sort_list_model_get_sorter          (GtkSortListModel       *self);


void                    gtk_sort_list_model_set_section_sorter  (GtkSortListModel       *self,
                                                                 GtkSorter              *sorter);

GtkSorter *             gtk_sort_list_model_get_section_sorter  (GtkSortListModel       *self);


void                    gtk_sort_list_model_set_model           (GtkSortListModel       *self,
                                                                 GListModel             *model);

GListModel *            gtk_sort_list_model_get_model           (GtkSortListModel       *self);


void                    gtk_sort_list_model_set_incremental     (GtkSortListModel       *self,
                                                                 gboolean                incremental);

gboolean                gtk_sort_list_model_get_incremental     (GtkSortListModel       *self);


guint                   gtk_sort_list_model_get_pending         (GtkSortListModel       *self);



