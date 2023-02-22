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

#ifndef __GTK_LIST_ITEM_H__
#define __GTK_LIST_ITEM_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_LIST_ITEM         (gtk_list_item_get_type ())
#define GTK_LIST_ITEM(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_LIST_ITEM, GtkListItem))
#define GTK_LIST_ITEM_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_LIST_ITEM, GtkListItemClass))
#define GTK_IS_LIST_ITEM(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_LIST_ITEM))
#define GTK_IS_LIST_ITEM_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_LIST_ITEM))
#define GTK_LIST_ITEM_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_LIST_ITEM, GtkListItemClass))

typedef struct _GtkListItem GtkListItem;
typedef struct _GtkListItemClass GtkListItemClass;

/* Zeile entfernt */
GType           gtk_list_item_get_type                          (void) ;

/* Zeile entfernt */
gpointer        gtk_list_item_get_item                          (GtkListItem            *self);
/* Zeile entfernt */
guint           gtk_list_item_get_position                      (GtkListItem            *self) ;
/* Zeile entfernt */
gboolean        gtk_list_item_get_selected                      (GtkListItem            *self) ;
/* Zeile entfernt */
gboolean        gtk_list_item_get_selectable                    (GtkListItem            *self) ;
/* Zeile entfernt */
void            gtk_list_item_set_selectable                    (GtkListItem            *self,
                                                                 gboolean                selectable);
/* Zeile entfernt */
gboolean        gtk_list_item_get_activatable                   (GtkListItem            *self) ;
/* Zeile entfernt */
void            gtk_list_item_set_activatable                   (GtkListItem            *self,
                                                                 gboolean                activatable);

/* Zeile entfernt */
void            gtk_list_item_set_child                         (GtkListItem            *self,
                                                                 GtkWidget              *child);
/* Zeile entfernt */
GtkWidget *     gtk_list_item_get_child                         (GtkListItem            *self);


/* Zeile entfernt */

#endif  /* __GTK_LIST_ITEM_H__ */
