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

#include <gio/gio.h>
#include <gtk/gtkwidget.h>




#define GTK_TYPE_PICTURE (gtk_picture_get_type ())


//G_DECLARE_FINAL_TYPE (GtkPicture, gtk_picture, GTK, PICTURE, GtkWidget)


GtkWidget*      gtk_picture_new                         (void);

GtkWidget*      gtk_picture_new_for_paintable           (GdkPaintable           *paintable);
GtkWidget*      gtk_picture_new_for_pixbuf              (GdkPixbuf              *pixbuf);

GtkWidget*      gtk_picture_new_for_file                (GFile                  *file);

GtkWidget*      gtk_picture_new_for_filename            (const char             *filename);

GtkWidget*      gtk_picture_new_for_resource            (const char             *resource_path);


void            gtk_picture_set_paintable               (GtkPicture             *self,
                                                         GdkPaintable           *paintable);

GdkPaintable *  gtk_picture_get_paintable               (GtkPicture             *self);

void            gtk_picture_set_file                    (GtkPicture             *self,
                                                         GFile                  *file);

GFile *         gtk_picture_get_file                    (GtkPicture             *self);

void            gtk_picture_set_filename                (GtkPicture             *self,
                                                         const char             *filename);

void            gtk_picture_set_resource                (GtkPicture             *self,
                                                         const char             *resource_path);
void            gtk_picture_set_pixbuf                  (GtkPicture             *self,
                                                         GdkPixbuf              *pixbuf);

void            gtk_picture_set_keep_aspect_ratio       (GtkPicture             *self,
                                                         gboolean                keep_aspect_ratio);
gboolean        gtk_picture_get_keep_aspect_ratio       (GtkPicture             *self);

void            gtk_picture_set_can_shrink              (GtkPicture             *self,
                                                         gboolean                can_shrink);

gboolean        gtk_picture_get_can_shrink              (GtkPicture             *self);


void            gtk_picture_set_content_fit             (GtkPicture             *self,
                                                         GtkContentFit           content_fit);

GtkContentFit   gtk_picture_get_content_fit             (GtkPicture             *self);


void            gtk_picture_set_alternative_text        (GtkPicture             *self,
                                                         const char             *alternative_text);

const char *    gtk_picture_get_alternative_text        (GtkPicture             *self);




