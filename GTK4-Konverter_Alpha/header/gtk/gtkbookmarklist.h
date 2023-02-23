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

#ifndef __GTK_BOOKMARK_LIST_H__
#define __GTK_BOOKMARK_LIST_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
/* Zeile entfernt */
#include <gdk/gdk.h>


/* Zeile entfernt */

#define GTK_TYPE_BOOKMARK_LIST (gtk_bookmark_list_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkBookmarkList *    gtk_bookmark_list_new                  (const char *filename,
                                                             const char *attributes);

/* Zeile entfernt */
const char *         gtk_bookmark_list_get_filename         (GtkBookmarkList *self);

/* Zeile entfernt */
void                 gtk_bookmark_list_set_attributes       (GtkBookmarkList *self,
                                                             const char      *attributes);
/* Zeile entfernt */
const char *         gtk_bookmark_list_get_attributes       (GtkBookmarkList *self);

/* Zeile entfernt */
void                 gtk_bookmark_list_set_io_priority      (GtkBookmarkList *self,
                                                             int              io_priority);
/* Zeile entfernt */
int                  gtk_bookmark_list_get_io_priority      (GtkBookmarkList *self);

/* Zeile entfernt */
gboolean             gtk_bookmark_list_is_loading           (GtkBookmarkList *self);

/* Zeile entfernt */

#endif /* __GTK_BOOKMARK_LIST_H__ */
