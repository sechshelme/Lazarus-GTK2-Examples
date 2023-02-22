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


#ifndef __GDK_DROP_H__
#define __GDK_DROP_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkenums.h>
#include <gdk/gdktypes.h>
#include <gdk/gdkversionmacros.h>

/* Zeile entfernt */

/* Zeile entfernt */

#define GDK_TYPE_DROP              (gdk_drop_get_type ())
#define GDK_DROP(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), GDK_TYPE_DROP, GdkDrop))
#define GDK_IS_DROP(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), GDK_TYPE_DROP))

/* Zeile entfernt */
GType                   gdk_drop_get_type               (void) ;

/* Zeile entfernt */
GdkDisplay *            gdk_drop_get_display            (GdkDrop                *self);
/* Zeile entfernt */
GdkDevice *             gdk_drop_get_device             (GdkDrop                *self);
/* Zeile entfernt */
GdkSurface *            gdk_drop_get_surface            (GdkDrop                *self);
/* Zeile entfernt */
GdkContentFormats *     gdk_drop_get_formats            (GdkDrop                *self);
/* Zeile entfernt */
GdkDragAction           gdk_drop_get_actions            (GdkDrop                *self);
/* Zeile entfernt */
GdkDrag *               gdk_drop_get_drag               (GdkDrop                *self);

/* Zeile entfernt */
void                    gdk_drop_status                 (GdkDrop                *self,
                                                         GdkDragAction           actions,
                                                         GdkDragAction           preferred);
/* Zeile entfernt */
void                    gdk_drop_finish                 (GdkDrop                *self,
                                                         GdkDragAction           action);

/* Zeile entfernt */
void                    gdk_drop_read_async             (GdkDrop                *self,
                                                         const char            **mime_types,
                                                         int                     io_priority,
                                                         GCancellable           *cancellable,
                                                         GAsyncReadyCallback     callback,
                                                         gpointer                user_data);
/* Zeile entfernt */
GInputStream *          gdk_drop_read_finish            (GdkDrop                *self,
                                                         GAsyncResult           *result,
                                                         const char            **out_mime_type,
                                                         GError                **error);
/* Zeile entfernt */
void                    gdk_drop_read_value_async       (GdkDrop                *self,
                                                         GType                   type,
                                                         int                     io_priority,
                                                         GCancellable           *cancellable,
                                                         GAsyncReadyCallback     callback,
                                                         gpointer                user_data);
/* Zeile entfernt */
const GValue *          gdk_drop_read_value_finish      (GdkDrop                *self,
                                                         GAsyncResult           *result,
                                                         GError                **error);

/* Zeile entfernt */

#endif /* __GDK_DROP_H__ */
