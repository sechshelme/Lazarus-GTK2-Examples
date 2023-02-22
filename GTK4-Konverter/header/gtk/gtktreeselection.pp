
  Type
  PGList  = ^GList;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreePath  = ^GtkTreePath;
  PGtkTreeSelection  = ^GtkTreeSelection;
  PGtkTreeView  = ^GtkTreeView;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktreeselection.h
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
{$ifndef __GTK_TREE_SELECTION_H__}
{$define __GTK_TREE_SELECTION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreeview.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_SELECTION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_SELECTION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_SELECTION(obj : longint) : longint;  

  {*
   * GtkTreeSelectionFunc:
   * @selection: A `GtkTreeSelection`
   * @model: A `GtkTreeModel` being viewed
   * @path: The `GtkTreePath` of the row in question
   * @path_currently_selected: %TRUE, if the path is currently selected
   * @data: (closure): user data
   *
   * A function used by gtk_tree_selection_set_select_function() to filter
   * whether or not a row may be selected. It is called whenever a row's
   * state might change.
   *
   * A return value of %TRUE indicates to @selection that it is okay to
   * change the selection.
   *
   * Returns: %TRUE, if the selection state of the row can be toggled
    }

  type

    GtkTreeSelectionFunc = function (selection:PGtkTreeSelection; model:PGtkTreeModel; path:PGtkTreePath; path_currently_selected:gboolean; data:gpointer):gboolean;cdecl;
  {*
   * GtkTreeSelectionForeachFunc:
   * @model: The `GtkTreeModel` being viewed
   * @path: The `GtkTreePath` of a selected row
   * @iter: A `GtkTreeIter` pointing to a selected row
   * @data: (closure): user data
   *
   * A function used by gtk_tree_selection_selected_foreach() to map all
   * selected rows.  It will be called on every selected row in the view.
    }

    GtkTreeSelectionForeachFunc = procedure (model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; data:gpointer);cdecl;
  { Zeile entfernt  }

  function gtk_tree_selection_get_type:GType;

  { Zeile entfernt  }
  procedure gtk_tree_selection_set_mode(selection:PGtkTreeSelection; _type:GtkSelectionMode);

  { Zeile entfernt  }
  function gtk_tree_selection_get_mode(selection:PGtkTreeSelection):GtkSelectionMode;

  { Zeile entfernt  }
  procedure gtk_tree_selection_set_select_function(selection:PGtkTreeSelection; func:GtkTreeSelectionFunc; data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  function gtk_tree_selection_get_user_data(selection:PGtkTreeSelection):gpointer;

  { Zeile entfernt  }
  function gtk_tree_selection_get_tree_view(selection:PGtkTreeSelection):^GtkTreeView;

  { Zeile entfernt  }
  function gtk_tree_selection_get_select_function(selection:PGtkTreeSelection):GtkTreeSelectionFunc;

  { Only meaningful if GTK_SELECTION_SINGLE or GTK_SELECTION_BROWSE is set  }
  { Use selected_foreach or get_selected_rows for GTK_SELECTION_MULTIPLE  }
  { Zeile entfernt  }
  function gtk_tree_selection_get_selected(selection:PGtkTreeSelection; model:PPGtkTreeModel; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  function gtk_tree_selection_get_selected_rows(selection:PGtkTreeSelection; model:PPGtkTreeModel):^GList;

  { Zeile entfernt  }
  function gtk_tree_selection_count_selected_rows(selection:PGtkTreeSelection):longint;

  { Zeile entfernt  }
  procedure gtk_tree_selection_selected_foreach(selection:PGtkTreeSelection; func:GtkTreeSelectionForeachFunc; data:gpointer);

  { Zeile entfernt  }
  procedure gtk_tree_selection_select_path(selection:PGtkTreeSelection; path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_selection_unselect_path(selection:PGtkTreeSelection; path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_selection_select_iter(selection:PGtkTreeSelection; iter:PGtkTreeIter);

  { Zeile entfernt  }
  procedure gtk_tree_selection_unselect_iter(selection:PGtkTreeSelection; iter:PGtkTreeIter);

  { Zeile entfernt  }
  function gtk_tree_selection_path_is_selected(selection:PGtkTreeSelection; path:PGtkTreePath):gboolean;

  { Zeile entfernt  }
  function gtk_tree_selection_iter_is_selected(selection:PGtkTreeSelection; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_selection_select_all(selection:PGtkTreeSelection);

  { Zeile entfernt  }
  procedure gtk_tree_selection_unselect_all(selection:PGtkTreeSelection);

  { Zeile entfernt  }
  procedure gtk_tree_selection_select_range(selection:PGtkTreeSelection; start_path:PGtkTreePath; end_path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_selection_unselect_range(selection:PGtkTreeSelection; start_path:PGtkTreePath; end_path:PGtkTreePath);

  { Zeile entfernt  }
{$endif}
  { __GTK_TREE_SELECTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_SELECTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_SELECTION:=gtk_tree_selection_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_SELECTION(obj : longint) : longint;
  begin
    GTK_TREE_SELECTION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_SELECTION,GtkTreeSelection);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_SELECTION(obj : longint) : longint;
  begin
    GTK_IS_TREE_SELECTION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_SELECTION);
  end;

  function gtk_tree_selection_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_set_mode(selection:PGtkTreeSelection; _type:GtkSelectionMode);
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_get_mode(selection:PGtkTreeSelection):GtkSelectionMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_set_select_function(selection:PGtkTreeSelection; func:GtkTreeSelectionFunc; data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_get_user_data(selection:PGtkTreeSelection):gpointer;
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_get_tree_view(selection:PGtkTreeSelection):PGtkTreeView;
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_get_select_function(selection:PGtkTreeSelection):GtkTreeSelectionFunc;
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_get_selected(selection:PGtkTreeSelection; model:PPGtkTreeModel; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_get_selected_rows(selection:PGtkTreeSelection; model:PPGtkTreeModel):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_count_selected_rows(selection:PGtkTreeSelection):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_selected_foreach(selection:PGtkTreeSelection; func:GtkTreeSelectionForeachFunc; data:gpointer);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_select_path(selection:PGtkTreeSelection; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_unselect_path(selection:PGtkTreeSelection; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_select_iter(selection:PGtkTreeSelection; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_unselect_iter(selection:PGtkTreeSelection; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_path_is_selected(selection:PGtkTreeSelection; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_selection_iter_is_selected(selection:PGtkTreeSelection; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_select_all(selection:PGtkTreeSelection);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_unselect_all(selection:PGtkTreeSelection);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_select_range(selection:PGtkTreeSelection; start_path:PGtkTreePath; end_path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_selection_unselect_range(selection:PGtkTreeSelection; start_path:PGtkTreePath; end_path:PGtkTreePath);
  begin
    { You must implement this function }
  end;

