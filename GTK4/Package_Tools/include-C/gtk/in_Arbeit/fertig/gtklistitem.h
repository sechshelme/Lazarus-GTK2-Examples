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

#include <gtk/gtktypes.h>



#define GTK_TYPE_LIST_ITEM (gtk_list_item_get_type ())

//GDK_DECLARE_INTERNAL_TYPE (GtkListItem, gtk_list_item, GTK, LIST_ITEM, GObject)


gpointer        gtk_list_item_get_item                          (GtkListItem            *self);

guint           gtk_list_item_get_position                      (GtkListItem            *self) ;

gboolean        gtk_list_item_get_selected                      (GtkListItem            *self) ;

gboolean        gtk_list_item_get_selectable                    (GtkListItem            *self) ;

void            gtk_list_item_set_selectable                    (GtkListItem            *self,
                                                                 gboolean                selectable);

gboolean        gtk_list_item_get_activatable                   (GtkListItem            *self) ;

void            gtk_list_item_set_activatable                   (GtkListItem            *self,
                                                                 gboolean                activatable);

gboolean        gtk_list_item_get_focusable                     (GtkListItem            *self) ;

void            gtk_list_item_set_focusable                     (GtkListItem            *self,
                                                                 gboolean                focusable);


void            gtk_list_item_set_child                         (GtkListItem            *self,
                                                                 GtkWidget              *child);

GtkWidget *     gtk_list_item_get_child                         (GtkListItem            *self);


void            gtk_list_item_set_accessible_description        (GtkListItem            *self,
                                                                 const char             *description);

const char *    gtk_list_item_get_accessible_description        (GtkListItem            *self);


void            gtk_list_item_set_accessible_label              (GtkListItem            *self,
                                                                 const char             *label);

const char *    gtk_list_item_get_accessible_label              (GtkListItem            *self);



