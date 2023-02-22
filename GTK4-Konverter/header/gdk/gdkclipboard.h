/* GDK - The GIMP Drawing Kit
 *
 * Copyright (C) 2017 Benjamin Otte <otte@gnome.org>
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

#ifndef __GDK_CLIPBOARD_H__
#define __GDK_CLIPBOARD_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkversionmacros.h>
#include <gdk/gdktypes.h>
#include <gio/gio.h>


/* Zeile entfernt */

#define GDK_TYPE_CLIPBOARD            (gdk_clipboard_get_type ())
#define GDK_CLIPBOARD(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GDK_TYPE_CLIPBOARD, GdkClipboard))
#define GDK_IS_CLIPBOARD(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GDK_TYPE_CLIPBOARD))

/* Zeile entfernt */
GType                   gdk_clipboard_get_type          (void) ;

/* Zeile entfernt */
GdkDisplay *            gdk_clipboard_get_display       (GdkClipboard          *clipboard);
/* Zeile entfernt */
GdkContentFormats *     gdk_clipboard_get_formats       (GdkClipboard          *clipboard);
/* Zeile entfernt */
gboolean                gdk_clipboard_is_local          (GdkClipboard          *clipboard);
/* Zeile entfernt */
GdkContentProvider *    gdk_clipboard_get_content       (GdkClipboard          *clipboard);

/* Zeile entfernt */
void                    gdk_clipboard_store_async       (GdkClipboard          *clipboard,
                                                         int                    io_priority,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);
/* Zeile entfernt */
gboolean                gdk_clipboard_store_finish      (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         GError               **error);

/* Zeile entfernt */
void                    gdk_clipboard_read_async        (GdkClipboard          *clipboard,
                                                         const char           **mime_types,
                                                         int                    io_priority,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);
/* Zeile entfernt */
GInputStream *          gdk_clipboard_read_finish       (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         const char           **out_mime_type,
                                                         GError               **error);
/* Zeile entfernt */
void                    gdk_clipboard_read_value_async  (GdkClipboard          *clipboard,
                                                         GType                  type,
                                                         int                    io_priority,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);
/* Zeile entfernt */
const GValue *          gdk_clipboard_read_value_finish (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         GError               **error);
/* Zeile entfernt */
void                    gdk_clipboard_read_texture_async (GdkClipboard          *clipboard,
                                                          GCancellable          *cancellable,
                                                          GAsyncReadyCallback    callback,
                                                          gpointer               user_data);
/* Zeile entfernt */
GdkTexture *            gdk_clipboard_read_texture_finish (GdkClipboard         *clipboard,
                                                           GAsyncResult          *result,
                                                           GError               **error);
/* Zeile entfernt */
void                    gdk_clipboard_read_text_async   (GdkClipboard          *clipboard,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);
/* Zeile entfernt */
char *                  gdk_clipboard_read_text_finish  (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         GError               **error);

/* Zeile entfernt */
gboolean                gdk_clipboard_set_content       (GdkClipboard          *clipboard,
                                                         GdkContentProvider    *provider);
/* Zeile entfernt */
void                    gdk_clipboard_set               (GdkClipboard          *clipboard,
                                                         GType                  type,
                                                         ...);
/* Zeile entfernt */
void                    gdk_clipboard_set_valist        (GdkClipboard          *clipboard,
                                                         GType                  type,
                                                         va_list                args);
/* Zeile entfernt */
void                    gdk_clipboard_set_value         (GdkClipboard          *clipboard,
                                                         const GValue          *value);
/* Zeile entfernt */
void                    gdk_clipboard_set_text          (GdkClipboard          *clipboard,
                                                         const char            *text);
/* Zeile entfernt */
void                    gdk_clipboard_set_texture       (GdkClipboard          *clipboard,
                                                         GdkTexture            *texture);

/* Zeile entfernt */

#endif /* __GDK_CLIPBOARD_H__ */
