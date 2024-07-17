/* gtkcellview.h
 * Copyright (C) 2002, 2003  Kristian Rietveld <kris@gtk.org>
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

#include <gtk/gtkwidget.h>
#include <gtk/deprecated/gtkcellrenderer.h>
#include <gtk/deprecated/gtkcellarea.h>
#include <gtk/deprecated/gtkcellareacontext.h>
#include <gtk/deprecated/gtktreemodel.h>



#define GTK_TYPE_CELL_VIEW                (gtk_cell_view_get_type ())
#define GTK_CELL_VIEW(obj)                (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_CELL_VIEW, GtkCellView))
#define GTK_IS_CELL_VIEW(obj)             (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_CELL_VIEW))

typedef struct _GtkCellView             GtkCellView;


GType             gtk_cell_view_get_type                (void) ;

GtkWidget        *gtk_cell_view_new                     (void);

GtkWidget        *gtk_cell_view_new_with_context        (GtkCellArea        *area,
                                                         GtkCellAreaContext *context);

GtkWidget        *gtk_cell_view_new_with_text           (const char      *text);

GtkWidget        *gtk_cell_view_new_with_markup         (const char      *markup);

GtkWidget        *gtk_cell_view_new_with_texture        (GdkTexture      *texture);

void              gtk_cell_view_set_model               (GtkCellView     *cell_view,
                                                         GtkTreeModel    *model);

GtkTreeModel     *gtk_cell_view_get_model               (GtkCellView     *cell_view);

void              gtk_cell_view_set_displayed_row       (GtkCellView     *cell_view,
                                                         GtkTreePath     *path);

GtkTreePath      *gtk_cell_view_get_displayed_row       (GtkCellView     *cell_view);

gboolean          gtk_cell_view_get_draw_sensitive      (GtkCellView     *cell_view);

void              gtk_cell_view_set_draw_sensitive      (GtkCellView     *cell_view,
                                                         gboolean         draw_sensitive);

gboolean          gtk_cell_view_get_fit_model           (GtkCellView     *cell_view);

void              gtk_cell_view_set_fit_model           (GtkCellView     *cell_view,
                                                         gboolean         fit_model);





