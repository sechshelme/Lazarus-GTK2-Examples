/* GTK - The GIMP Toolkit
 *
 * Copyright (C) 2007 John Stowers, Neil Jagdish Patel.
 * Copyright (C) 2009 Bastien Nocera, David Zeuthen
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Code adapted from egg-spinner
 * by Christian Hergert <christian.hergert@gmail.com>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>



#define GTK_TYPE_SPINNER           (gtk_spinner_get_type ())
#define GTK_SPINNER(obj)           (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_SPINNER, GtkSpinner))
#define GTK_IS_SPINNER(obj)        (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_SPINNER))

typedef struct _GtkSpinner      GtkSpinner;



GType      gtk_spinner_get_type     (void) ;

GtkWidget *gtk_spinner_new          (void);

void       gtk_spinner_start        (GtkSpinner *spinner);

void       gtk_spinner_stop         (GtkSpinner *spinner);

void       gtk_spinner_set_spinning (GtkSpinner *spinner,
                                     gboolean    spinning);

gboolean   gtk_spinner_get_spinning (GtkSpinner *spinner);





