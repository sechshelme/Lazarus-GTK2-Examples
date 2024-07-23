/*
 * Copyright © 2018 Benjamin Otte
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
 * Authors: Benjamin Otte <otte@gnome.org>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gdk/gdk.h>



#define GTK_TYPE_MEDIA_STREAM             (gtk_media_stream_get_type ())


//G_DECLARE_DERIVABLE_TYPE (GtkMediaStream, gtk_media_stream, GTK, MEDIA_STREAM, GObject)

struct _GtkMediaStreamClass
{
  GObjectClass parent_class;

  gboolean              (* play)                                (GtkMediaStream *self);
  void                  (* pause)                               (GtkMediaStream *self);
  void                  (* seek)                                (GtkMediaStream *self,
                                                                 gint64          timestamp);
  void                  (* update_audio)                        (GtkMediaStream *self,
                                                                 gboolean        muted,
                                                                 double          volume);
  void                  (* realize)                             (GtkMediaStream *self,
                                                                 GdkSurface      *surface);
  void                  (* unrealize)                           (GtkMediaStream *self,
                                                                 GdkSurface      *surface);

  /* Padding for future expansion */
  void (*_gtk_reserved1) (void);
  void (*_gtk_reserved2) (void);
  void (*_gtk_reserved3) (void);
  void (*_gtk_reserved4) (void);
  void (*_gtk_reserved5) (void);
  void (*_gtk_reserved6) (void);
  void (*_gtk_reserved7) (void);
  void (*_gtk_reserved8) (void);
};


gboolean                gtk_media_stream_is_prepared            (GtkMediaStream *self);

const GError *          gtk_media_stream_get_error              (GtkMediaStream *self);

gboolean                gtk_media_stream_has_audio              (GtkMediaStream *self);

gboolean                gtk_media_stream_has_video              (GtkMediaStream *self);


void                    gtk_media_stream_play                   (GtkMediaStream *self);

void                    gtk_media_stream_pause                  (GtkMediaStream *self);

gboolean                gtk_media_stream_get_playing            (GtkMediaStream *self);

void                    gtk_media_stream_set_playing            (GtkMediaStream *self,
                                                                 gboolean        playing);

gboolean                gtk_media_stream_get_ended              (GtkMediaStream *self);


gint64                  gtk_media_stream_get_timestamp          (GtkMediaStream *self);

gint64                  gtk_media_stream_get_duration           (GtkMediaStream *self);


gboolean                gtk_media_stream_is_seekable            (GtkMediaStream *self);

gboolean                gtk_media_stream_is_seeking             (GtkMediaStream *self);

void                    gtk_media_stream_seek                   (GtkMediaStream *self,
                                                                 gint64          timestamp);

gboolean                gtk_media_stream_get_loop               (GtkMediaStream *self);

void                    gtk_media_stream_set_loop               (GtkMediaStream *self,
                                                                 gboolean        loop);

gboolean                gtk_media_stream_get_muted              (GtkMediaStream *self);

void                    gtk_media_stream_set_muted              (GtkMediaStream *self,
                                                                 gboolean        muted);

double                  gtk_media_stream_get_volume             (GtkMediaStream *self);

void                    gtk_media_stream_set_volume             (GtkMediaStream *self,
                                                                 double          volume);

void                    gtk_media_stream_realize                (GtkMediaStream *self,
                                                                 GdkSurface      *surface);

void                    gtk_media_stream_unrealize              (GtkMediaStream *self,
                                                                 GdkSurface      *surface);

/* for implementations only */
//GDK_DEPRECATED_IN_4_4_FOR(gtk_media_stream_stream_prepared)
void                    gtk_media_stream_prepared               (GtkMediaStream *self,
                                                                 gboolean        has_audio,
                                                                 gboolean        has_video,
                                                                 gboolean        seekable,
                                                                 gint64          duration);
//GDK_DEPRECATED_IN_4_4_FOR(gtk_media_stream_stream_unprepared)
void                    gtk_media_stream_unprepared             (GtkMediaStream *self);


void                    gtk_media_stream_stream_prepared        (GtkMediaStream *self,
                                                                 gboolean        has_audio,
                                                                 gboolean        has_video,
                                                                 gboolean        seekable,
                                                                 gint64          duration);

void                    gtk_media_stream_stream_unprepared      (GtkMediaStream *self);


void                    gtk_media_stream_update                 (GtkMediaStream *self,
                                                                 gint64          timestamp);
//GDK_DEPRECATED_IN_4_4_FOR(gtk_media_stream_stream_ended)
void                    gtk_media_stream_ended                  (GtkMediaStream *self);

void                    gtk_media_stream_stream_ended           (GtkMediaStream *self);

void                    gtk_media_stream_seek_success           (GtkMediaStream *self);

void                    gtk_media_stream_seek_failed            (GtkMediaStream *self);

void                    gtk_media_stream_gerror                 (GtkMediaStream *self,
                                                                 GError         *error);

void                    gtk_media_stream_error                  (GtkMediaStream *self,
                                                                 GQuark          domain,
                                                                 int             code,
                                                                 const char     *format,
                                                                 ...) ;

void                    gtk_media_stream_error_valist           (GtkMediaStream *self,
                                                                 GQuark          domain,
                                                                 int             code,
                                                                 const char     *format,
                                                                 va_list         args);



