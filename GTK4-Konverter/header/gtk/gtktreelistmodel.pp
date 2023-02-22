
  Type
  PGListModel  = ^GListModel;
  PGtkTreeListModel  = ^GtkTreeListModel;
  PGtkTreeListRow  = ^GtkTreeListRow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
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
    }
{$ifndef __GTK_TREE_LIST_MODEL_H__}
{$define __GTK_TREE_LIST_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_LIST_MODEL : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_LIST_ROW : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  {*
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
    }

  type
    GtkTreeListModelCreateModelFunc = function (item:gpointer; user_data:gpointer):PGListModel;cdecl;
  { Zeile entfernt  }

  function gtk_tree_list_model_new(root:PGListModel; passthrough:gboolean; autoexpand:gboolean; create_func:GtkTreeListModelCreateModelFunc; user_data:gpointer; 
             user_destroy:GDestroyNotify):^GtkTreeListModel;

  { Zeile entfernt  }
  function gtk_tree_list_model_get_model(self:PGtkTreeListModel):^GListModel;

  { Zeile entfernt  }
  function gtk_tree_list_model_get_passthrough(self:PGtkTreeListModel):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_list_model_set_autoexpand(self:PGtkTreeListModel; autoexpand:gboolean);

  { Zeile entfernt  }
  function gtk_tree_list_model_get_autoexpand(self:PGtkTreeListModel):gboolean;

  { Zeile entfernt  }
  function gtk_tree_list_model_get_child_row(self:PGtkTreeListModel; position:guint):^GtkTreeListRow;

  { Zeile entfernt  }
  function gtk_tree_list_model_get_row(self:PGtkTreeListModel; position:guint):^GtkTreeListRow;

  { Zeile entfernt  }
  function gtk_tree_list_row_get_item(self:PGtkTreeListRow):gpointer;

  { Zeile entfernt  }
  procedure gtk_tree_list_row_set_expanded(self:PGtkTreeListRow; expanded:gboolean);

  { Zeile entfernt  }
  function gtk_tree_list_row_get_expanded(self:PGtkTreeListRow):gboolean;

  { Zeile entfernt  }
  function gtk_tree_list_row_is_expandable(self:PGtkTreeListRow):gboolean;

  { Zeile entfernt  }
  function gtk_tree_list_row_get_position(self:PGtkTreeListRow):guint;

  { Zeile entfernt  }
  function gtk_tree_list_row_get_depth(self:PGtkTreeListRow):guint;

  { Zeile entfernt  }
  function gtk_tree_list_row_get_children(self:PGtkTreeListRow):^GListModel;

  { Zeile entfernt  }
  function gtk_tree_list_row_get_parent(self:PGtkTreeListRow):^GtkTreeListRow;

  { Zeile entfernt  }
  function gtk_tree_list_row_get_child_row(self:PGtkTreeListRow; position:guint):^GtkTreeListRow;

  { Zeile entfernt  }
{$endif}
  { __GTK_TREE_LIST_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_LIST_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_LIST_MODEL:=gtk_tree_list_model_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_LIST_ROW : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_LIST_ROW:=gtk_tree_list_row_get_type;
    end;

  function gtk_tree_list_model_new(root:PGListModel; passthrough:gboolean; autoexpand:gboolean; create_func:GtkTreeListModelCreateModelFunc; user_data:gpointer; 
             user_destroy:GDestroyNotify):PGtkTreeListModel;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_model_get_model(self:PGtkTreeListModel):PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_model_get_passthrough(self:PGtkTreeListModel):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_list_model_set_autoexpand(self:PGtkTreeListModel; autoexpand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_model_get_autoexpand(self:PGtkTreeListModel):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_model_get_child_row(self:PGtkTreeListModel; position:guint):PGtkTreeListRow;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_model_get_row(self:PGtkTreeListModel; position:guint):PGtkTreeListRow;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_item(self:PGtkTreeListRow):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_list_row_set_expanded(self:PGtkTreeListRow; expanded:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_expanded(self:PGtkTreeListRow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_is_expandable(self:PGtkTreeListRow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_position(self:PGtkTreeListRow):guint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_depth(self:PGtkTreeListRow):guint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_children(self:PGtkTreeListRow):PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_parent(self:PGtkTreeListRow):PGtkTreeListRow;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_get_child_row(self:PGtkTreeListRow; position:guint):PGtkTreeListRow;
  begin
    { You must implement this function }
  end;

