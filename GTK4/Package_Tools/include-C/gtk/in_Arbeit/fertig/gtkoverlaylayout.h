/* gtkoverlaylayout.h: Overlay layout manager
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 *
 * Copyright 2019 Red Hat, Inc.
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

#include <gtk/gtklayoutmanager.h>



#define GTK_TYPE_OVERLAY_LAYOUT (gtk_overlay_layout_get_type ())
#define GTK_TYPE_OVERLAY_LAYOUT_CHILD (gtk_overlay_layout_child_get_type ())

/* GtkOverlayLayout */


//G_DECLARE_FINAL_TYPE (GtkOverlayLayout, gtk_overlay_layout, GTK, OVERLAY_LAYOUT, GtkLayoutManager)


GtkLayoutManager *      gtk_overlay_layout_new    (void);

/* GtkOverlayLayoutChild */


//G_DECLARE_FINAL_TYPE (GtkOverlayLayoutChild, gtk_overlay_layout_child, GTK, OVERLAY_LAYOUT_CHILD, GtkLayoutChild)


void            gtk_overlay_layout_child_set_measure (GtkOverlayLayoutChild *child,
                                                      gboolean               measure);


gboolean        gtk_overlay_layout_child_get_measure (GtkOverlayLayoutChild *child);


void            gtk_overlay_layout_child_set_clip_overlay (GtkOverlayLayoutChild *child,
                                                           gboolean               clip_overlay);


gboolean        gtk_overlay_layout_child_get_clip_overlay (GtkOverlayLayoutChild *child);


