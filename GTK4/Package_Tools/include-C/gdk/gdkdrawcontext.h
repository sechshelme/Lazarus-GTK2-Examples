/* GDK - The GIMP Drawing Kit
 *
 * gdkdrawcontext.h: base class for rendering system support
 *
 * Copyright © 2016  Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_DRAW_CONTEXT             (gdk_draw_context_get_type ())
#define GDK_DRAW_CONTEXT(obj)             (G_TYPE_CHECK_INSTANCE_CAST ((obj), GDK_TYPE_DRAW_CONTEXT, GdkDrawContext))
#define GDK_IS_DRAW_CONTEXT(obj)          (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GDK_TYPE_DRAW_CONTEXT))


GType gdk_draw_context_get_type (void) ;


GdkDisplay *            gdk_draw_context_get_display            (GdkDrawContext         *context);

GdkSurface *            gdk_draw_context_get_surface            (GdkDrawContext         *context);


void                    gdk_draw_context_begin_frame            (GdkDrawContext         *context,
                                                                 const cairo_region_t   *region);

void                    gdk_draw_context_end_frame              (GdkDrawContext         *context);


gboolean                gdk_draw_context_is_in_frame            (GdkDrawContext         *context);

const cairo_region_t *  gdk_draw_context_get_frame_region       (GdkDrawContext         *context);





