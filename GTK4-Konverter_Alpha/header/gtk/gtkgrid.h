/* GTK - The GIMP Toolkit
 * Copyright (C) 2010 Red Hat, Inc.
 * Author: Matthias Clasen
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef __GTK_GRID_H__
#define __GTK_GRID_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>


/* Zeile entfernt */

#define GTK_TYPE_GRID                   (gtk_grid_get_type ())
#define GTK_GRID(obj)                   (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_GRID, GtkGrid))
#define GTK_GRID_CLASS(klass)           (G_TYPE_CHECK_CLASS_CAST ((klass), GTK_TYPE_GRID, GtkGridClass))
#define GTK_IS_GRID(obj)                (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_GRID))
#define GTK_IS_GRID_CLASS(klass)        (G_TYPE_CHECK_CLASS_TYPE ((klass), GTK_TYPE_GRID))
#define GTK_GRID_GET_CLASS(obj)        (G_TYPE_INSTANCE_GET_CLASS ((obj), GTK_TYPE_GRID, GtkGridClass))


typedef struct _GtkGrid              GtkGrid;
typedef struct _GtkGridClass         GtkGridClass;

struct _GtkGrid
{
  /*< private >*/
  GtkWidget parent_instance;
};

/**
 * GtkGridClass:
 * @parent_class: The parent class.
 */
struct _GtkGridClass
{
  GtkWidgetClass parent_class;

  /*< private >*/

  gpointer padding[8];
};

/* Zeile entfernt */
GType      gtk_grid_get_type               (void) ;
/* Zeile entfernt */
GtkWidget* gtk_grid_new                    (void);
/* Zeile entfernt */
void       gtk_grid_attach                 (GtkGrid         *grid,
                                            GtkWidget       *child,
                                            int              column,
                                            int              row,
                                            int              width,
                                            int              height);
/* Zeile entfernt */
void       gtk_grid_attach_next_to         (GtkGrid         *grid,
                                            GtkWidget       *child,
                                            GtkWidget       *sibling,
                                            GtkPositionType  side,
                                            int              width,
                                            int              height);
/* Zeile entfernt */
GtkWidget *gtk_grid_get_child_at           (GtkGrid         *grid,
                                            int              column,
                                            int              row);
/* Zeile entfernt */
void       gtk_grid_remove                 (GtkGrid         *grid,
                                            GtkWidget       *child);

/* Zeile entfernt */
void       gtk_grid_insert_row             (GtkGrid         *grid,
                                            int              position);
/* Zeile entfernt */
void       gtk_grid_insert_column          (GtkGrid         *grid,
                                            int              position);
/* Zeile entfernt */
void       gtk_grid_remove_row             (GtkGrid         *grid,
                                            int              position);
/* Zeile entfernt */
void       gtk_grid_remove_column          (GtkGrid         *grid,
                                            int              position);
/* Zeile entfernt */
void       gtk_grid_insert_next_to         (GtkGrid         *grid,
                                            GtkWidget       *sibling,
                                            GtkPositionType  side);
/* Zeile entfernt */
void       gtk_grid_set_row_homogeneous    (GtkGrid         *grid,
                                            gboolean         homogeneous);
/* Zeile entfernt */
gboolean   gtk_grid_get_row_homogeneous    (GtkGrid         *grid);
/* Zeile entfernt */
void       gtk_grid_set_row_spacing        (GtkGrid         *grid,
                                            guint            spacing);
/* Zeile entfernt */
guint      gtk_grid_get_row_spacing        (GtkGrid         *grid);
/* Zeile entfernt */
void       gtk_grid_set_column_homogeneous (GtkGrid         *grid,
                                            gboolean         homogeneous);
/* Zeile entfernt */
gboolean   gtk_grid_get_column_homogeneous (GtkGrid         *grid);
/* Zeile entfernt */
void       gtk_grid_set_column_spacing     (GtkGrid         *grid,
                                            guint            spacing);
/* Zeile entfernt */
guint      gtk_grid_get_column_spacing     (GtkGrid         *grid);
/* Zeile entfernt */
void       gtk_grid_set_row_baseline_position (GtkGrid      *grid,
                                               int           row,
                                               GtkBaselinePosition pos);
/* Zeile entfernt */
GtkBaselinePosition gtk_grid_get_row_baseline_position (GtkGrid      *grid,
                                                        int           row);
/* Zeile entfernt */
void       gtk_grid_set_baseline_row       (GtkGrid         *grid,
                                            int              row);
/* Zeile entfernt */
int        gtk_grid_get_baseline_row       (GtkGrid         *grid);

/* Zeile entfernt */
void       gtk_grid_query_child            (GtkGrid         *grid,
                                            GtkWidget       *child,
                                            int             *column,
                                            int             *row,
                                            int             *width,
                                            int             *height);

/* Zeile entfernt */

#endif /* __GTK_GRID_H__ */
