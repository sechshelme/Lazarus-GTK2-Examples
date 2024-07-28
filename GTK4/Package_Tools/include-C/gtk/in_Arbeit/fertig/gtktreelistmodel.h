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

#include <gio/gio.h>
#include <gtk/gtkwidget.h>




#define GTK_TYPE_TREE_LIST_MODEL (gtk_tree_list_model_get_type ())
#define GTK_TYPE_TREE_LIST_ROW (gtk_tree_list_row_get_type ())


//G_DECLARE_FINAL_TYPE (GtkTreeListModel, gtk_tree_list_model, GTK, TREE_LIST_MODEL, GObject)

//G_DECLARE_FINAL_TYPE (GtkTreeListRow, gtk_tree_list_row, GTK, TREE_LIST_ROW, GObject)

/**
 * GtkTreeListModelCreateModelFunc:
 * @item: (type GObject): The item that is being expanded
 * @user_data: User data passed when registering the function
 *
 * Prototype of the function called to create new child models when
 * gtk_tree_list_row_set_expanded() is called.
 *
 * This function can return %NULL to indicate that @item is guaranteed to be
 * a leaf node and will never have children. If it does not have children but
 * may get children later, it should return an empty model that is filled once
 * children arrive.
 *
 * Returns: (nullable) (transfer full): The model tracking the children of
 *   @item or %NULL if @item can never have children
 */
typedef GListModel * (* GtkTreeListModelCreateModelFunc) (gpointer item, gpointer user_data);


GtkTreeListModel *      gtk_tree_list_model_new                 (GListModel             *root,
                                                                 gboolean                passthrough,
                                                                 gboolean                autoexpand,
                                                                 GtkTreeListModelCreateModelFunc create_func,
                                                                 gpointer                user_data,
                                                                 GDestroyNotify          user_destroy);


GListModel *            gtk_tree_list_model_get_model           (GtkTreeListModel       *self);

gboolean                gtk_tree_list_model_get_passthrough     (GtkTreeListModel       *self);

void                    gtk_tree_list_model_set_autoexpand      (GtkTreeListModel       *self,
                                                                 gboolean                autoexpand);

gboolean                gtk_tree_list_model_get_autoexpand      (GtkTreeListModel       *self);


GtkTreeListRow *        gtk_tree_list_model_get_child_row       (GtkTreeListModel       *self,
                                                                 guint                   position);

GtkTreeListRow *        gtk_tree_list_model_get_row             (GtkTreeListModel       *self,
                                                                 guint                   position);


gpointer                gtk_tree_list_row_get_item              (GtkTreeListRow         *self);

void                    gtk_tree_list_row_set_expanded          (GtkTreeListRow         *self,
                                                                 gboolean                expanded);

gboolean                gtk_tree_list_row_get_expanded          (GtkTreeListRow         *self);

gboolean                gtk_tree_list_row_is_expandable         (GtkTreeListRow         *self);

guint                   gtk_tree_list_row_get_position          (GtkTreeListRow         *self);

guint                   gtk_tree_list_row_get_depth             (GtkTreeListRow         *self);

GListModel *            gtk_tree_list_row_get_children          (GtkTreeListRow         *self);

GtkTreeListRow *        gtk_tree_list_row_get_parent            (GtkTreeListRow         *self);

GtkTreeListRow *        gtk_tree_list_row_get_child_row         (GtkTreeListRow         *self,
                                                                 guint                   position);




