/*
 * Copyright © 2019 Benjamin Otte
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

#ifndef __GTK_DIRECTORY_LIST_H__
#define __GTK_DIRECTORY_LIST_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
/* Zeile entfernt */
#include <gdk/gdk.h>


/* Zeile entfernt */

#define GTK_TYPE_DIRECTORY_LIST (gtk_directory_list_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkDirectoryList *      gtk_directory_list_new                  (const char             *attributes,
                                                                 GFile                  *file);

/* Zeile entfernt */
void                    gtk_directory_list_set_file             (GtkDirectoryList       *self,
                                                                 GFile                  *file);
/* Zeile entfernt */
GFile *                 gtk_directory_list_get_file             (GtkDirectoryList       *self);
/* Zeile entfernt */
void                    gtk_directory_list_set_attributes       (GtkDirectoryList       *self,
                                                                 const char             *attributes);
/* Zeile entfernt */
const char *            gtk_directory_list_get_attributes       (GtkDirectoryList       *self);
/* Zeile entfernt */
void                    gtk_directory_list_set_io_priority      (GtkDirectoryList       *self,
                                                                 int                     io_priority);
/* Zeile entfernt */
int                     gtk_directory_list_get_io_priority      (GtkDirectoryList       *self);

/* Zeile entfernt */
gboolean                gtk_directory_list_is_loading           (GtkDirectoryList       *self);
/* Zeile entfernt */
const GError *          gtk_directory_list_get_error            (GtkDirectoryList       *self);

/* Zeile entfernt */
void                    gtk_directory_list_set_monitored        (GtkDirectoryList       *self,
                                                                 gboolean                monitored);
/* Zeile entfernt */
gboolean                gtk_directory_list_get_monitored        (GtkDirectoryList       *self);

/* Zeile entfernt */

#endif /* __GTK_DIRECTORY_LIST_H__ */
