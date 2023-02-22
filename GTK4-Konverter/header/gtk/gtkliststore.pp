
  Type
  PGtkListStore  = ^GtkListStore;
  PGtkTreeIter  = ^GtkTreeIter;
  PGType  = ^GType;
  PGValue  = ^GValue;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkliststore.h
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
{$ifndef __GTK_LIST_STORE_H__}
{$define __GTK_LIST_STORE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}

  { was #define dname def_expr }
  function GTK_TYPE_LIST_STORE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_STORE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_STORE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_STORE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_STORE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_STORE_GET_CLASS(obj : longint) : longint;  


  type
    _GtkListStore = GtkListStore;
    _GtkListStorePrivate = GtkListStorePrivate;
    _GtkListStoreClass = GtkListStoreClass;
  {< private > }
    _GtkListStore = record
        parent : GObject;
        priv : ^GtkListStorePrivate;
      end;

  {< private > }
    _GtkListStoreClass = record
        parent_class : GObjectClass;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType         gtk_list_store_get_type         (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_list_store_new(n_columns:longint; args:array of const):^GtkListStore;

  function gtk_list_store_newv(n_columns:longint; types:PGType):^GtkListStore;

  procedure gtk_list_store_set_column_types(list_store:PGtkListStore; n_columns:longint; types:PGType);

  { NOTE: use gtk_tree_model_get to get values from a GtkListStore  }
  procedure gtk_list_store_set_value(list_store:PGtkListStore; iter:PGtkTreeIter; column:longint; value:PGValue);

  procedure gtk_list_store_set(list_store:PGtkListStore; iter:PGtkTreeIter; args:array of const);

  procedure gtk_list_store_set_valuesv(list_store:PGtkListStore; iter:PGtkTreeIter; columns:Plongint; values:PGValue; n_values:longint);

  procedure gtk_list_store_set_valist(list_store:PGtkListStore; iter:PGtkTreeIter; var_args:va_list);

  function gtk_list_store_remove(list_store:PGtkListStore; iter:PGtkTreeIter):gboolean;

  procedure gtk_list_store_insert(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint);

  procedure gtk_list_store_insert_before(list_store:PGtkListStore; iter:PGtkTreeIter; sibling:PGtkTreeIter);

  procedure gtk_list_store_insert_after(list_store:PGtkListStore; iter:PGtkTreeIter; sibling:PGtkTreeIter);

  procedure gtk_list_store_insert_with_values(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint; args:array of const);

  procedure gtk_list_store_insert_with_valuesv(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint; columns:Plongint; values:PGValue; 
              n_values:longint);

  procedure gtk_list_store_prepend(list_store:PGtkListStore; iter:PGtkTreeIter);

  procedure gtk_list_store_append(list_store:PGtkListStore; iter:PGtkTreeIter);

  procedure gtk_list_store_clear(list_store:PGtkListStore);

  function gtk_list_store_iter_is_valid(list_store:PGtkListStore; iter:PGtkTreeIter):gboolean;

  procedure gtk_list_store_reorder(store:PGtkListStore; new_order:Plongint);

  procedure gtk_list_store_swap(store:PGtkListStore; a:PGtkTreeIter; b:PGtkTreeIter);

  procedure gtk_list_store_move_after(store:PGtkListStore; iter:PGtkTreeIter; position:PGtkTreeIter);

  procedure gtk_list_store_move_before(store:PGtkListStore; iter:PGtkTreeIter; position:PGtkTreeIter);

{$endif}
  { __GTK_LIST_STORE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LIST_STORE : longint; { return type might be wrong }
    begin
      GTK_TYPE_LIST_STORE:=gtk_list_store_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_STORE(obj : longint) : longint;
  begin
    GTK_LIST_STORE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_STORE,GtkListStore);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_STORE_CLASS(klass : longint) : longint;
  begin
    GTK_LIST_STORE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_LIST_STORE,GtkListStoreClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_STORE(obj : longint) : longint;
  begin
    GTK_IS_LIST_STORE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_STORE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_STORE_CLASS(klass : longint) : longint;
  begin
    GTK_IS_LIST_STORE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_LIST_STORE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_STORE_GET_CLASS(obj : longint) : longint;
  begin
    GTK_LIST_STORE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_LIST_STORE,GtkListStoreClass);
  end;

  function gtk_list_store_new(n_columns:longint):PGtkListStore;
  begin
    { You must implement this function }
  end;
  function gtk_list_store_newv(n_columns:longint; types:PGType):PGtkListStore;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_set_column_types(list_store:PGtkListStore; n_columns:longint; types:PGType);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_set_value(list_store:PGtkListStore; iter:PGtkTreeIter; column:longint; value:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_set(list_store:PGtkListStore; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_set_valuesv(list_store:PGtkListStore; iter:PGtkTreeIter; columns:Plongint; values:PGValue; n_values:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_set_valist(list_store:PGtkListStore; iter:PGtkTreeIter; var_args:va_list);
  begin
    { You must implement this function }
  end;
  function gtk_list_store_remove(list_store:PGtkListStore; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_insert(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_insert_before(list_store:PGtkListStore; iter:PGtkTreeIter; sibling:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_insert_after(list_store:PGtkListStore; iter:PGtkTreeIter; sibling:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_insert_with_values(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_insert_with_valuesv(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint; columns:Plongint; values:PGValue; 
              n_values:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_prepend(list_store:PGtkListStore; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_append(list_store:PGtkListStore; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_clear(list_store:PGtkListStore);
  begin
    { You must implement this function }
  end;
  function gtk_list_store_iter_is_valid(list_store:PGtkListStore; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_reorder(store:PGtkListStore; new_order:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_swap(store:PGtkListStore; a:PGtkTreeIter; b:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_move_after(store:PGtkListStore; iter:PGtkTreeIter; position:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_store_move_before(store:PGtkListStore; iter:PGtkTreeIter; position:PGtkTreeIter);
  begin
    { You must implement this function }
  end;

