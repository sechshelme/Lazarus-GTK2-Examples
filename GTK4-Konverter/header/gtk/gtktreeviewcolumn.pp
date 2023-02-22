
  Type
  Pchar  = ^char;
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreeViewColumn  = ^GtkTreeViewColumn;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktreeviewcolumn.h
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
{$ifndef __GTK_TREE_VIEW_COLUMN_H__}
{$define __GTK_TREE_VIEW_COLUMN_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}
{$include <gtk/gtkcellarea.h>}

  { was #define dname def_expr }
  function GTK_TYPE_TREE_VIEW_COLUMN : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW_COLUMN(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_VIEW_COLUMN(obj : longint) : longint;  


  type
    _GtkTreeViewColumn = GtkTreeViewColumn;
  {*
   * GtkTreeViewColumnSizing:
   * @GTK_TREE_VIEW_COLUMN_GROW_ONLY: Columns only get bigger in reaction to changes in the model
   * @GTK_TREE_VIEW_COLUMN_AUTOSIZE: Columns resize to be the optimal size every time the model changes.
   * @GTK_TREE_VIEW_COLUMN_FIXED: Columns are a fixed numbers of pixels wide.
   *
   * The sizing method the column uses to determine its width.  Please note
   * that %GTK_TREE_VIEW_COLUMN_AUTOSIZE are inefficient for large views, and
   * can make columns appear choppy.
    }

    GtkTreeViewColumnSizing = (GTK_TREE_VIEW_COLUMN_GROW_ONLY,GTK_TREE_VIEW_COLUMN_AUTOSIZE,
      GTK_TREE_VIEW_COLUMN_FIXED);
  {*
   * GtkTreeCellDataFunc:
   * @tree_column: A `GtkTreeViewColumn`
   * @cell: The `GtkCellRenderer` that is being rendered by @tree_column
   * @tree_model: The `GtkTreeModel` being rendered
   * @iter: A `GtkTreeIter` of the current row rendered
   * @data: (closure): user data
   *
   * A function to set the properties of a cell instead of just using the
   * straight mapping between the cell and the model.
   *
   * This function is useful for customizing the cell renderer. For example,
   * a function might get an* integer from the @tree_model, and render it to
   * the “text” attribute of “cell” by converting it to its written equivalent.
   *
   * See also: gtk_tree_view_column_set_cell_data_func()
    }

    GtkTreeCellDataFunc = procedure (tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; tree_model:PGtkTreeModel; iter:PGtkTreeIter; data:gpointer);cdecl;
(* error 
GType                   gtk_tree_view_column_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_tree_view_column_new:^GtkTreeViewColumn;

  function gtk_tree_view_column_new_with_area(area:PGtkCellArea):^GtkTreeViewColumn;

(* Const before type ignored *)
(* error 
								  ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : GtkTreeViewColumn;

  procedure gtk_tree_view_column_pack_start(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; expand:gboolean);

  procedure gtk_tree_view_column_pack_end(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; expand:gboolean);

  procedure gtk_tree_view_column_clear(tree_column:PGtkTreeViewColumn);

(* Const before type ignored *)
  procedure gtk_tree_view_column_add_attribute(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; attribute:Pchar; column:longint);

(* error 
								  ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : pointer;

  procedure gtk_tree_view_column_set_cell_data_func(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; func:GtkTreeCellDataFunc; func_data:gpointer; destroy:GDestroyNotify);

  procedure gtk_tree_view_column_clear_attributes(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer);

  procedure gtk_tree_view_column_set_spacing(tree_column:PGtkTreeViewColumn; spacing:longint);

  function gtk_tree_view_column_get_spacing(tree_column:PGtkTreeViewColumn):longint;

  procedure gtk_tree_view_column_set_visible(tree_column:PGtkTreeViewColumn; visible:gboolean);

  function gtk_tree_view_column_get_visible(tree_column:PGtkTreeViewColumn):gboolean;

  procedure gtk_tree_view_column_set_resizable(tree_column:PGtkTreeViewColumn; resizable:gboolean);

  function gtk_tree_view_column_get_resizable(tree_column:PGtkTreeViewColumn):gboolean;

  procedure gtk_tree_view_column_set_sizing(tree_column:PGtkTreeViewColumn; _type:GtkTreeViewColumnSizing);

  function gtk_tree_view_column_get_sizing(tree_column:PGtkTreeViewColumn):GtkTreeViewColumnSizing;

  function gtk_tree_view_column_get_x_offset(tree_column:PGtkTreeViewColumn):longint;

  function gtk_tree_view_column_get_width(tree_column:PGtkTreeViewColumn):longint;

  function gtk_tree_view_column_get_fixed_width(tree_column:PGtkTreeViewColumn):longint;

  procedure gtk_tree_view_column_set_fixed_width(tree_column:PGtkTreeViewColumn; fixed_width:longint);

  procedure gtk_tree_view_column_set_min_width(tree_column:PGtkTreeViewColumn; min_width:longint);

  function gtk_tree_view_column_get_min_width(tree_column:PGtkTreeViewColumn):longint;

  procedure gtk_tree_view_column_set_max_width(tree_column:PGtkTreeViewColumn; max_width:longint);

  function gtk_tree_view_column_get_max_width(tree_column:PGtkTreeViewColumn):longint;

  procedure gtk_tree_view_column_clicked(tree_column:PGtkTreeViewColumn);

  { Options for manipulating the column headers
    }
(* Const before type ignored *)
  procedure gtk_tree_view_column_set_title(tree_column:PGtkTreeViewColumn; title:Pchar);

(* Const before type ignored *)
  function gtk_tree_view_column_get_title(tree_column:PGtkTreeViewColumn):^char;

  procedure gtk_tree_view_column_set_expand(tree_column:PGtkTreeViewColumn; expand:gboolean);

  function gtk_tree_view_column_get_expand(tree_column:PGtkTreeViewColumn):gboolean;

  procedure gtk_tree_view_column_set_clickable(tree_column:PGtkTreeViewColumn; clickable:gboolean);

  function gtk_tree_view_column_get_clickable(tree_column:PGtkTreeViewColumn):gboolean;

  procedure gtk_tree_view_column_set_widget(tree_column:PGtkTreeViewColumn; widget:PGtkWidget);

  function gtk_tree_view_column_get_widget(tree_column:PGtkTreeViewColumn):^GtkWidget;

  procedure gtk_tree_view_column_set_alignment(tree_column:PGtkTreeViewColumn; xalign:single);

  function gtk_tree_view_column_get_alignment(tree_column:PGtkTreeViewColumn):single;

  procedure gtk_tree_view_column_set_reorderable(tree_column:PGtkTreeViewColumn; reorderable:gboolean);

  function gtk_tree_view_column_get_reorderable(tree_column:PGtkTreeViewColumn):gboolean;

  { You probably only want to use gtk_tree_view_column_set_sort_column_id.  The
   * other sorting functions exist primarily to let others do their own custom sorting.
    }
  procedure gtk_tree_view_column_set_sort_column_id(tree_column:PGtkTreeViewColumn; sort_column_id:longint);

  function gtk_tree_view_column_get_sort_column_id(tree_column:PGtkTreeViewColumn):longint;

  procedure gtk_tree_view_column_set_sort_indicator(tree_column:PGtkTreeViewColumn; setting:gboolean);

  function gtk_tree_view_column_get_sort_indicator(tree_column:PGtkTreeViewColumn):gboolean;

  procedure gtk_tree_view_column_set_sort_order(tree_column:PGtkTreeViewColumn; order:GtkSortType);

  function gtk_tree_view_column_get_sort_order(tree_column:PGtkTreeViewColumn):GtkSortType;

  { These functions are meant primarily for interaction between the GtkTreeView and the column.
    }
  procedure gtk_tree_view_column_cell_set_cell_data(tree_column:PGtkTreeViewColumn; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:gboolean; is_expanded:gboolean);

  procedure gtk_tree_view_column_cell_get_size(tree_column:PGtkTreeViewColumn; x_offset:Plongint; y_offset:Plongint; width:Plongint; height:Plongint);

  function gtk_tree_view_column_cell_is_visible(tree_column:PGtkTreeViewColumn):gboolean;

  procedure gtk_tree_view_column_focus_cell(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer);

  function gtk_tree_view_column_cell_get_position(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; x_offset:Plongint; width:Plongint):gboolean;

  procedure gtk_tree_view_column_queue_resize(tree_column:PGtkTreeViewColumn);

  function gtk_tree_view_column_get_tree_view(tree_column:PGtkTreeViewColumn):^GtkWidget;

  function gtk_tree_view_column_get_button(tree_column:PGtkTreeViewColumn):^GtkWidget;

{$endif}
  { __GTK_TREE_VIEW_COLUMN_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_VIEW_COLUMN : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_VIEW_COLUMN:=gtk_tree_view_column_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW_COLUMN(obj : longint) : longint;
  begin
    GTK_TREE_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_VIEW_COLUMN,GtkTreeViewColumn);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_VIEW_COLUMN(obj : longint) : longint;
  begin
    GTK_IS_TREE_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_VIEW_COLUMN);
  end;

  function gtk_tree_view_column_new:PGtkTreeViewColumn;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_new_with_area(area:PGtkCellArea):PGtkTreeViewColumn;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_pack_start(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; expand:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_pack_end(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; expand:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_clear(tree_column:PGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_add_attribute(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; attribute:Pchar; column:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_cell_data_func(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; func:GtkTreeCellDataFunc; func_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_clear_attributes(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_spacing(tree_column:PGtkTreeViewColumn; spacing:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_spacing(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_visible(tree_column:PGtkTreeViewColumn; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_visible(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_resizable(tree_column:PGtkTreeViewColumn; resizable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_resizable(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_sizing(tree_column:PGtkTreeViewColumn; _type:GtkTreeViewColumnSizing);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_sizing(tree_column:PGtkTreeViewColumn):GtkTreeViewColumnSizing;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_x_offset(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_width(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_fixed_width(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_fixed_width(tree_column:PGtkTreeViewColumn; fixed_width:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_min_width(tree_column:PGtkTreeViewColumn; min_width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_min_width(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_max_width(tree_column:PGtkTreeViewColumn; max_width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_max_width(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_clicked(tree_column:PGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_title(tree_column:PGtkTreeViewColumn; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_title(tree_column:PGtkTreeViewColumn):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_expand(tree_column:PGtkTreeViewColumn; expand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_expand(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_clickable(tree_column:PGtkTreeViewColumn; clickable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_clickable(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_widget(tree_column:PGtkTreeViewColumn; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_widget(tree_column:PGtkTreeViewColumn):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_alignment(tree_column:PGtkTreeViewColumn; xalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_alignment(tree_column:PGtkTreeViewColumn):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_reorderable(tree_column:PGtkTreeViewColumn; reorderable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_reorderable(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_sort_column_id(tree_column:PGtkTreeViewColumn; sort_column_id:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_sort_column_id(tree_column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_sort_indicator(tree_column:PGtkTreeViewColumn; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_sort_indicator(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_set_sort_order(tree_column:PGtkTreeViewColumn; order:GtkSortType);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_sort_order(tree_column:PGtkTreeViewColumn):GtkSortType;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_cell_set_cell_data(tree_column:PGtkTreeViewColumn; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:gboolean; is_expanded:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_cell_get_size(tree_column:PGtkTreeViewColumn; x_offset:Plongint; y_offset:Plongint; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_cell_is_visible(tree_column:PGtkTreeViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_focus_cell(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_cell_get_position(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; x_offset:Plongint; width:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_column_queue_resize(tree_column:PGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_tree_view(tree_column:PGtkTreeViewColumn):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_column_get_button(tree_column:PGtkTreeViewColumn):PGtkWidget;
  begin
    { You must implement this function }
  end;

