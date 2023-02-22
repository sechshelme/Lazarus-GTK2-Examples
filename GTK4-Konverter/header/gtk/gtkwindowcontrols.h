/*
 * Copyright (c) 2020 Alexander Mikhaylenko <alexm@gnome.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>

/* Zeile entfernt */

#define GTK_TYPE_WINDOW_CONTROLS (gtk_window_controls_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkWidget *  gtk_window_controls_new                   (GtkPackType        side);

/* Zeile entfernt */
GtkPackType  gtk_window_controls_get_side              (GtkWindowControls *self);

/* Zeile entfernt */
void         gtk_window_controls_set_side              (GtkWindowControls *self,
                                                        GtkPackType        side);

/* Zeile entfernt */
const char * gtk_window_controls_get_decoration_layout (GtkWindowControls *self);

/* Zeile entfernt */
void         gtk_window_controls_set_decoration_layout (GtkWindowControls *self,
                                                        const char        *layout);

/* Zeile entfernt */
gboolean     gtk_window_controls_get_empty             (GtkWindowControls *self);

/* Zeile entfernt */
