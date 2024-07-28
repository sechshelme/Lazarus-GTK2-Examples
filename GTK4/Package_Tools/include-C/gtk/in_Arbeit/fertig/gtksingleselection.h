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

#include <gtk/gtktypes.h>



#define GTK_TYPE_SINGLE_SELECTION (gtk_single_selection_get_type ())


//G_DECLARE_FINAL_TYPE (GtkSingleSelection, gtk_single_selection, GTK, SINGLE_SELECTION, GObject)


GtkSingleSelection *    gtk_single_selection_new                (GListModel             *model);


GListModel *            gtk_single_selection_get_model          (GtkSingleSelection     *self);

void                    gtk_single_selection_set_model          (GtkSingleSelection     *self,
                                                                 GListModel             *model);

guint                   gtk_single_selection_get_selected       (GtkSingleSelection     *self);

void                    gtk_single_selection_set_selected       (GtkSingleSelection     *self,
                                                                 guint                   position);

gpointer                gtk_single_selection_get_selected_item  (GtkSingleSelection     *self);

gboolean                gtk_single_selection_get_autoselect     (GtkSingleSelection     *self);

void                    gtk_single_selection_set_autoselect     (GtkSingleSelection     *self,
                                                                 gboolean                autoselect);

gboolean                gtk_single_selection_get_can_unselect   (GtkSingleSelection     *self);

void                    gtk_single_selection_set_can_unselect   (GtkSingleSelection     *self,
                                                                 gboolean                can_unselect);



