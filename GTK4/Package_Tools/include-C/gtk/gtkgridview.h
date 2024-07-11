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

#include <gtk/gtklistbase.h>



#define GTK_TYPE_GRID_VIEW         (gtk_grid_view_get_type ())
#define GTK_GRID_VIEW(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_GRID_VIEW, GtkGridView))
#define GTK_GRID_VIEW_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_GRID_VIEW, GtkGridViewClass))
#define GTK_IS_GRID_VIEW(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_GRID_VIEW))
#define GTK_IS_GRID_VIEW_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_GRID_VIEW))
#define GTK_GRID_VIEW_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_GRID_VIEW, GtkGridViewClass))

typedef struct _GtkGridView GtkGridView;
typedef struct _GtkGridViewClass GtkGridViewClass;


GType           gtk_grid_view_get_type                          (void) ;


GtkWidget *     gtk_grid_view_new                               (GtkSelectionModel      *model,
                                                                 GtkListItemFactory     *factory);


GtkSelectionModel *
                gtk_grid_view_get_model                         (GtkGridView            *self);

void            gtk_grid_view_set_model                         (GtkGridView            *self,
                                                                 GtkSelectionModel      *model);

void            gtk_grid_view_set_factory                       (GtkGridView            *self,
                                                                 GtkListItemFactory     *factory);

GtkListItemFactory *
                gtk_grid_view_get_factory                       (GtkGridView            *self);

guint           gtk_grid_view_get_min_columns                   (GtkGridView            *self);

void            gtk_grid_view_set_min_columns                   (GtkGridView            *self,
                                                                 guint                   min_columns);

guint           gtk_grid_view_get_max_columns                   (GtkGridView            *self);

void            gtk_grid_view_set_max_columns                   (GtkGridView            *self,
                                                                 guint                   max_columns);

void            gtk_grid_view_set_enable_rubberband             (GtkGridView            *self,
                                                                 gboolean                enable_rubberband);

gboolean        gtk_grid_view_get_enable_rubberband             (GtkGridView            *self);


void            gtk_grid_view_set_tab_behavior                  (GtkGridView            *self,
                                                                 GtkListTabBehavior      tab_behavior);

GtkListTabBehavior
                gtk_grid_view_get_tab_behavior                  (GtkGridView            *self);


void            gtk_grid_view_set_single_click_activate         (GtkGridView            *self,
                                                                 gboolean                single_click_activate);

gboolean        gtk_grid_view_get_single_click_activate         (GtkGridView            *self);


void            gtk_grid_view_scroll_to                         (GtkGridView            *self,
                                                                 guint                   pos,
                                                                 GtkListScrollFlags      flags,
                                                                 GtkScrollInfo          *scroll);






