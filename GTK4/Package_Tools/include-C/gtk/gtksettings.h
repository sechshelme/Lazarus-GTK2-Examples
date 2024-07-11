/* GTK - The GIMP Toolkit
 * Copyright (C) 2000 Red Hat, Inc.
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

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gdk/gdk.h>
#include <gtk/gtktypes.h>




/* -- type macros --- */
#define GTK_TYPE_SETTINGS             (gtk_settings_get_type ())
#define GTK_SETTINGS(obj)             (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_SETTINGS, GtkSettings))
#define GTK_IS_SETTINGS(obj)          (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_SETTINGS))

/* --- functions --- */

GType           gtk_settings_get_type                (void) ;

GtkSettings*    gtk_settings_get_default             (void);

GtkSettings*    gtk_settings_get_for_display         (GdkDisplay *display);


void     gtk_settings_reset_property       (GtkSettings            *settings,
                                            const char             *name);





