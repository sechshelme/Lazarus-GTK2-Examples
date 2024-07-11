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

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_CLIPBOARD            (gdk_clipboard_get_type ())
#define GDK_CLIPBOARD(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GDK_TYPE_CLIPBOARD, GdkClipboard))
#define GDK_IS_CLIPBOARD(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GDK_TYPE_CLIPBOARD))


GType                   gdk_clipboard_get_type          (void) ;


GdkDisplay *            gdk_clipboard_get_display       (GdkClipboard          *clipboard);

GdkContentFormats *     gdk_clipboard_get_formats       (GdkClipboard          *clipboard);

gboolean                gdk_clipboard_is_local          (GdkClipboard          *clipboard);

GdkContentProvider *    gdk_clipboard_get_content       (GdkClipboard          *clipboard);


void                    gdk_clipboard_store_async       (GdkClipboard          *clipboard,
                                                         int                    io_priority,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);

gboolean                gdk_clipboard_store_finish      (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         GError               **error);


void                    gdk_clipboard_read_async        (GdkClipboard          *clipboard,
                                                         const char           **mime_types,
                                                         int                    io_priority,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);

GInputStream *          gdk_clipboard_read_finish       (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         const char           **out_mime_type,
                                                         GError               **error);

void                    gdk_clipboard_read_value_async  (GdkClipboard          *clipboard,
                                                         GType                  type,
                                                         int                    io_priority,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);

const GValue *          gdk_clipboard_read_value_finish (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         GError               **error);

void                    gdk_clipboard_read_texture_async (GdkClipboard          *clipboard,
                                                          GCancellable          *cancellable,
                                                          GAsyncReadyCallback    callback,
                                                          gpointer               user_data);

GdkTexture *            gdk_clipboard_read_texture_finish (GdkClipboard         *clipboard,
                                                           GAsyncResult          *result,
                                                           GError               **error);

void                    gdk_clipboard_read_text_async   (GdkClipboard          *clipboard,
                                                         GCancellable          *cancellable,
                                                         GAsyncReadyCallback    callback,
                                                         gpointer               user_data);

char *                  gdk_clipboard_read_text_finish  (GdkClipboard          *clipboard,
                                                         GAsyncResult          *result,
                                                         GError               **error);


gboolean                gdk_clipboard_set_content       (GdkClipboard          *clipboard,
                                                         GdkContentProvider    *provider);

void                    gdk_clipboard_set               (GdkClipboard          *clipboard,
                                                         GType                  type,
                                                         ...);

void                    gdk_clipboard_set_valist        (GdkClipboard          *clipboard,
                                                         GType                  type,
                                                         va_list                args);

void                    gdk_clipboard_set_value         (GdkClipboard          *clipboard,
                                                         const GValue          *value);

void                    gdk_clipboard_set_text          (GdkClipboard          *clipboard,
                                                         const char            *text);

void                    gdk_clipboard_set_texture       (GdkClipboard          *clipboard,
                                                         GdkTexture            *texture);





