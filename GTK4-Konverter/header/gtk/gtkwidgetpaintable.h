/*
 * Copyright © 2018 Benjamin Otte
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

#ifndef __GTK_WIDGET_PAINTABLE_H__
#define __GTK_WIDGET_PAINTABLE_H__

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_WIDGET_PAINTABLE (gtk_widget_paintable_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GdkPaintable *  gtk_widget_paintable_new                (GtkWidget              *widget);

/* Zeile entfernt */
GtkWidget *     gtk_widget_paintable_get_widget         (GtkWidgetPaintable     *self);
/* Zeile entfernt */
void            gtk_widget_paintable_set_widget         (GtkWidgetPaintable     *self,
                                                         GtkWidget              *widget);

/* Zeile entfernt */

#endif /* __GTK_WIDGET_PAINTABLE_H__ */
