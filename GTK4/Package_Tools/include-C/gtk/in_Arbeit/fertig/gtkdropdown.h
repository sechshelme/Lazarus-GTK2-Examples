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

#pragma once

#include <gtk/gtkwidget.h>
#include <gtk/gtkexpression.h>
#include "gtk/gtkstringfilter.h"



#define GTK_TYPE_DROP_DOWN         (gtk_drop_down_get_type ())


//G_DECLARE_FINAL_TYPE (GtkDropDown, gtk_drop_down, GTK, DROP_DOWN, GtkWidget)


GtkWidget *     gtk_drop_down_new                               (GListModel             *model,
                                                                 GtkExpression          *expression);


GtkWidget *     gtk_drop_down_new_from_strings                  (const char * const *    strings);


void            gtk_drop_down_set_model                         (GtkDropDown            *self,
                                                                 GListModel             *model);

GListModel *    gtk_drop_down_get_model                         (GtkDropDown            *self);


void            gtk_drop_down_set_selected                      (GtkDropDown            *self,
                                                                 guint                   position);

guint           gtk_drop_down_get_selected                      (GtkDropDown            *self);


gpointer        gtk_drop_down_get_selected_item                 (GtkDropDown            *self);


void            gtk_drop_down_set_factory                       (GtkDropDown            *self,
                                                                 GtkListItemFactory     *factory);

GtkListItemFactory *
                gtk_drop_down_get_factory                       (GtkDropDown            *self);


void            gtk_drop_down_set_list_factory                  (GtkDropDown            *self,
                                                                 GtkListItemFactory     *factory);

GtkListItemFactory *
                gtk_drop_down_get_list_factory                  (GtkDropDown            *self);


void            gtk_drop_down_set_header_factory                (GtkDropDown            *self,
                                                                 GtkListItemFactory     *factory);

GtkListItemFactory *
                gtk_drop_down_get_header_factory                (GtkDropDown            *self);


void            gtk_drop_down_set_expression                    (GtkDropDown            *self,
                                                                 GtkExpression          *expression);

GtkExpression * gtk_drop_down_get_expression                    (GtkDropDown            *self);


void            gtk_drop_down_set_enable_search                 (GtkDropDown            *self,
                                                                 gboolean                enable_search);

gboolean        gtk_drop_down_get_enable_search                 (GtkDropDown            *self);


void            gtk_drop_down_set_show_arrow                    (GtkDropDown            *self,
                                                                 gboolean                show_arrow);

gboolean        gtk_drop_down_get_show_arrow                    (GtkDropDown            *self);


void            gtk_drop_down_set_search_match_mode             (GtkDropDown            *self,
                                                                 GtkStringFilterMatchMode search_match_mode);

GtkStringFilterMatchMode
                gtk_drop_down_get_search_match_mode             (GtkDropDown            *self);



