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


#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_DROP              (gdk_drop_get_type ())
#define GDK_DROP(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), GDK_TYPE_DROP, GdkDrop))
#define GDK_IS_DROP(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), GDK_TYPE_DROP))


GType                   gdk_drop_get_type               (void) ;


GdkDisplay *            gdk_drop_get_display            (GdkDrop                *self);

GdkDevice *             gdk_drop_get_device             (GdkDrop                *self);

GdkSurface *            gdk_drop_get_surface            (GdkDrop                *self);

GdkContentFormats *     gdk_drop_get_formats            (GdkDrop                *self);

GdkDragAction           gdk_drop_get_actions            (GdkDrop                *self);

GdkDrag *               gdk_drop_get_drag               (GdkDrop                *self);


void                    gdk_drop_status                 (GdkDrop                *self,
                                                         GdkDragAction           actions,
                                                         GdkDragAction           preferred);

void                    gdk_drop_finish                 (GdkDrop                *self,
                                                         GdkDragAction           action);


void                    gdk_drop_read_async             (GdkDrop                *self,
                                                         const char            **mime_types,
                                                         int                     io_priority,
                                                         GCancellable           *cancellable,
                                                         GAsyncReadyCallback     callback,
                                                         gpointer                user_data);

GInputStream *          gdk_drop_read_finish            (GdkDrop                *self,
                                                         GAsyncResult           *result,
                                                         const char            **out_mime_type,
                                                         GError                **error);

void                    gdk_drop_read_value_async       (GdkDrop                *self,
                                                         GType                   type,
                                                         int                     io_priority,
                                                         GCancellable           *cancellable,
                                                         GAsyncReadyCallback     callback,
                                                         gpointer                user_data);

const GValue *          gdk_drop_read_value_finish      (GdkDrop                *self,
                                                         GAsyncResult           *result,
                                                         GError                **error);





