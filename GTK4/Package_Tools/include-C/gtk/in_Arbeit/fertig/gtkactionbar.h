/*
 * Copyright (c) 2013 - 2014 Red Hat, Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>



#define GTK_TYPE_ACTION_BAR            (gtk_action_bar_get_type ())
#define GTK_ACTION_BAR(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_ACTION_BAR, GtkActionBar))
#define GTK_IS_ACTION_BAR(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_ACTION_BAR))

typedef struct _GtkActionBar              GtkActionBar;


GType        gtk_action_bar_get_type          (void) ;

GtkWidget   *gtk_action_bar_new               (void);

GtkWidget   *gtk_action_bar_get_center_widget (GtkActionBar *action_bar);

void         gtk_action_bar_set_center_widget (GtkActionBar *action_bar,
                                               GtkWidget    *center_widget);


void         gtk_action_bar_pack_start        (GtkActionBar *action_bar,
                                               GtkWidget    *child);

void         gtk_action_bar_pack_end          (GtkActionBar *action_bar,
                                               GtkWidget    *child);


void         gtk_action_bar_remove            (GtkActionBar *action_bar,
                                               GtkWidget    *child);


void        gtk_action_bar_set_revealed       (GtkActionBar *action_bar,
                                               gboolean      revealed);

gboolean    gtk_action_bar_get_revealed       (GtkActionBar *action_bar);





