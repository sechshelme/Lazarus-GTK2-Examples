/* GDK - The GIMP Drawing Kit
 * Copyright (C) 2020 Red Hat
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
 *
 */

#ifndef __GDK_TOPLEVEL_LAYOUT_H__
#define __GDK_TOPLEVEL_LAYOUT_H__

#if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkmonitor.h>
#include <gdk/gdktypes.h>
#include <gdk/gdkversionmacros.h>

/* Zeile entfernt */

typedef struct _GdkToplevelLayout GdkToplevelLayout;

#define GDK_TYPE_TOPLEVEL_LAYOUT (gdk_toplevel_layout_get_type ())

/* Zeile entfernt */
GType                   gdk_toplevel_layout_get_type    (void);

/* Zeile entfernt */
GdkToplevelLayout *     gdk_toplevel_layout_new         (void);

/* Zeile entfernt */
GdkToplevelLayout *     gdk_toplevel_layout_ref         (GdkToplevelLayout *layout);

/* Zeile entfernt */
void                    gdk_toplevel_layout_unref       (GdkToplevelLayout *layout);

/* Zeile entfernt */
GdkToplevelLayout *     gdk_toplevel_layout_copy        (GdkToplevelLayout *layout);

/* Zeile entfernt */
gboolean                gdk_toplevel_layout_equal       (GdkToplevelLayout *layout,
                                                         GdkToplevelLayout *other);

/* Zeile entfernt */
void                    gdk_toplevel_layout_set_maximized (GdkToplevelLayout *layout,
                                                           gboolean           maximized);
/* Zeile entfernt */
void                    gdk_toplevel_layout_set_fullscreen (GdkToplevelLayout *layout,
                                                            gboolean           fullscreen,
                                                            GdkMonitor        *monitor);

/* Zeile entfernt */
gboolean                gdk_toplevel_layout_get_maximized (GdkToplevelLayout *layout,
                                                           gboolean          *maximized);

/* Zeile entfernt */
gboolean                gdk_toplevel_layout_get_fullscreen (GdkToplevelLayout *layout,
                                                            gboolean          *fullscreen);

/* Zeile entfernt */
GdkMonitor *            gdk_toplevel_layout_get_fullscreen_monitor (GdkToplevelLayout *layout);

/* Zeile entfernt */
void                    gdk_toplevel_layout_set_resizable (GdkToplevelLayout *layout,
                                                           gboolean           resizable);

/* Zeile entfernt */
gboolean                gdk_toplevel_layout_get_resizable (GdkToplevelLayout *layout);

/* Zeile entfernt */

#endif /* __GDK_TOPLEVEL_LAYOUT_H__ */
