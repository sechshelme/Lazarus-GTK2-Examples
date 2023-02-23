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

#ifndef __GTK_PICTURE_H__
#define __GTK_PICTURE_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkwidget.h>


/* Zeile entfernt */

#define GTK_TYPE_PICTURE (gtk_picture_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkWidget*      gtk_picture_new                         (void);
/* Zeile entfernt */
GtkWidget*      gtk_picture_new_for_paintable           (GdkPaintable           *paintable);
/* Zeile entfernt */
GtkWidget*      gtk_picture_new_for_pixbuf              (GdkPixbuf              *pixbuf);
/* Zeile entfernt */
GtkWidget*      gtk_picture_new_for_file                (GFile                  *file);
/* Zeile entfernt */
GtkWidget*      gtk_picture_new_for_filename            (const char             *filename);
/* Zeile entfernt */
GtkWidget*      gtk_picture_new_for_resource            (const char             *resource_path);

/* Zeile entfernt */
void            gtk_picture_set_paintable               (GtkPicture             *self,
                                                         GdkPaintable           *paintable);
/* Zeile entfernt */
GdkPaintable *  gtk_picture_get_paintable               (GtkPicture             *self);
/* Zeile entfernt */
void            gtk_picture_set_file                    (GtkPicture             *self,
                                                         GFile                  *file);
/* Zeile entfernt */
GFile *         gtk_picture_get_file                    (GtkPicture             *self);
/* Zeile entfernt */
void            gtk_picture_set_filename                (GtkPicture             *self,
                                                         const char             *filename);
/* Zeile entfernt */
void            gtk_picture_set_resource                (GtkPicture             *self,
                                                         const char             *resource_path);
/* Zeile entfernt */
void            gtk_picture_set_pixbuf                  (GtkPicture             *self,
                                                         GdkPixbuf              *pixbuf);

/* Zeile entfernt */
void            gtk_picture_set_keep_aspect_ratio       (GtkPicture             *self,
                                                         gboolean                keep_aspect_ratio);
/* Zeile entfernt */
gboolean        gtk_picture_get_keep_aspect_ratio       (GtkPicture             *self);
/* Zeile entfernt */
void            gtk_picture_set_can_shrink              (GtkPicture             *self,
                                                         gboolean                can_shrink);
/* Zeile entfernt */
gboolean        gtk_picture_get_can_shrink              (GtkPicture             *self);

/* Zeile entfernt */
void            gtk_picture_set_alternative_text        (GtkPicture             *self,
                                                         const char             *alternative_text);
/* Zeile entfernt */
const char *    gtk_picture_get_alternative_text        (GtkPicture             *self);


/* Zeile entfernt */

#endif /* __GTK_PICTURE_H__ */
