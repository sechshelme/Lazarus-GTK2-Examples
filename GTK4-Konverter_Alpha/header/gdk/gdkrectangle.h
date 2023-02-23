/* GDK - The GIMP Drawing Kit
 * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#ifndef __GDK_RECTANGLE_H__
#define __GDK_RECTANGLE_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>
#include <gdk/gdkversionmacros.h>

/* Zeile entfernt */

/* Rectangle utilities
 */
/* Zeile entfernt */
gboolean gdk_rectangle_intersect (const GdkRectangle *src1,
                                  const GdkRectangle *src2,
                                  GdkRectangle       *dest);
/* Zeile entfernt */
void     gdk_rectangle_union     (const GdkRectangle *src1,
                                  const GdkRectangle *src2,
                                  GdkRectangle       *dest);

/* Zeile entfernt */
gboolean gdk_rectangle_equal     (const GdkRectangle *rect1,
                                  const GdkRectangle *rect2);

/* Zeile entfernt */
gboolean gdk_rectangle_contains_point (const GdkRectangle *rect,
                                       int                 x,
                                       int                 y);

/* Zeile entfernt */
GType gdk_rectangle_get_type (void) ;

#define GDK_TYPE_RECTANGLE (gdk_rectangle_get_type ())

/* Zeile entfernt */

#endif /* __GDK__RECTANGLE_H__ */
