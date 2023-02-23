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

#ifndef __GTK_GRID_VIEW_H__
#define __GTK_GRID_VIEW_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtklistbase.h>

/* Zeile entfernt */

#define GTK_TYPE_GRID_VIEW         (gtk_grid_view_get_type ())
#define GTK_GRID_VIEW(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_GRID_VIEW, GtkGridView))
#define GTK_GRID_VIEW_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_GRID_VIEW, GtkGridViewClass))
#define GTK_IS_GRID_VIEW(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_GRID_VIEW))
#define GTK_IS_GRID_VIEW_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_GRID_VIEW))
#define GTK_GRID_VIEW_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_GRID_VIEW, GtkGridViewClass))

typedef struct _GtkGridView GtkGridView;
typedef struct _GtkGridViewClass GtkGridViewClass;

/* Zeile entfernt */
GType           gtk_grid_view_get_type                          (void) ;

/* Zeile entfernt */
GtkWidget *     gtk_grid_view_new                               (GtkSelectionModel      *model,
                                                                 GtkListItemFactory     *factory);

/* Zeile entfernt */
GtkSelectionModel *
                gtk_grid_view_get_model                         (GtkGridView            *self);
/* Zeile entfernt */
void            gtk_grid_view_set_model                         (GtkGridView            *self,
                                                                 GtkSelectionModel      *model);
/* Zeile entfernt */
void            gtk_grid_view_set_factory                       (GtkGridView            *self,
                                                                 GtkListItemFactory     *factory);
/* Zeile entfernt */
GtkListItemFactory *
                gtk_grid_view_get_factory                       (GtkGridView            *self);
/* Zeile entfernt */
guint           gtk_grid_view_get_min_columns                   (GtkGridView            *self);
/* Zeile entfernt */
void            gtk_grid_view_set_min_columns                   (GtkGridView            *self,
                                                                 guint                   min_columns);
/* Zeile entfernt */
guint           gtk_grid_view_get_max_columns                   (GtkGridView            *self);
/* Zeile entfernt */
void            gtk_grid_view_set_max_columns                   (GtkGridView            *self,
                                                                 guint                   max_columns);
/* Zeile entfernt */
void            gtk_grid_view_set_enable_rubberband             (GtkGridView            *self,
                                                                 gboolean                enable_rubberband);
/* Zeile entfernt */
gboolean        gtk_grid_view_get_enable_rubberband             (GtkGridView            *self);

/* Zeile entfernt */
void            gtk_grid_view_set_single_click_activate         (GtkGridView            *self,
                                                                 gboolean                single_click_activate);
/* Zeile entfernt */
gboolean        gtk_grid_view_get_single_click_activate         (GtkGridView            *self);


/* Zeile entfernt */

#endif  /* __GTK_GRID_VIEW_H__ */
