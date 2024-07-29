/* gtktreeviewcolumn.h
 * Copyright (C) 2000  Red Hat, Inc.,  Jonathan Blandford <jrb@redhat.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/deprecated/gtkcellrenderer.h>
#include <gtk/deprecated/gtktreemodel.h>
#include <gtk/deprecated/gtktreesortable.h>
#include <gtk/deprecated/gtkcellarea.h>





#define GTK_TYPE_TREE_VIEW_COLUMN	     (gtk_tree_view_column_get_type ())
#define GTK_TREE_VIEW_COLUMN(obj)	     (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_TREE_VIEW_COLUMN, GtkTreeViewColumn))
#define GTK_IS_TREE_VIEW_COLUMN(obj)	     (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_TREE_VIEW_COLUMN))

typedef struct _GtkTreeViewColumn        GtkTreeViewColumn;

/**
 * GtkTreeViewColumnSizing:
 * @GTK_TREE_VIEW_COLUMN_GROW_ONLY: Columns only get bigger in reaction to changes in the model
 * @GTK_TREE_VIEW_COLUMN_AUTOSIZE: Columns resize to be the optimal size every time the model changes.
 * @GTK_TREE_VIEW_COLUMN_FIXED: Columns are a fixed numbers of pixels wide.
 *
 * The sizing method the column uses to determine its width.  Please note
 * that %GTK_TREE_VIEW_COLUMN_AUTOSIZE are inefficient for large views, and
 * can make columns appear choppy.
 */
typedef enum
{
  GTK_TREE_VIEW_COLUMN_GROW_ONLY,
  GTK_TREE_VIEW_COLUMN_AUTOSIZE,
  GTK_TREE_VIEW_COLUMN_FIXED
} GtkTreeViewColumnSizing;

/**
 * GtkTreeCellDataFunc:
 * @tree_column: A `GtkTreeViewColumn`
 * @cell: The `GtkCellRenderer` that is being rendered by @tree_column
 * @tree_model: The `GtkTreeModel` being rendered
 * @iter: A `GtkTreeIter` of the current row rendered
 * @data: (closure): user data
 *
 * A function to set the properties of a cell instead of just using the
 * straight mapping between the cell and the model.
 *
 * This function is useful for customizing the cell renderer. For example,
 * a function might get an* integer from the @tree_model, and render it to
 * the “text” attribute of “cell” by converting it to its written equivalent.
 *
 * See also: gtk_tree_view_column_set_cell_data_func()
 */
typedef void (* GtkTreeCellDataFunc) (GtkTreeViewColumn *tree_column,
				      GtkCellRenderer   *cell,
				      GtkTreeModel      *tree_model,
				      GtkTreeIter       *iter,
				      gpointer           data);



GType                   gtk_tree_view_column_get_type            (void) ;

GtkTreeViewColumn      *gtk_tree_view_column_new                 (void);

GtkTreeViewColumn      *gtk_tree_view_column_new_with_area       (GtkCellArea             *area);

GtkTreeViewColumn      *gtk_tree_view_column_new_with_attributes (const char              *title,
								  GtkCellRenderer         *cell,
								  ...) ;

void                    gtk_tree_view_column_pack_start          (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell,
								  gboolean                 expand);

void                    gtk_tree_view_column_pack_end            (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell,
								  gboolean                 expand);

