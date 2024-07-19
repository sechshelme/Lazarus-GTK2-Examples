/* gtkgridlayout.h: Layout manager for grid-like widgets
 * Copyright 2019  GNOME Foundation
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
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
 */
#pragma once

#include <gtk/gtklayoutmanager.h>



#define GTK_TYPE_GRID_LAYOUT (gtk_grid_layout_get_type ())
#define GTK_TYPE_GRID_LAYOUT_CHILD (gtk_grid_layout_child_get_type ())


//G_DECLARE_FINAL_TYPE (GtkGridLayout, gtk_grid_layout, GTK, GRID_LAYOUT, GtkLayoutManager)


GtkLayoutManager *      gtk_grid_layout_new                             (void);


void                    gtk_grid_layout_set_row_homogeneous             (GtkGridLayout       *grid,
                                                                         gboolean             homogeneous);

gboolean                gtk_grid_layout_get_row_homogeneous             (GtkGridLayout       *grid);

void                    gtk_grid_layout_set_row_spacing                 (GtkGridLayout       *grid,
                                                                         guint                spacing);

guint                   gtk_grid_layout_get_row_spacing                 (GtkGridLayout       *grid);

void                    gtk_grid_layout_set_column_homogeneous          (GtkGridLayout       *grid,
                                                                         gboolean             homogeneous);

gboolean                gtk_grid_layout_get_column_homogeneous          (GtkGridLayout       *grid);

void                    gtk_grid_layout_set_column_spacing              (GtkGridLayout       *grid,
                                                                         guint                spacing);

guint                   gtk_grid_layout_get_column_spacing              (GtkGridLayout       *grid);

void                    gtk_grid_layout_set_row_baseline_position       (GtkGridLayout       *grid,
                                                                         int                  row,
                                                                         GtkBaselinePosition  pos);

GtkBaselinePosition     gtk_grid_layout_get_row_baseline_position       (GtkGridLayout       *grid,
                                                                         int                  row);

void                    gtk_grid_layout_set_baseline_row                (GtkGridLayout       *grid,
                                                                         int                  row);

int                     gtk_grid_layout_get_baseline_row                (GtkGridLayout       *grid);


//G_DECLARE_FINAL_TYPE (GtkGridLayoutChild, gtk_grid_layout_child, GTK, GRID_LAYOUT_CHILD, GtkLayoutChild)


void                    gtk_grid_layout_child_set_row                   (GtkGridLayoutChild  *child,
                                                                         int                  row);

int                     gtk_grid_layout_child_get_row                   (GtkGridLayoutChild  *child);

void                    gtk_grid_layout_child_set_column                (GtkGridLayoutChild  *child,
                                                                         int                  column);

int                     gtk_grid_layout_child_get_column                (GtkGridLayoutChild  *child);

void                    gtk_grid_layout_child_set_column_span           (GtkGridLayoutChild  *child,
                                                                         int                  span);

int                     gtk_grid_layout_child_get_column_span           (GtkGridLayoutChild  *child);

void                    gtk_grid_layout_child_set_row_span              (GtkGridLayoutChild  *child,
                                                                         int                  span);

int                     gtk_grid_layout_child_get_row_span              (GtkGridLayoutChild  *child);


