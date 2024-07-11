/* GTK - The GIMP Toolkit
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
 * Modified by the GTK+ Team and others 1997-2001.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>




#define GTK_TYPE_ASPECT_FRAME            (gtk_aspect_frame_get_type ())
#define GTK_ASPECT_FRAME(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_ASPECT_FRAME, GtkAspectFrame))
#define GTK_IS_ASPECT_FRAME(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_ASPECT_FRAME))

typedef struct _GtkAspectFrame      GtkAspectFrame;


GType      gtk_aspect_frame_get_type   (void) ;

GtkWidget* gtk_aspect_frame_new        (float            xalign,
                                        float            yalign,
                                        float            ratio,
                                        gboolean         obey_child);


void       gtk_aspect_frame_set_xalign (GtkAspectFrame *self,
                                        float           xalign);

float      gtk_aspect_frame_get_xalign (GtkAspectFrame *self);


void       gtk_aspect_frame_set_yalign (GtkAspectFrame *self,
                                        float           yalign);

float      gtk_aspect_frame_get_yalign (GtkAspectFrame *self);


void       gtk_aspect_frame_set_ratio  (GtkAspectFrame *self,
                                        float           ratio);

float      gtk_aspect_frame_get_ratio  (GtkAspectFrame *self);


void       gtk_aspect_frame_set_obey_child (GtkAspectFrame *self,
                                            gboolean        obey_child);

gboolean   gtk_aspect_frame_get_obey_child (GtkAspectFrame *self);


void       gtk_aspect_frame_set_child  (GtkAspectFrame *self,
                                        GtkWidget      *child);

GtkWidget *gtk_aspect_frame_get_child  (GtkAspectFrame *self);





