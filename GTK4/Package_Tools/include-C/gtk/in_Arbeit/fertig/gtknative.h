/*
 * Copyright © 2019 Red Hat, Inc.
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
 * Authors: Matthias Clasen <mclasen@redhat.com>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gdk/gdk.h>
#include <gtk/gtkwidget.h>



#define GTK_TYPE_NATIVE               (gtk_native_get_type ())


//G_DECLARE_INTERFACE (GtkNative, gtk_native, GTK, NATIVE, GtkWidget)


void        gtk_native_realize         (GtkNative *self);


void        gtk_native_unrealize       (GtkNative *self);


GtkNative * gtk_native_get_for_surface (GdkSurface *surface);


GdkSurface *gtk_native_get_surface     (GtkNative *self);


GskRenderer *gtk_native_get_renderer   (GtkNative *self);


void         gtk_native_get_surface_transform (GtkNative *self,
                                               double    *x,
                                               double    *y);



