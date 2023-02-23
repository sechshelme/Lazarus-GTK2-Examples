/*
 * Copyright © 2018 Red Hat, Inc.
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
 * Authors: Matthias Clasen
 */

#ifndef __GTK_DROP_DOWN_H__
#define __GTK_DROP_DOWN_H__

#include <gtk/gtkwidget.h>
#include <gtk/gtkexpression.h>

/* Zeile entfernt */

#define GTK_TYPE_DROP_DOWN         (gtk_drop_down_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkWidget *     gtk_drop_down_new                               (GListModel             *model,
                                                                 GtkExpression          *expression);

/* Zeile entfernt */
GtkWidget *     gtk_drop_down_new_from_strings                  (const char * const *    strings);

/* Zeile entfernt */
void            gtk_drop_down_set_model                         (GtkDropDown            *self,
                                                                 GListModel             *model);
/* Zeile entfernt */
GListModel *    gtk_drop_down_get_model                         (GtkDropDown            *self);

/* Zeile entfernt */
void            gtk_drop_down_set_selected                      (GtkDropDown            *self,
                                                                 guint                   position);
/* Zeile entfernt */
guint           gtk_drop_down_get_selected                      (GtkDropDown            *self);

/* Zeile entfernt */
gpointer        gtk_drop_down_get_selected_item                 (GtkDropDown            *self);

/* Zeile entfernt */
void            gtk_drop_down_set_factory                       (GtkDropDown            *self,
                                                                 GtkListItemFactory     *factory);
/* Zeile entfernt */
GtkListItemFactory *
                gtk_drop_down_get_factory                       (GtkDropDown            *self);

/* Zeile entfernt */
void            gtk_drop_down_set_list_factory                  (GtkDropDown            *self,
                                                                 GtkListItemFactory     *factory);
/* Zeile entfernt */
GtkListItemFactory *
                gtk_drop_down_get_list_factory                  (GtkDropDown            *self);

/* Zeile entfernt */
void            gtk_drop_down_set_expression                    (GtkDropDown            *self,
                                                                 GtkExpression          *expression);
/* Zeile entfernt */
GtkExpression * gtk_drop_down_get_expression                    (GtkDropDown            *self);

/* Zeile entfernt */
void            gtk_drop_down_set_enable_search                 (GtkDropDown            *self,
                                                                 gboolean                enable_search);
/* Zeile entfernt */
gboolean        gtk_drop_down_get_enable_search                 (GtkDropDown            *self);
/* Zeile entfernt */
void            gtk_drop_down_set_show_arrow                    (GtkDropDown            *self,
                                                                 gboolean                show_arrow);
/* Zeile entfernt */
gboolean        gtk_drop_down_get_show_arrow                    (GtkDropDown            *self);

/* Zeile entfernt */

#endif  /* __GTK_DROP_DOWN_H__ */
