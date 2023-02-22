
  Type
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeStore  = ^GtkTreeStore;
  PGType  = ^GType;
  PGValue  = ^GValue;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktreestore.h
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
{$ifndef __GTK_TREE_STORE_H__}
{$define __GTK_TREE_STORE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}
{$include <stdarg.h>}

  { was #define dname def_expr }
  function GTK_TYPE_TREE_STORE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_STORE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_STORE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_STORE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_STORE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_STORE_GET_CLASS(obj : longint) : longint;  


  type
    _GtkTreeStore = GtkTreeStore;
    _GtkTreeStoreClass = GtkTreeStoreClass;
    _GtkTreeStorePrivate = GtkTreeStorePrivate;
    _GtkTreeStore = record
        parent : GObject;
        priv : ^GtkTreeStorePrivate;
      end;

  {< private > }
    _GtkTreeStoreClass = record
        parent_class : GObjectClass;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType         gtk_tree_store_get_type         (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_tree_store_new(n_columns:longint; args:array of const):^GtkTreeStore;

  function gtk_tree_store_newv(n_columns:longint; types:PGType):^GtkTreeStore;

  procedure gtk_tree_store_set_column_types(tree_store:PGtkTreeStore; n_columns:longint; types:PGType);

  { NOTE: use gtk_tree_model_get to get values from a GtkTreeStore  }
  procedure gtk_tree_store_set_value(tree_store:PGtkTreeStore; iter:PGtkTreeIter; column:longint; value:PGValue);

  procedure gtk_tree_store_set(tree_store:PGtkTreeStore; iter:PGtkTreeIter; args:array of const);

  procedure gtk_tree_store_set_valuesv(tree_store:PGtkTreeStore; iter:PGtkTreeIter; columns:Plongint; values:PGValue; n_values:longint);

  procedure gtk_tree_store_set_valist(tree_store:PGtkTreeStore; iter:PGtkTreeIter; var_args:va_list);

  function gtk_tree_store_remove(tree_store:PGtkTreeStore; iter:PGtkTreeIter):gboolean;

  procedure gtk_tree_store_insert(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint);

  procedure gtk_tree_store_insert_before(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; sibling:PGtkTreeIter);

  procedure gtk_tree_store_insert_after(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; sibling:PGtkTreeIter);

  procedure gtk_tree_store_insert_with_values(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint; args:array of const);

  procedure gtk_tree_store_insert_with_valuesv(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint; columns:Plongint; 
              values:PGValue; n_values:longint);

  procedure gtk_tree_store_prepend(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter);

  procedure gtk_tree_store_append(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter);

  function gtk_tree_store_is_ancestor(tree_store:PGtkTreeStore; iter:PGtkTreeIter; descendant:PGtkTreeIter):gboolean;

  function gtk_tree_store_iter_depth(tree_store:PGtkTreeStore; iter:PGtkTreeIter):longint;

  procedure gtk_tree_store_clear(tree_store:PGtkTreeStore);

  function gtk_tree_store_iter_is_valid(tree_store:PGtkTreeStore; iter:PGtkTreeIter):gboolean;

  procedure gtk_tree_store_reorder(tree_store:PGtkTreeStore; parent:PGtkTreeIter; new_order:Plongint);

  procedure gtk_tree_store_swap(tree_store:PGtkTreeStore; a:PGtkTreeIter; b:PGtkTreeIter);

  procedure gtk_tree_store_move_before(tree_store:PGtkTreeStore; iter:PGtkTreeIter; position:PGtkTreeIter);

  procedure gtk_tree_store_move_after(tree_store:PGtkTreeStore; iter:PGtkTreeIter; position:PGtkTreeIter);

{$endif}
  { __GTK_TREE_STORE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_STORE : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_STORE:=gtk_tree_store_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_STORE(obj : longint) : longint;
  begin
    GTK_TREE_STORE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_STORE,GtkTreeStore);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_STORE_CLASS(klass : longint) : longint;
  begin
    GTK_TREE_STORE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_STORE,GtkTreeStoreClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_STORE(obj : longint) : longint;
  begin
    GTK_IS_TREE_STORE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_STORE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_STORE_CLASS(klass : longint) : longint;
  begin
    GTK_IS_TREE_STORE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_STORE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_STORE_GET_CLASS(obj : longint) : longint;
  begin
    GTK_TREE_STORE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_STORE,GtkTreeStoreClass);
  end;

  function gtk_tree_store_new(n_columns:longint):PGtkTreeStore;
  begin
    { You must implement this function }
  end;
  function gtk_tree_store_newv(n_columns:longint; types:PGType):PGtkTreeStore;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_set_column_types(tree_store:PGtkTreeStore; n_columns:longint; types:PGType);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_set_value(tree_store:PGtkTreeStore; iter:PGtkTreeIter; column:longint; value:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_set(tree_store:PGtkTreeStore; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_set_valuesv(tree_store:PGtkTreeStore; iter:PGtkTreeIter; columns:Plongint; values:PGValue; n_values:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_set_valist(tree_store:PGtkTreeStore; iter:PGtkTreeIter; var_args:va_list);
  begin
    { You must implement this function }
  end;
  function gtk_tree_store_remove(tree_store:PGtkTreeStore; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_insert(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_insert_before(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; sibling:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_insert_after(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; sibling:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_insert_with_values(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_insert_with_valuesv(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint; columns:Plongint; 
              values:PGValue; n_values:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_prepend(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_append(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  function gtk_tree_store_is_ancestor(tree_store:PGtkTreeStore; iter:PGtkTreeIter; descendant:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_store_iter_depth(tree_store:PGtkTreeStore; iter:PGtkTreeIter):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_clear(tree_store:PGtkTreeStore);
  begin
    { You must implement this function }
  end;
  function gtk_tree_store_iter_is_valid(tree_store:PGtkTreeStore; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_reorder(tree_store:PGtkTreeStore; parent:PGtkTreeIter; new_order:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_swap(tree_store:PGtkTreeStore; a:PGtkTreeIter; b:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_move_before(tree_store:PGtkTreeStore; iter:PGtkTreeIter; position:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_store_move_after(tree_store:PGtkTreeStore; iter:PGtkTreeIter; position:PGtkTreeIter);
  begin
    { You must implement this function }
  end;

