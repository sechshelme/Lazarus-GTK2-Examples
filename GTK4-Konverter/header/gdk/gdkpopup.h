/*
 * Copyright © 2020 Red Hat, Inc.
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
 * Authors: Matthias Clasen <mclasen@redhat.com>
 */

#ifndef __GDK_POPUP_H__
#define __GDK_POPUP_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkpopuplayout.h>
#include <gdk/gdksurface.h>

/* Zeile entfernt */

#define GDK_TYPE_POPUP (gdk_popup_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
gboolean        gdk_popup_present               (GdkPopup       *popup,
                                                 int             width,
                                                 int             height,
                                                 GdkPopupLayout *layout);

/* Zeile entfernt */
GdkGravity      gdk_popup_get_surface_anchor    (GdkPopup       *popup);

/* Zeile entfernt */
GdkGravity      gdk_popup_get_rect_anchor       (GdkPopup       *popup);

/* Zeile entfernt */
GdkSurface *    gdk_popup_get_parent            (GdkPopup       *popup);

/* Zeile entfernt */
int             gdk_popup_get_position_x        (GdkPopup       *popup);

/* Zeile entfernt */
int             gdk_popup_get_position_y        (GdkPopup       *popup);

/* Zeile entfernt */
gboolean        gdk_popup_get_autohide          (GdkPopup       *popup);

/* Zeile entfernt */

#endif /* __GDK_POPUP_H__ */