void                    gtk_tree_view_column_clear               (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_add_attribute       (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell_renderer,
								  const char              *attribute,
								  int                      column);

void                    gtk_tree_view_column_set_attributes      (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell_renderer,
								  ...) ;

void                    gtk_tree_view_column_set_cell_data_func  (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell_renderer,
								  GtkTreeCellDataFunc      func,
								  gpointer                 func_data,
								  GDestroyNotify           destroy);

void                    gtk_tree_view_column_clear_attributes    (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell_renderer);

void                    gtk_tree_view_column_set_spacing         (GtkTreeViewColumn       *tree_column,
								  int                      spacing);

int                     gtk_tree_view_column_get_spacing         (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_visible         (GtkTreeViewColumn       *tree_column,
								  gboolean                 visible);

gboolean                gtk_tree_view_column_get_visible         (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_resizable       (GtkTreeViewColumn       *tree_column,
								  gboolean                 resizable);

gboolean                gtk_tree_view_column_get_resizable       (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_sizing          (GtkTreeViewColumn       *tree_column,
								  GtkTreeViewColumnSizing  type);

GtkTreeViewColumnSizing gtk_tree_view_column_get_sizing          (GtkTreeViewColumn       *tree_column);

int                     gtk_tree_view_column_get_x_offset        (GtkTreeViewColumn       *tree_column);

int                     gtk_tree_view_column_get_width           (GtkTreeViewColumn       *tree_column);

int                     gtk_tree_view_column_get_fixed_width     (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_fixed_width     (GtkTreeViewColumn       *tree_column,
								  int                      fixed_width);

void                    gtk_tree_view_column_set_min_width       (GtkTreeViewColumn       *tree_column,
								  int                      min_width);

int                     gtk_tree_view_column_get_min_width       (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_max_width       (GtkTreeViewColumn       *tree_column,
								  int                      max_width);

int                     gtk_tree_view_column_get_max_width       (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_clicked             (GtkTreeViewColumn       *tree_column);



/* Options for manipulating the column headers
 */

void                    gtk_tree_view_column_set_title           (GtkTreeViewColumn       *tree_column,
								  const char              *title);

const char *           gtk_tree_view_column_get_title           (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_expand          (GtkTreeViewColumn       *tree_column,
								  gboolean                 expand);

gboolean                gtk_tree_view_column_get_expand          (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_clickable       (GtkTreeViewColumn       *tree_column,
								  gboolean                 clickable);

gboolean                gtk_tree_view_column_get_clickable       (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_widget          (GtkTreeViewColumn       *tree_column,
								  GtkWidget               *widget);

GtkWidget              *gtk_tree_view_column_get_widget          (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_alignment       (GtkTreeViewColumn       *tree_column,
								  float                    xalign);

float                   gtk_tree_view_column_get_alignment       (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_reorderable     (GtkTreeViewColumn       *tree_column,
								  gboolean                 reorderable);

gboolean                gtk_tree_view_column_get_reorderable     (GtkTreeViewColumn       *tree_column);



/* You probably only want to use gtk_tree_view_column_set_sort_column_id.  The
 * other sorting functions exist primarily to let others do their own custom sorting.
 */

void                    gtk_tree_view_column_set_sort_column_id  (GtkTreeViewColumn       *tree_column,
								  int                      sort_column_id);

int                     gtk_tree_view_column_get_sort_column_id  (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_sort_indicator  (GtkTreeViewColumn       *tree_column,
								  gboolean                 setting);

gboolean                gtk_tree_view_column_get_sort_indicator  (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_set_sort_order      (GtkTreeViewColumn       *tree_column,
								  GtkSortType              order);

GtkSortType             gtk_tree_view_column_get_sort_order      (GtkTreeViewColumn       *tree_column);


/* These functions are meant primarily for interaction between the GtkTreeView and the column.
 */

void                    gtk_tree_view_column_cell_set_cell_data  (GtkTreeViewColumn       *tree_column,
								  GtkTreeModel            *tree_model,
								  GtkTreeIter             *iter,
								  gboolean                 is_expander,
								  gboolean                 is_expanded);

void                    gtk_tree_view_column_cell_get_size       (GtkTreeViewColumn       *tree_column,
                                                                  int                     *x_offset,
                                                                  int                     *y_offset,
                                                                  int                     *width,
                                                                  int                     *height);

gboolean                gtk_tree_view_column_cell_is_visible     (GtkTreeViewColumn       *tree_column);

void                    gtk_tree_view_column_focus_cell          (GtkTreeViewColumn       *tree_column,
								  GtkCellRenderer         *cell);

gboolean                gtk_tree_view_column_cell_get_position   (GtkTreeViewColumn       *tree_column,
					                          GtkCellRenderer         *cell_renderer,
					                          int                     *x_offset,
					                          int                     *width);

void                    gtk_tree_view_column_queue_resize        (GtkTreeViewColumn       *tree_column);

GtkWidget              *gtk_tree_view_column_get_tree_view       (GtkTreeViewColumn       *tree_column);

GtkWidget              *gtk_tree_view_column_get_button          (GtkTreeViewColumn       *tree_column);






