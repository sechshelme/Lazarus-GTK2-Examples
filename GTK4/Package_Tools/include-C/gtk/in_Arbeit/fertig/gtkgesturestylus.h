/* GTK - The GIMP Toolkit
 * Copyright (C) 2017-2018, Red Hat, Inc.
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
 * Author(s): Carlos Garnacho <carlosg@gnome.org>
 */
#pragma once

#include <gtk/gtkgesture.h>

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif



#define GTK_TYPE_GESTURE_STYLUS         (gtk_gesture_stylus_get_type ())
#define GTK_GESTURE_STYLUS(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_GESTURE_STYLUS, GtkGestureStylus))
#define GTK_GESTURE_STYLUS_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_GESTURE_STYLUS, GtkGestureStylusClass))
#define GTK_IS_GESTURE_STYLUS(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_GESTURE_STYLUS))
#define GTK_IS_GESTURE_STYLUS_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_GESTURE_STYLUS))
#define GTK_GESTURE_STYLUS_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_GESTURE_STYLUS, GtkGestureStylusClass))

typedef struct _GtkGestureStylus GtkGestureStylus;
typedef struct _GtkGestureStylusClass GtkGestureStylusClass;


GType             gtk_gesture_stylus_get_type (void) ;


GtkGesture *      gtk_gesture_stylus_new      (void);


gboolean          gtk_gesture_stylus_get_stylus_only (GtkGestureStylus *gesture);

void              gtk_gesture_stylus_set_stylus_only (GtkGestureStylus *gesture,
						      gboolean          stylus_only);


gboolean          gtk_gesture_stylus_get_axis (GtkGestureStylus *gesture,
					       GdkAxisUse        axis,
					       double           *value);

gboolean          gtk_gesture_stylus_get_axes (GtkGestureStylus  *gesture,
					       GdkAxisUse         axes[],
					       double           **values);

gboolean          gtk_gesture_stylus_get_backlog (GtkGestureStylus  *gesture,
						  GdkTimeCoord     **backlog,
						  guint             *n_elems);

GdkDeviceTool *   gtk_gesture_stylus_get_device_tool (GtkGestureStylus *gesture);



