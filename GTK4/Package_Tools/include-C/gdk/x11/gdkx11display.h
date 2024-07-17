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

#if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/x11/gdkx.h> can be included directly."
#endif

#include <gdk/gdk.h>
#include <gdk/x11/gdkx11screen.h>

#include <X11/Xlib.h>
#include <X11/Xutil.h>



#ifdef GTK_COMPILATION
typedef struct _GdkX11Display GdkX11Display;
#else
typedef GdkDisplay GdkX11Display;
#endif
typedef struct _GdkX11DisplayClass GdkX11DisplayClass;

#define GDK_TYPE_X11_DISPLAY              (gdk_x11_display_get_type())
#define GDK_X11_DISPLAY(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), GDK_TYPE_X11_DISPLAY, GdkX11Display))
#define GDK_X11_DISPLAY_CLASS(klass)      (G_TYPE_CHECK_CLASS_CAST ((klass), GDK_TYPE_X11_DISPLAY, GdkX11DisplayClass))
#define GDK_IS_X11_DISPLAY(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), GDK_TYPE_X11_DISPLAY))
#define GDK_IS_X11_DISPLAY_CLASS(klass)   (G_TYPE_CHECK_CLASS_TYPE ((klass), GDK_TYPE_X11_DISPLAY))
#define GDK_X11_DISPLAY_GET_CLASS(obj)    (G_TYPE_INSTANCE_GET_CLASS ((obj), GDK_TYPE_X11_DISPLAY, GdkX11DisplayClass))


GType      gdk_x11_display_get_type            (void);


GdkDisplay *  gdk_x11_display_open        (const char  *display_name);


Display *     gdk_x11_display_get_xdisplay     (GdkDisplay  *display);

Screen *      gdk_x11_display_get_xscreen      (GdkDisplay  *display);

Window        gdk_x11_display_get_xrootwindow  (GdkDisplay  *display);

Cursor        gdk_x11_display_get_xcursor      (GdkDisplay  *display,
                                                GdkCursor   *cursor);

/**
 * GDK_DISPLAY_XDISPLAY:
 * @display: a `GdkDisplay`
 *
 * Returns the display of a `GdkDisplay`.
 *
 * Returns: an Xlib Display*
 */
#define GDK_DISPLAY_XDISPLAY(display) (gdk_x11_display_get_xdisplay (display))


guint32       gdk_x11_display_get_user_time (GdkDisplay *display);


const char * gdk_x11_display_get_startup_notification_id         (GdkDisplay *display);

void          gdk_x11_display_set_startup_notification_id         (GdkDisplay  *display,
                                                                   const char *startup_id);

void          gdk_x11_display_set_program_class                   (GdkDisplay  *display,
                                                                   const char  *program_class);


void          gdk_x11_display_set_cursor_theme (GdkDisplay  *display,
                                                const char *theme,
                                                const int    size);


void gdk_x11_display_broadcast_startup_message (GdkDisplay *display,
                                                const char *message_type,
                                                ...) ;


GdkDisplay   *gdk_x11_lookup_xdisplay (Display *xdisplay);


GdkX11Screen *gdk_x11_display_get_screen (GdkDisplay *display);


GdkMonitor * gdk_x11_display_get_primary_monitor (GdkDisplay *display);


void        gdk_x11_display_grab              (GdkDisplay *display);

void        gdk_x11_display_ungrab            (GdkDisplay *display);


void        gdk_x11_display_set_surface_scale (GdkDisplay *display,
                                               int scale);


void                           gdk_x11_display_error_trap_push        (GdkDisplay *display);
/* warn unused because you could use pop_ignored otherwise */

 int  gdk_x11_display_error_trap_pop         (GdkDisplay *display);

void                           gdk_x11_display_error_trap_pop_ignored (GdkDisplay *display);


void        gdk_x11_set_sm_client_id (const char *sm_client_id);


GdkSurface * gdk_x11_display_get_default_group (GdkDisplay *display);



