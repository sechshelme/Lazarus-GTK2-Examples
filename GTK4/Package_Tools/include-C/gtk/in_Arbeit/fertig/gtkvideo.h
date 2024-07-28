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

#include <gtk/gtkmediastream.h>
#include <gtk/gtkwidget.h>
#include <gtk/gtkgraphicsoffload.h>



#define GTK_TYPE_VIDEO         (gtk_video_get_type ())


//G_DECLARE_FINAL_TYPE (GtkVideo, gtk_video, GTK, VIDEO, GtkWidget)


GtkWidget *     gtk_video_new                           (void);

GtkWidget *     gtk_video_new_for_media_stream          (GtkMediaStream         *stream);

GtkWidget *     gtk_video_new_for_file                  (GFile                  *file);

GtkWidget *     gtk_video_new_for_filename              (const char             *filename);

GtkWidget *     gtk_video_new_for_resource              (const char             *resource_path);


GtkMediaStream *gtk_video_get_media_stream              (GtkVideo               *self);

void            gtk_video_set_media_stream              (GtkVideo               *self,
                                                         GtkMediaStream         *stream);

GFile *         gtk_video_get_file                      (GtkVideo               *self);

void            gtk_video_set_file                      (GtkVideo               *self,
                                                         GFile                  *file);

void            gtk_video_set_filename                  (GtkVideo               *self,
                                                         const char             *filename);

void            gtk_video_set_resource                  (GtkVideo               *self,
                                                         const char             *resource_path);

gboolean        gtk_video_get_autoplay                  (GtkVideo               *self);

void            gtk_video_set_autoplay                  (GtkVideo               *self,
                                                         gboolean                autoplay);

gboolean        gtk_video_get_loop                      (GtkVideo               *self);

void            gtk_video_set_loop                      (GtkVideo               *self,
                                                         gboolean                loop);


GtkGraphicsOffloadEnabled
                gtk_video_get_graphics_offload          (GtkVideo               *self);

void            gtk_video_set_graphics_offload          (GtkVideo               *self,
                                                         GtkGraphicsOffloadEnabled enabled);



