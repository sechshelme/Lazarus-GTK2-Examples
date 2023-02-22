
  Type
  Pchar  = ^char;
  PGObject  = ^GObject;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreePath  = ^GtkTreePath;
  PGtkTreeRowReference  = ^GtkTreeRowReference;
  PGValue  = ^GValue;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktreemodel.h
   * Copyright (C) 2000  Red Hat, Inc.,  Jonathan Blandford <jrb@redhat.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_TREE_MODEL_H__}
{$define __GTK_TREE_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_MODEL : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_MODEL(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_MODEL(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_MODEL_GET_IFACE(obj : longint) : longint;  

  { was #define dname def_expr }
  function GTK_TYPE_TREE_ITER : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_PATH : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_ROW_REFERENCE : longint; { return type might be wrong }


  type
    _GtkTreeIter = GtkTreeIter;
    _GtkTreePath = GtkTreePath;
    _GtkTreeRowReference = GtkTreeRowReference;
    _GtkTreeModel = GtkTreeModel;
  { Dummy typedef  }
    _GtkTreeModelIface = GtkTreeModelIface;
  {*
   * GtkTreeModelForeachFunc:
   * @model: the `GtkTreeModel` being iterated
   * @path: the current `GtkTreePath`
   * @iter: the current `GtkTreeIter`
   * @data: (closure): The user data passed to gtk_tree_model_foreach()
   *
   * Type of the callback passed to gtk_tree_model_foreach() to
   * iterate over the rows in a tree model.
   *
   * Returns: %TRUE to stop iterating, %FALSE to continue
   *
    }

    GtkTreeModelForeachFunc = function (model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; data:gpointer):gboolean;cdecl;
  {*
   * GtkTreeModelFlags:
   * @GTK_TREE_MODEL_ITERS_PERSIST: iterators survive all signals
   *   emitted by the tree
   * @GTK_TREE_MODEL_LIST_ONLY: the model is a list only, and never
   *   has children
   *
   * These flags indicate various properties of a `GtkTreeModel`.
   *
   * They are returned by [method@Gtk.TreeModel.get_flags], and must be
   * static for the lifetime of the object. A more complete description
   * of %GTK_TREE_MODEL_ITERS_PERSIST can be found in the overview of
   * this section.
    }

    GtkTreeModelFlags = (GTK_TREE_MODEL_ITERS_PERSIST := 1 shl 0,GTK_TREE_MODEL_LIST_ONLY := 1 shl 1
      );
  {*
   * GtkTreeIter:
   * @stamp: a unique stamp to catch invalid iterators
   * @user_data: model-specific data
   * @user_data2: model-specific data
   * @user_data3: model-specific data
   *
   * The `GtkTreeIter` is the primary structure
   * for accessing a `GtkTreeModel`. Models are expected to put a unique
   * integer in the @stamp member, and put
   * model-specific data in the three @user_data
   * members.
    }
    _GtkTreeIter = record
        stamp : longint;
        user_data : gpointer;
        user_data2 : gpointer;
        user_data3 : gpointer;
      end;

  {*
   * GtkTreeModelIface:
   * @row_changed: Signal emitted when a row in the model has changed.
   * @row_inserted: Signal emitted when a new row has been inserted in
   *    the model.
   * @row_has_child_toggled: Signal emitted when a row has gotten the
   *    first child row or lost its last child row.
   * @row_deleted: Signal emitted when a row has been deleted.
   * @rows_reordered: Signal emitted when the children of a node in the
   *    GtkTreeModel have been reordered.
   * @get_flags: Get `GtkTreeModelFlags` supported by this interface.
   * @get_n_columns: Get the number of columns supported by the model.
   * @get_column_type: Get the type of the column.
   * @get_iter: Sets iter to a valid iterator pointing to path.
   * @get_path: Gets a newly-created `GtkTreePath` referenced by iter.
   * @get_value: Initializes and sets value to that at column.
   * @iter_next: Sets iter to point to the node following it at the
   *    current level.
   * @iter_previous: Sets iter to point to the previous node at the
   *    current level.
   * @iter_children: Sets iter to point to the first child of parent.
   * @iter_has_child: %TRUE if iter has children, %FALSE otherwise.
   * @iter_n_children: Gets the number of children that iter has.
   * @iter_nth_child: Sets iter to be the child of parent, using the
   *    given index.
   * @iter_parent: Sets iter to be the parent of child.
   * @ref_node: Lets the tree ref the node.
   * @unref_node: Lets the tree unref the node.
    }
  {< private > }
  {< public > }
  { Signals  }
  { Virtual Table  }
    _GtkTreeModelIface = record
        g_iface : GTypeInterface;
        row_changed : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;
        row_inserted : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;
        row_has_child_toggled : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;
        row_deleted : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath);cdecl;
        rows_reordered : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);cdecl;
        get_flags : function (tree_model:PGtkTreeModel):GtkTreeModelFlags;cdecl;
        get_n_columns : function (tree_model:PGtkTreeModel):longint;cdecl;
        get_column_type : function (tree_model:PGtkTreeModel; index_:longint):GType;cdecl;
        get_iter : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; path:PGtkTreePath):gboolean;cdecl;
        get_path : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):PGtkTreePath;cdecl;
        get_value : procedure (tree_model:PGtkTreeModel; iter:PGtkTreeIter; column:longint; value:PGValue);cdecl;
        iter_next : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;cdecl;
        iter_previous : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;cdecl;
        iter_children : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter):gboolean;cdecl;
        iter_has_child : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;cdecl;
        iter_n_children : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):longint;cdecl;
        iter_nth_child : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter; n:longint):gboolean;cdecl;
        iter_parent : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; child:PGtkTreeIter):gboolean;cdecl;
        ref_node : procedure (tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;
        unref_node : procedure (tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;
      end;

  { GtkTreePath operations  }
  { Zeile entfernt  }

  function gtk_tree_path_new:^GtkTreePath;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_tree_path_new_from_string(path:Pchar):^GtkTreePath;

  { Zeile entfernt  }
  function gtk_tree_path_new_from_indices(first_index:longint; args:array of const):^GtkTreePath;

  { Zeile entfernt  }
  function gtk_tree_path_new_from_indicesv(indices:Plongint; length:gsize):^GtkTreePath;

  { Zeile entfernt  }
  function gtk_tree_path_to_string(path:PGtkTreePath):^char;

  { Zeile entfernt  }
  function gtk_tree_path_new_first:^GtkTreePath;

  { Zeile entfernt  }
  procedure gtk_tree_path_append_index(path:PGtkTreePath; index_:longint);

  { Zeile entfernt  }
  procedure gtk_tree_path_prepend_index(path:PGtkTreePath; index_:longint);

  { Zeile entfernt  }
  function gtk_tree_path_get_depth(path:PGtkTreePath):longint;

  { Zeile entfernt  }
  function gtk_tree_path_get_indices(path:PGtkTreePath):^longint;

  { Zeile entfernt  }
  function gtk_tree_path_get_indices_with_depth(path:PGtkTreePath; depth:Plongint):^longint;

  { Zeile entfernt  }
  procedure gtk_tree_path_free(path:PGtkTreePath);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_tree_path_copy(path:PGtkTreePath):^GtkTreePath;

  { Zeile entfernt  }
  function gtk_tree_path_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_tree_path_compare(a:PGtkTreePath; b:PGtkTreePath):longint;

  { Zeile entfernt  }
  procedure gtk_tree_path_next(path:PGtkTreePath);

  { Zeile entfernt  }
  function gtk_tree_path_prev(path:PGtkTreePath):gboolean;

  { Zeile entfernt  }
  function gtk_tree_path_up(path:PGtkTreePath):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_path_down(path:PGtkTreePath);

  { Zeile entfernt  }
  function gtk_tree_path_is_ancestor(path:PGtkTreePath; descendant:PGtkTreePath):gboolean;

  { Zeile entfernt  }
  function gtk_tree_path_is_descendant(path:PGtkTreePath; ancestor:PGtkTreePath):gboolean;

  {*
   * GtkTreeRowReference:
   *
   * A GtkTreeRowReference tracks model changes so that it always refers to the
   * same row (a `GtkTreePath` refers to a position, not a fixed row). Create a
   * new GtkTreeRowReference with gtk_tree_row_reference_new().
    }
  { Zeile entfernt  }
  function gtk_tree_row_reference_get_type:GType;

  { Zeile entfernt  }
  function gtk_tree_row_reference_new(model:PGtkTreeModel; path:PGtkTreePath):^GtkTreeRowReference;

  { Zeile entfernt  }
  function gtk_tree_row_reference_new_proxy(proxy:PGObject; model:PGtkTreeModel; path:PGtkTreePath):^GtkTreeRowReference;

  { Zeile entfernt  }
  function gtk_tree_row_reference_get_path(reference:PGtkTreeRowReference):^GtkTreePath;

  { Zeile entfernt  }
  function gtk_tree_row_reference_get_model(reference:PGtkTreeRowReference):^GtkTreeModel;

  { Zeile entfernt  }
  function gtk_tree_row_reference_valid(reference:PGtkTreeRowReference):gboolean;

  { Zeile entfernt  }
  function gtk_tree_row_reference_copy(reference:PGtkTreeRowReference):^GtkTreeRowReference;

  { Zeile entfernt  }
  procedure gtk_tree_row_reference_free(reference:PGtkTreeRowReference);

  { These two functions are only needed if you created the row reference with a
   * proxy object  }
  { Zeile entfernt  }
  procedure gtk_tree_row_reference_inserted(proxy:PGObject; path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_row_reference_deleted(proxy:PGObject; path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_row_reference_reordered(proxy:PGObject; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);

  { GtkTreeIter operations  }
  { Zeile entfernt  }
  function gtk_tree_iter_copy(iter:PGtkTreeIter):^GtkTreeIter;

  { Zeile entfernt  }
  procedure gtk_tree_iter_free(iter:PGtkTreeIter);

  { Zeile entfernt  }
  function gtk_tree_iter_get_type:GType;

  { Zeile entfernt  }
  function gtk_tree_model_get_type:GType;

  { Zeile entfernt  }
  function gtk_tree_model_get_flags(tree_model:PGtkTreeModel):GtkTreeModelFlags;

  { Zeile entfernt  }
  function gtk_tree_model_get_n_columns(tree_model:PGtkTreeModel):longint;

  { Zeile entfernt  }
  function gtk_tree_model_get_column_type(tree_model:PGtkTreeModel; index_:longint):GType;

  { Iterator movement  }
  { Zeile entfernt  }
  function gtk_tree_model_get_iter(tree_model:PGtkTreeModel; iter:PGtkTreeIter; path:PGtkTreePath):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_tree_model_get_iter_from_string(tree_model:PGtkTreeModel; iter:PGtkTreeIter; path_string:Pchar):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_get_string_from_iter(tree_model:PGtkTreeModel; iter:PGtkTreeIter):^char;

  { Zeile entfernt  }
  function gtk_tree_model_get_iter_first(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_get_path(tree_model:PGtkTreeModel; iter:PGtkTreeIter):^GtkTreePath;

  { Zeile entfernt  }
  procedure gtk_tree_model_get_value(tree_model:PGtkTreeModel; iter:PGtkTreeIter; column:longint; value:PGValue);

  { Zeile entfernt  }
  function gtk_tree_model_iter_previous(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_iter_next(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_iter_children(tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_iter_has_child(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_iter_n_children(tree_model:PGtkTreeModel; iter:PGtkTreeIter):longint;

  { Zeile entfernt  }
  function gtk_tree_model_iter_nth_child(tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter; n:longint):gboolean;

  { Zeile entfernt  }
  function gtk_tree_model_iter_parent(tree_model:PGtkTreeModel; iter:PGtkTreeIter; child:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_model_ref_node(tree_model:PGtkTreeModel; iter:PGtkTreeIter);

  { Zeile entfernt  }
  procedure gtk_tree_model_unref_node(tree_model:PGtkTreeModel; iter:PGtkTreeIter);

  { Zeile entfernt  }
  procedure gtk_tree_model_get(tree_model:PGtkTreeModel; iter:PGtkTreeIter; args:array of const);

  { Zeile entfernt  }
  procedure gtk_tree_model_get_valist(tree_model:PGtkTreeModel; iter:PGtkTreeIter; var_args:va_list);

  { Zeile entfernt  }
  procedure gtk_tree_model_foreach(model:PGtkTreeModel; func:GtkTreeModelForeachFunc; user_data:gpointer);

  { Signals  }
  { Zeile entfernt  }
  procedure gtk_tree_model_row_changed(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);

  { Zeile entfernt  }
  procedure gtk_tree_model_row_inserted(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);

  { Zeile entfernt  }
  procedure gtk_tree_model_row_has_child_toggled(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);

  { Zeile entfernt  }
  procedure gtk_tree_model_row_deleted(tree_model:PGtkTreeModel; path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_model_rows_reordered(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_model_rows_reordered_with_length(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint; length:longint);

  { Zeile entfernt  }
{$endif}
  { __GTK_TREE_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_MODEL:=gtk_tree_model_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_MODEL(obj : longint) : longint;
  begin
    GTK_TREE_MODEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL,GtkTreeModel);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_MODEL(obj : longint) : longint;
  begin
    GTK_IS_TREE_MODEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_MODEL_GET_IFACE(obj : longint) : longint;
  begin
    GTK_TREE_MODEL_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_MODEL,GtkTreeModelIface);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_ITER : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_ITER:=gtk_tree_iter_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_PATH : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_PATH:=gtk_tree_path_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_ROW_REFERENCE : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_ROW_REFERENCE:=gtk_tree_row_reference_get_type;
    end;

  function gtk_tree_path_new:PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_new_from_string(path:Pchar):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_new_from_indices(first_index:longint):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_new_from_indicesv(indices:Plongint; length:gsize):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_to_string(path:PGtkTreePath):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_new_first:PGtkTreePath;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_path_append_index(path:PGtkTreePath; index_:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_path_prepend_index(path:PGtkTreePath; index_:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_get_depth(path:PGtkTreePath):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_get_indices(path:PGtkTreePath):Plongint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_get_indices_with_depth(path:PGtkTreePath; depth:Plongint):Plongint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_path_free(path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_copy(path:PGtkTreePath):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_compare(a:PGtkTreePath; b:PGtkTreePath):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_path_next(path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_prev(path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_up(path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_path_down(path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_is_ancestor(path:PGtkTreePath; descendant:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_path_is_descendant(path:PGtkTreePath; ancestor:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_new(model:PGtkTreeModel; path:PGtkTreePath):PGtkTreeRowReference;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_new_proxy(proxy:PGObject; model:PGtkTreeModel; path:PGtkTreePath):PGtkTreeRowReference;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_get_path(reference:PGtkTreeRowReference):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_get_model(reference:PGtkTreeRowReference):PGtkTreeModel;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_valid(reference:PGtkTreeRowReference):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_row_reference_copy(reference:PGtkTreeRowReference):PGtkTreeRowReference;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_row_reference_free(reference:PGtkTreeRowReference);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_row_reference_inserted(proxy:PGObject; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_row_reference_deleted(proxy:PGObject; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_row_reference_reordered(proxy:PGObject; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_iter_copy(iter:PGtkTreeIter):PGtkTreeIter;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_iter_free(iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  function gtk_tree_iter_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_flags(tree_model:PGtkTreeModel):GtkTreeModelFlags;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_n_columns(tree_model:PGtkTreeModel):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_column_type(tree_model:PGtkTreeModel; index_:longint):GType;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_iter(tree_model:PGtkTreeModel; iter:PGtkTreeIter; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_iter_from_string(tree_model:PGtkTreeModel; iter:PGtkTreeIter; path_string:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_string_from_iter(tree_model:PGtkTreeModel; iter:PGtkTreeIter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_iter_first(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_get_path(tree_model:PGtkTreeModel; iter:PGtkTreeIter):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_get_value(tree_model:PGtkTreeModel; iter:PGtkTreeIter; column:longint; value:PGValue);
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_previous(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_next(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_children(tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_has_child(tree_model:PGtkTreeModel; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_n_children(tree_model:PGtkTreeModel; iter:PGtkTreeIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_nth_child(tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter; n:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_model_iter_parent(tree_model:PGtkTreeModel; iter:PGtkTreeIter; child:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_ref_node(tree_model:PGtkTreeModel; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_unref_node(tree_model:PGtkTreeModel; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_get(tree_model:PGtkTreeModel; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_get_valist(tree_model:PGtkTreeModel; iter:PGtkTreeIter; var_args:va_list);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_foreach(model:PGtkTreeModel; func:GtkTreeModelForeachFunc; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_row_changed(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_row_inserted(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_row_has_child_toggled(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_row_deleted(tree_model:PGtkTreeModel; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_rows_reordered(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_model_rows_reordered_with_length(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint; length:longint);
  begin
    { You must implement this function }
  end;

