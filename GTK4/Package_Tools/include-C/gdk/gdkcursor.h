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

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_CURSOR              (gdk_cursor_get_type ())
#define GDK_CURSOR(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), GDK_TYPE_CURSOR, GdkCursor))
#define GDK_IS_CURSOR(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), GDK_TYPE_CURSOR))

/* Cursors
 */


GType      gdk_cursor_get_type           (void) ;


GdkCursor* gdk_cursor_new_from_texture   (GdkTexture      *texture,
                                          int              hotspot_x,
                                          int              hotspot_y,
                                          GdkCursor       *fallback);

GdkCursor*  gdk_cursor_new_from_name     (const char      *name,
                                          GdkCursor       *fallback);


GdkCursor * gdk_cursor_get_fallback      (GdkCursor       *cursor);

const char *gdk_cursor_get_name          (GdkCursor       *cursor);

GdkTexture *gdk_cursor_get_texture       (GdkCursor       *cursor);

int         gdk_cursor_get_hotspot_x     (GdkCursor       *cursor);

int         gdk_cursor_get_hotspot_y     (GdkCursor       *cursor);





