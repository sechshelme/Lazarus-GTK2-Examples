/* gtkcellrenderertoggle.h
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





#define GTK_TYPE_CELL_RENDERER_TOGGLE			(gtk_cell_renderer_toggle_get_type ())
#define GTK_CELL_RENDERER_TOGGLE(obj)			(G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_CELL_RENDERER_TOGGLE, GtkCellRendererToggle))
#define GTK_IS_CELL_RENDERER_TOGGLE(obj)		(G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_CELL_RENDERER_TOGGLE))

typedef struct _GtkCellRendererToggle              GtkCellRendererToggle;



GType            gtk_cell_renderer_toggle_get_type       (void) ;

GtkCellRenderer *gtk_cell_renderer_toggle_new            (void);


gboolean         gtk_cell_renderer_toggle_get_radio      (GtkCellRendererToggle *toggle);

void             gtk_cell_renderer_toggle_set_radio      (GtkCellRendererToggle *toggle,
                                                          gboolean               radio);


gboolean        gtk_cell_renderer_toggle_get_active      (GtkCellRendererToggle *toggle);

void            gtk_cell_renderer_toggle_set_active      (GtkCellRendererToggle *toggle,
                                                          gboolean               setting);


gboolean        gtk_cell_renderer_toggle_get_activatable (GtkCellRendererToggle *toggle);

void            gtk_cell_renderer_toggle_set_activatable (GtkCellRendererToggle *toggle,
                                                          gboolean               setting);





