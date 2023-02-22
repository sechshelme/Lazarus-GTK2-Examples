/*
 * gdkdisplay.h
 *
 * Copyright 2001 Sun Microsystems Inc.
 *
 * Erwann Chenede <erwann.chenede@sun.com>
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

#ifndef __GDK_DISPLAY_H__
#define __GDK_DISPLAY_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkversionmacros.h>
#include <gdk/gdktypes.h>
#include <gdk/gdkevents.h>
#include <gdk/gdkseat.h>
#include <gdk/gdkmonitor.h>

/* Zeile entfernt */

#define GDK_TYPE_DISPLAY              (gdk_display_get_type ())
#define GDK_DISPLAY(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), GDK_TYPE_DISPLAY, GdkDisplay))
#define GDK_IS_DISPLAY(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), GDK_TYPE_DISPLAY))

/* Zeile entfernt */
GType       gdk_display_get_type (void) ;
/* Zeile entfernt */
GdkDisplay *gdk_display_open                (const char *display_name);

/* Zeile entfernt */
const char * gdk_display_get_name         (GdkDisplay *display);

/* Zeile entfernt */
gboolean    gdk_display_device_is_grabbed  (GdkDisplay  *display,
                                            GdkDevice   *device);
/* Zeile entfernt */
void        gdk_display_beep               (GdkDisplay  *display);
/* Zeile entfernt */
void        gdk_display_sync               (GdkDisplay  *display);
/* Zeile entfernt */
void        gdk_display_flush              (GdkDisplay  *display);

/* Zeile entfernt */
void        gdk_display_close                  (GdkDisplay  *display);
/* Zeile entfernt */
gboolean    gdk_display_is_closed          (GdkDisplay  *display);

/* Zeile entfernt */
gboolean    gdk_display_is_composited      (GdkDisplay  *display);
/* Zeile entfernt */
gboolean    gdk_display_is_rgba            (GdkDisplay  *display);
/* Zeile entfernt */
gboolean    gdk_display_supports_input_shapes (GdkDisplay    *display);

/* Zeile entfernt */
gboolean    gdk_display_prepare_gl         (GdkDisplay  *self,
                                            GError     **error);
/* Zeile entfernt */
GdkGLContext *gdk_display_create_gl_context(GdkDisplay  *self,
                                            GError     **error);

/* Zeile entfernt */
GdkDisplay *gdk_display_get_default (void);

/* Zeile entfernt */
GdkClipboard *          gdk_display_get_clipboard               (GdkDisplay     *display);
/* Zeile entfernt */
GdkClipboard *          gdk_display_get_primary_clipboard       (GdkDisplay     *display);

/* Zeile entfernt */
void     gdk_display_notify_startup_complete   (GdkDisplay    *display,
                                                const char    *startup_id);
/* Zeile entfernt */
const char * gdk_display_get_startup_notification_id (GdkDisplay *display);

/* Zeile entfernt */
GdkAppLaunchContext *gdk_display_get_app_launch_context (GdkDisplay *display);

/* Zeile entfernt */
GdkSeat * gdk_display_get_default_seat (GdkDisplay *display);

/* Zeile entfernt */
GList   * gdk_display_list_seats       (GdkDisplay *display);

/* Zeile entfernt */
GListModel * gdk_display_get_monitors          (GdkDisplay *self) ;
/* Zeile entfernt */
GdkMonitor * gdk_display_get_monitor_at_surface (GdkDisplay *display,
                                                GdkSurface  *surface);

/* Zeile entfernt */
void      gdk_display_put_event  (GdkDisplay     *display,
                                  GdkEvent       *event);

/* Zeile entfernt */
gboolean       gdk_display_map_keyval  (GdkDisplay    *display,
                                        guint          keyval,
                                        GdkKeymapKey **keys,
                                        int           *n_keys);

/* Zeile entfernt */
gboolean       gdk_display_map_keycode (GdkDisplay    *display,
                                        guint          keycode,
                                        GdkKeymapKey **keys,
                                        guint        **keyvals,
                                        int           *n_entries);

/* Zeile entfernt */
gboolean       gdk_display_translate_key (GdkDisplay      *display,
                                          guint            keycode,
                                          GdkModifierType  state,
                                          int              group,
                                          guint           *keyval,
                                          int             *effective_group,
                                          int             *level,
                                          GdkModifierType *consumed);

/* Zeile entfernt */
gboolean     gdk_display_get_setting (GdkDisplay *display,
                                      const char *name,
                                      GValue     *value);



/* Zeile entfernt */

#endif  /* __GDK_DISPLAY_H__ */
