/* GDK - The GIMP Drawing Kit
 * Copyright (C) 2012 Red Hat, Inc.
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

#ifndef __GDK_FRAME_TIMINGS_H__
#define __GDK_FRAME_TIMINGS_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <glib-object.h>
#include <gdk/gdkversionmacros.h>

/* Zeile entfernt */

typedef struct _GdkFrameTimings GdkFrameTimings;

/* Zeile entfernt */
GType            gdk_frame_timings_get_type (void) ;

/* Zeile entfernt */
GdkFrameTimings *gdk_frame_timings_ref   (GdkFrameTimings *timings);
/* Zeile entfernt */
void             gdk_frame_timings_unref (GdkFrameTimings *timings);

/* Zeile entfernt */
gint64           gdk_frame_timings_get_frame_counter     (GdkFrameTimings *timings);
/* Zeile entfernt */
gboolean         gdk_frame_timings_get_complete          (GdkFrameTimings *timings);
/* Zeile entfernt */
gint64           gdk_frame_timings_get_frame_time        (GdkFrameTimings *timings);
/* Zeile entfernt */
gint64           gdk_frame_timings_get_presentation_time (GdkFrameTimings *timings);
/* Zeile entfernt */
gint64           gdk_frame_timings_get_refresh_interval  (GdkFrameTimings *timings);

/* Zeile entfernt */
gint64           gdk_frame_timings_get_predicted_presentation_time (GdkFrameTimings *timings);

/* Zeile entfernt */

#endif /* __GDK_FRAME_TIMINGS_H__ */
