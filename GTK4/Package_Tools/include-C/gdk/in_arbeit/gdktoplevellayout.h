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

#pragma once

#if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>
#include <gdk/gdkmonitor.h>



typedef struct _GdkToplevelLayout GdkToplevelLayout;

#define GDK_TYPE_TOPLEVEL_LAYOUT (gdk_toplevel_layout_get_type ())


GType                   gdk_toplevel_layout_get_type    (void);


GdkToplevelLayout *     gdk_toplevel_layout_new         (void);


GdkToplevelLayout *     gdk_toplevel_layout_ref         (GdkToplevelLayout *layout);


void                    gdk_toplevel_layout_unref       (GdkToplevelLayout *layout);


GdkToplevelLayout *     gdk_toplevel_layout_copy        (GdkToplevelLayout *layout);


gboolean                gdk_toplevel_layout_equal       (GdkToplevelLayout *layout,
                                                         GdkToplevelLayout *other);


void                    gdk_toplevel_layout_set_maximized (GdkToplevelLayout *layout,
                                                           gboolean           maximized);

void                    gdk_toplevel_layout_set_fullscreen (GdkToplevelLayout *layout,
                                                            gboolean           fullscreen,
                                                            GdkMonitor        *monitor);


gboolean                gdk_toplevel_layout_get_maximized (GdkToplevelLayout *layout,
                                                           gboolean          *maximized);


gboolean                gdk_toplevel_layout_get_fullscreen (GdkToplevelLayout *layout,
                                                            gboolean          *fullscreen);


GdkMonitor *            gdk_toplevel_layout_get_fullscreen_monitor (GdkToplevelLayout *layout);


void                    gdk_toplevel_layout_set_resizable (GdkToplevelLayout *layout,
                                                           gboolean           resizable);


gboolean                gdk_toplevel_layout_get_resizable (GdkToplevelLayout *layout);





