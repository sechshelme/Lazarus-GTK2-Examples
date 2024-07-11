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
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>





#define GTK_TYPE_VIEWPORT            (gtk_viewport_get_type ())
#define GTK_VIEWPORT(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_VIEWPORT, GtkViewport))
#define GTK_IS_VIEWPORT(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_VIEWPORT))


typedef struct _GtkViewport              GtkViewport;



GType          gtk_viewport_get_type        (void) ;

GtkWidget*     gtk_viewport_new             (GtkAdjustment *hadjustment,
                                             GtkAdjustment *vadjustment);


gboolean       gtk_viewport_get_scroll_to_focus (GtkViewport *viewport);

void           gtk_viewport_set_scroll_to_focus (GtkViewport *viewport,
                                                 gboolean     scroll_to_focus);


void           gtk_viewport_set_child           (GtkViewport *viewport,
                                                 GtkWidget   *child);

GtkWidget *    gtk_viewport_get_child           (GtkViewport *viewport);


void           gtk_viewport_scroll_to           (GtkViewport   *viewport,
                                                 GtkWidget     *descendant,
                                                 GtkScrollInfo *scroll);






