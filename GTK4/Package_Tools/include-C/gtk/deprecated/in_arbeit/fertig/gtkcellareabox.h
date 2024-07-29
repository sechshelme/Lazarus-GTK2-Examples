/* gtkcellareabox.h
 *
 * Copyright (C) 2010 Openismus GmbH
 *
 * Authors:
 *      Tristan Van Berkom <tristanvb@openismus.com>
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

#include <gtk/deprecated/gtkcellarea.h>



#define GTK_TYPE_CELL_AREA_BOX            (gtk_cell_area_box_get_type ())
#define GTK_CELL_AREA_BOX(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_CELL_AREA_BOX, GtkCellAreaBox))
#define GTK_IS_CELL_AREA_BOX(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_CELL_AREA_BOX))

typedef struct _GtkCellAreaBox              GtkCellAreaBox;


GType        gtk_cell_area_box_get_type    (void) ;


GtkCellArea *gtk_cell_area_box_new         (void);

void         gtk_cell_area_box_pack_start  (GtkCellAreaBox  *box,
                                            GtkCellRenderer *renderer,
                                            gboolean         expand,
                                            gboolean         align,
                                            gboolean         fixed);

void         gtk_cell_area_box_pack_end    (GtkCellAreaBox  *box,
                                            GtkCellRenderer *renderer,
                                            gboolean         expand,
                                            gboolean         align,
                                            gboolean         fixed);

int          gtk_cell_area_box_get_spacing (GtkCellAreaBox  *box);

void         gtk_cell_area_box_set_spacing (GtkCellAreaBox  *box,
                                            int              spacing);

/* Private interaction with GtkCellAreaBoxContext */
gboolean    _gtk_cell_area_box_group_visible (GtkCellAreaBox  *box,
                                              int              group_idx);





