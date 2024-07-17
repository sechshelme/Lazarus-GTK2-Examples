/*
 * Copyright © 2020 Red Hat, Inc.
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

#include <gio/gio.h>
/* for  */
#include <gdk/gdk.h>




#define GTK_TYPE_BOOKMARK_LIST (gtk_bookmark_list_get_type ())


//G_DECLARE_FINAL_TYPE (GtkBookmarkList, gtk_bookmark_list, GTK, BOOKMARK_LIST, GObject)


GtkBookmarkList *    gtk_bookmark_list_new                  (const char *filename,
                                                             const char *attributes);


const char *         gtk_bookmark_list_get_filename         (GtkBookmarkList *self);


void                 gtk_bookmark_list_set_attributes       (GtkBookmarkList *self,
                                                             const char      *attributes);

const char *         gtk_bookmark_list_get_attributes       (GtkBookmarkList *self);


void                 gtk_bookmark_list_set_io_priority      (GtkBookmarkList *self,
                                                             int              io_priority);

int                  gtk_bookmark_list_get_io_priority      (GtkBookmarkList *self);


gboolean             gtk_bookmark_list_is_loading           (GtkBookmarkList *self);



