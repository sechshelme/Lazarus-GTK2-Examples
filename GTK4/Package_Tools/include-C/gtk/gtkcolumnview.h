/*
 * Copyright © 2019 Benjamin Otte
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
#include <gtk/gtksortlistmodel.h>
#include <gtk/gtkselectionmodel.h>
#include <gtk/gtksorter.h>



#define GTK_TYPE_COLUMN_VIEW         (gtk_column_view_get_type ())
#define GTK_COLUMN_VIEW(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_COLUMN_VIEW, GtkColumnView))
#define GTK_COLUMN_VIEW_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_COLUMN_VIEW, GtkColumnViewClass))
#define GTK_IS_COLUMN_VIEW(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_COLUMN_VIEW))
#define GTK_IS_COLUMN_VIEW_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_COLUMN_VIEW))
#define GTK_COLUMN_VIEW_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_COLUMN_VIEW, GtkColumnViewClass))


typedef struct _GtkColumnView GtkColumnView;
typedef struct _GtkColumnViewClass GtkColumnViewClass;
/* forward declaration */
typedef struct _GtkColumnViewColumn GtkColumnViewColumn;


GType           gtk_column_view_get_type                        (void) ;


GtkWidget *     gtk_column_view_new                             (GtkSelectionModel      *model);


GListModel *    gtk_column_view_get_columns                     (GtkColumnView          *self);

void            gtk_column_view_append_column                   (GtkColumnView          *self,
                                                                 GtkColumnViewColumn    *column);

void            gtk_column_view_remove_column                   (GtkColumnView          *self,
                                                                 GtkColumnViewColumn    *column);

void            gtk_column_view_insert_column                   (GtkColumnView          *self,
                                                                 guint                   position,
                                                                 GtkColumnViewColumn    *column);


GtkSelectionModel *
                gtk_column_view_get_model                       (GtkColumnView          *self);

void            gtk_column_view_set_model                       (GtkColumnView          *self,
                                                                 GtkSelectionModel      *model);


gboolean        gtk_column_view_get_show_row_separators         (GtkColumnView          *self);

void            gtk_column_view_set_show_row_separators         (GtkColumnView          *self,
                                                                 gboolean                show_row_separators);


gboolean        gtk_column_view_get_show_column_separators      (GtkColumnView          *self);

void            gtk_column_view_set_show_column_separators      (GtkColumnView          *self,
                                                                 gboolean                show_column_separators);


GtkSorter *     gtk_column_view_get_sorter                      (GtkColumnView          *self);


void            gtk_column_view_sort_by_column                  (GtkColumnView          *self,
                                                                 GtkColumnViewColumn    *column,
                                                                 GtkSortType             direction);


void            gtk_column_view_set_single_click_activate       (GtkColumnView          *self,
                                                                 gboolean                single_click_activate);

gboolean        gtk_column_view_get_single_click_activate       (GtkColumnView          *self);



void            gtk_column_view_set_reorderable                 (GtkColumnView          *self,
                                                                 gboolean                reorderable);

gboolean        gtk_column_view_get_reorderable                 (GtkColumnView          *self);


void            gtk_column_view_set_enable_rubberband           (GtkColumnView          *self,
                                                                 gboolean                enable_rubberband);

gboolean        gtk_column_view_get_enable_rubberband           (GtkColumnView          *self);


void            gtk_column_view_set_tab_behavior                (GtkColumnView          *self,
                                                                 GtkListTabBehavior      tab_behavior);

GtkListTabBehavior
                gtk_column_view_get_tab_behavior                (GtkColumnView          *self);


void            gtk_column_view_set_row_factory                 (GtkColumnView          *self,
                                                                 GtkListItemFactory     *factory);

GtkListItemFactory *
                gtk_column_view_get_row_factory                 (GtkColumnView          *self);


void            gtk_column_view_set_header_factory              (GtkColumnView          *self,
                                                                 GtkListItemFactory     *factory);

GtkListItemFactory *
                gtk_column_view_get_header_factory              (GtkColumnView          *self);


void            gtk_column_view_scroll_to                       (GtkColumnView          *self,
                                                                 guint                   pos,
                                                                 GtkColumnViewColumn    *column,
                                                                 GtkListScrollFlags      flags,
                                                                 GtkScrollInfo          *scroll);



