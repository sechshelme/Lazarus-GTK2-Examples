
  Type
  Pchar  = ^char;
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkPaintable  = ^GdkPaintable;
  PGdkRectangle  = ^GdkRectangle;
  PGList  = ^GList;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkEditable  = ^GtkEditable;
  PGtkTooltip  = ^GtkTooltip;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreePath  = ^GtkTreePath;
  PGtkTreeSelection  = ^GtkTreeSelection;
  PGtkTreeView  = ^GtkTreeView;
  PGtkTreeViewColumn  = ^GtkTreeViewColumn;
  PGtkTreeViewDropPosition  = ^GtkTreeViewDropPosition;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktreeview.h
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
{$ifndef __GTK_TREE_VIEW_H__}
{$define __GTK_TREE_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreeviewcolumn.h>}
{$include <gtk/gtkentry.h>}
  { Zeile entfernt  }
  {*
   * GtkTreeViewDropPosition:
   * @GTK_TREE_VIEW_DROP_BEFORE: dropped row is inserted before
   * @GTK_TREE_VIEW_DROP_AFTER: dropped row is inserted after
   * @GTK_TREE_VIEW_DROP_INTO_OR_BEFORE: dropped row becomes a child or is inserted before
   * @GTK_TREE_VIEW_DROP_INTO_OR_AFTER: dropped row becomes a child or is inserted after
   *
   * An enum for determining where a dropped row goes.
    }
  { drop before/after this row  }
  { drop as a child of this row (with fallback to before or after
     * if into is not possible)
      }

  type
    GtkTreeViewDropPosition = (GTK_TREE_VIEW_DROP_BEFORE,GTK_TREE_VIEW_DROP_AFTER,
      GTK_TREE_VIEW_DROP_INTO_OR_BEFORE,GTK_TREE_VIEW_DROP_INTO_OR_AFTER
      );

  { was #define dname def_expr }
  function GTK_TYPE_TREE_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_VIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_VIEW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW_GET_CLASS(obj : longint) : longint;  


  type
    _GtkTreeView = GtkTreeView;
    _GtkTreeViewClass = GtkTreeViewClass;
    _GtkTreeSelection = GtkTreeSelection;
  {*
   * GtkTreeViewColumnDropFunc:
   * @tree_view: A `GtkTreeView`
   * @column: The `GtkTreeViewColumn` being dragged
   * @prev_column: A `GtkTreeViewColumn` on one side of @column
   * @next_column: A `GtkTreeViewColumn` on the other side of @column
   * @data: (closure): user data
   *
   * Function type for determining whether @column can be dropped in a
   * particular spot (as determined by @prev_column and @next_column).  In
   * left to right locales, @prev_column is on the left of the potential drop
   * spot, and @next_column is on the right.  In right to left mode, this is
   * reversed.  This function should return %TRUE if the spot is a valid drop
   * spot.  Please note that returning %TRUE does not actually indicate that
   * the column drop was made, but is meant only to indicate a possible drop
   * spot to the user.
   *
   * Returns: %TRUE, if @column can be dropped in this spot
    }

    GtkTreeViewColumnDropFunc = function (tree_view:PGtkTreeView; column:PGtkTreeViewColumn; prev_column:PGtkTreeViewColumn; next_column:PGtkTreeViewColumn; data:gpointer):gboolean;cdecl;
  {*
   * GtkTreeViewMappingFunc:
   * @tree_view: A `GtkTreeView`
   * @path: The path that’s expanded
   * @user_data: user data
   *
   * Function used for gtk_tree_view_map_expanded_rows().
    }

    GtkTreeViewMappingFunc = procedure (tree_view:PGtkTreeView; path:PGtkTreePath; user_data:gpointer);cdecl;
  {*
   * GtkTreeViewSearchEqualFunc:
   * @model: the `GtkTreeModel` being searched
   * @column: the search column set by gtk_tree_view_set_search_column()
   * @key: the key string to compare with
   * @iter: a `GtkTreeIter` pointing the row of @model that should be compared
   *  with @key.
   * @search_data: (closure): user data from gtk_tree_view_set_search_equal_func()
   *
   * A function used for checking whether a row in @model matches
   * a search key string entered by the user. Note the return value
   * is reversed from what you would normally expect, though it
   * has some similarity to strcmp() returning 0 for equal strings.
   *
   * Returns: %FALSE if the row matches, %TRUE otherwise.
    }
(* Const before type ignored *)

    GtkTreeViewSearchEqualFunc = function (model:PGtkTreeModel; column:longint; key:Pchar; iter:PGtkTreeIter; search_data:gpointer):gboolean;cdecl;
  {*
   * GtkTreeViewRowSeparatorFunc:
   * @model: the `GtkTreeModel`
   * @iter: a `GtkTreeIter` pointing at a row in @model
   * @data: (closure): user data
   *
   * Function type for determining whether the row pointed to by @iter should
   * be rendered as a separator. A common way to implement this is to have a
   * boolean column in the model, whose values the `GtkTreeViewRowSeparatorFunc`
   * returns.
   *
   * Returns: %TRUE if the row is a separator
    }

    GtkTreeViewRowSeparatorFunc = function (model:PGtkTreeModel; iter:PGtkTreeIter; data:gpointer):gboolean;cdecl;
    _GtkTreeView = record
        parent_instance : GtkWidget;cdecl;
      end;

  { Key Binding signals  }
  {< private > }
    _GtkTreeViewClass = record
        parent_class : GtkWidgetClass;
        row_activated : procedure (tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn);cdecl;
        test_expand_row : function (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath):gboolean;cdecl;
        test_collapse_row : function (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath):gboolean;cdecl;
        row_expanded : procedure (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath);cdecl;
        row_collapsed : procedure (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath);cdecl;
        columns_changed : procedure (tree_view:PGtkTreeView);cdecl;
        cursor_changed : procedure (tree_view:PGtkTreeView);cdecl;
        move_cursor : function (tree_view:PGtkTreeView; step:GtkMovementStep; count:longint; extend:gboolean; modify:gboolean):gboolean;cdecl;
        select_all : function (tree_view:PGtkTreeView):gboolean;cdecl;
        unselect_all : function (tree_view:PGtkTreeView):gboolean;cdecl;
        select_cursor_row : function (tree_view:PGtkTreeView; start_editing:gboolean):gboolean;cdecl;
        toggle_cursor_row : function (tree_view:PGtkTreeView):gboolean;cdecl;
        expand_collapse_cursor_row : function (tree_view:PGtkTreeView; logical:gboolean; expand:gboolean; open_all:gboolean):gboolean;cdecl;
        select_cursor_parent : function (tree_view:PGtkTreeView):gboolean;cdecl;
        start_interactive_search : function (tree_view:PGtkTreeView):gboolean;cdecl;
        _reserved : array[0..15] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_tree_view_get_type:GType;

  { Creators  }
  { Zeile entfernt  }
  function gtk_tree_view_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_tree_view_new_with_model(model:PGtkTreeModel):^GtkWidget;

  { Accessors  }
  { Zeile entfernt  }
  function gtk_tree_view_get_model(tree_view:PGtkTreeView):^GtkTreeModel;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_model(tree_view:PGtkTreeView; model:PGtkTreeModel);

  { Zeile entfernt  }
  function gtk_tree_view_get_selection(tree_view:PGtkTreeView):^GtkTreeSelection;

  { Zeile entfernt  }
  function gtk_tree_view_get_headers_visible(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_headers_visible(tree_view:PGtkTreeView; headers_visible:gboolean);

  { Zeile entfernt  }
  procedure gtk_tree_view_columns_autosize(tree_view:PGtkTreeView);

  { Zeile entfernt  }
  function gtk_tree_view_get_headers_clickable(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_headers_clickable(tree_view:PGtkTreeView; setting:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_activate_on_single_click(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_activate_on_single_click(tree_view:PGtkTreeView; single:gboolean);

  { Column functions  }
  { Zeile entfernt  }
  function gtk_tree_view_append_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn):longint;

  { Zeile entfernt  }
  function gtk_tree_view_remove_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn):longint;

  { Zeile entfernt  }
  function gtk_tree_view_insert_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn; position:longint):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_tree_view_insert_column_with_attributes(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer; args:array of const):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_tree_view_insert_column_with_data_func(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer; func:GtkTreeCellDataFunc; 
             data:gpointer; dnotify:GDestroyNotify):longint;

  { Zeile entfernt  }
  function gtk_tree_view_get_n_columns(tree_view:PGtkTreeView):guint;

  { Zeile entfernt  }
  function gtk_tree_view_get_column(tree_view:PGtkTreeView; n:longint):^GtkTreeViewColumn;

  { Zeile entfernt  }
  function gtk_tree_view_get_columns(tree_view:PGtkTreeView):^GList;

  { Zeile entfernt  }
  procedure gtk_tree_view_move_column_after(tree_view:PGtkTreeView; column:PGtkTreeViewColumn; base_column:PGtkTreeViewColumn);

  { Zeile entfernt  }
  procedure gtk_tree_view_set_expander_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn);

  { Zeile entfernt  }
  function gtk_tree_view_get_expander_column(tree_view:PGtkTreeView):^GtkTreeViewColumn;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_column_drag_function(tree_view:PGtkTreeView; func:GtkTreeViewColumnDropFunc; user_data:gpointer; destroy:GDestroyNotify);

  { Actions  }
  { Zeile entfernt  }
  procedure gtk_tree_view_scroll_to_point(tree_view:PGtkTreeView; tree_x:longint; tree_y:longint);

  { Zeile entfernt  }
  procedure gtk_tree_view_scroll_to_cell(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; use_align:gboolean; row_align:single; 
              col_align:single);

  { Zeile entfernt  }
  procedure gtk_tree_view_row_activated(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn);

  { Zeile entfernt  }
  procedure gtk_tree_view_expand_all(tree_view:PGtkTreeView);

  { Zeile entfernt  }
  procedure gtk_tree_view_collapse_all(tree_view:PGtkTreeView);

  { Zeile entfernt  }
  procedure gtk_tree_view_expand_to_path(tree_view:PGtkTreeView; path:PGtkTreePath);

  { Zeile entfernt  }
  function gtk_tree_view_expand_row(tree_view:PGtkTreeView; path:PGtkTreePath; open_all:gboolean):gboolean;

  { Zeile entfernt  }
  function gtk_tree_view_collapse_row(tree_view:PGtkTreeView; path:PGtkTreePath):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_map_expanded_rows(tree_view:PGtkTreeView; func:GtkTreeViewMappingFunc; data:gpointer);

  { Zeile entfernt  }
  function gtk_tree_view_row_expanded(tree_view:PGtkTreeView; path:PGtkTreePath):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_reorderable(tree_view:PGtkTreeView; reorderable:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_reorderable(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_cursor(tree_view:PGtkTreeView; path:PGtkTreePath; focus_column:PGtkTreeViewColumn; start_editing:gboolean);

  { Zeile entfernt  }
  procedure gtk_tree_view_set_cursor_on_cell(tree_view:PGtkTreeView; path:PGtkTreePath; focus_column:PGtkTreeViewColumn; focus_cell:PGtkCellRenderer; start_editing:gboolean);

  { Zeile entfernt  }
  procedure gtk_tree_view_get_cursor(tree_view:PGtkTreeView; path:PPGtkTreePath; focus_column:PPGtkTreeViewColumn);

  { Layout information  }
  { Zeile entfernt  }
  function gtk_tree_view_get_path_at_pos(tree_view:PGtkTreeView; x:longint; y:longint; path:PPGtkTreePath; column:PPGtkTreeViewColumn; 
             cell_x:Plongint; cell_y:Plongint):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_get_cell_area(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; rect:PGdkRectangle);

  { Zeile entfernt  }
  procedure gtk_tree_view_get_background_area(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; rect:PGdkRectangle);

  { Zeile entfernt  }
  procedure gtk_tree_view_get_visible_rect(tree_view:PGtkTreeView; visible_rect:PGdkRectangle);

  { Zeile entfernt  }
  function gtk_tree_view_get_visible_range(tree_view:PGtkTreeView; start_path:PPGtkTreePath; end_path:PPGtkTreePath):gboolean;

  { Zeile entfernt  }
  function gtk_tree_view_is_blank_at_pos(tree_view:PGtkTreeView; x:longint; y:longint; path:PPGtkTreePath; column:PPGtkTreeViewColumn; 
             cell_x:Plongint; cell_y:Plongint):gboolean;

  { Drag-and-Drop support  }
  { Zeile entfernt  }
  procedure gtk_tree_view_enable_model_drag_source(tree_view:PGtkTreeView; start_button_mask:GdkModifierType; formats:PGdkContentFormats; actions:GdkDragAction);

  { Zeile entfernt  }
  procedure gtk_tree_view_enable_model_drag_dest(tree_view:PGtkTreeView; formats:PGdkContentFormats; actions:GdkDragAction);

  { Zeile entfernt  }
  procedure gtk_tree_view_unset_rows_drag_source(tree_view:PGtkTreeView);

  { Zeile entfernt  }
  procedure gtk_tree_view_unset_rows_drag_dest(tree_view:PGtkTreeView);

  { These are useful to implement your own custom stuff.  }
  { Zeile entfernt  }
  procedure gtk_tree_view_set_drag_dest_row(tree_view:PGtkTreeView; path:PGtkTreePath; pos:GtkTreeViewDropPosition);

  { Zeile entfernt  }
  procedure gtk_tree_view_get_drag_dest_row(tree_view:PGtkTreeView; path:PPGtkTreePath; pos:PGtkTreeViewDropPosition);

  { Zeile entfernt  }
  function gtk_tree_view_get_dest_row_at_pos(tree_view:PGtkTreeView; drag_x:longint; drag_y:longint; path:PPGtkTreePath; pos:PGtkTreeViewDropPosition):gboolean;

  { Zeile entfernt  }
  function gtk_tree_view_create_row_drag_icon(tree_view:PGtkTreeView; path:PGtkTreePath):^GdkPaintable;

  { Interactive search  }
  { Zeile entfernt  }
  procedure gtk_tree_view_set_enable_search(tree_view:PGtkTreeView; enable_search:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_enable_search(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  function gtk_tree_view_get_search_column(tree_view:PGtkTreeView):longint;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_search_column(tree_view:PGtkTreeView; column:longint);

  { Zeile entfernt  }
  function gtk_tree_view_get_search_equal_func(tree_view:PGtkTreeView):GtkTreeViewSearchEqualFunc;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_search_equal_func(tree_view:PGtkTreeView; search_equal_func:GtkTreeViewSearchEqualFunc; search_user_data:gpointer; search_destroy:GDestroyNotify);

  { Zeile entfernt  }
  function gtk_tree_view_get_search_entry(tree_view:PGtkTreeView):^GtkEditable;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_search_entry(tree_view:PGtkTreeView; entry:PGtkEditable);

  { Convert between the different coordinate systems  }
  { Zeile entfernt  }
  procedure gtk_tree_view_convert_widget_to_tree_coords(tree_view:PGtkTreeView; wx:longint; wy:longint; tx:Plongint; ty:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_view_convert_tree_to_widget_coords(tree_view:PGtkTreeView; tx:longint; ty:longint; wx:Plongint; wy:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_view_convert_widget_to_bin_window_coords(tree_view:PGtkTreeView; wx:longint; wy:longint; bx:Plongint; by:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_view_convert_bin_window_to_widget_coords(tree_view:PGtkTreeView; bx:longint; by:longint; wx:Plongint; wy:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_view_convert_tree_to_bin_window_coords(tree_view:PGtkTreeView; tx:longint; ty:longint; bx:Plongint; by:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_view_convert_bin_window_to_tree_coords(tree_view:PGtkTreeView; bx:longint; by:longint; tx:Plongint; ty:Plongint);

  { Zeile entfernt  }
  procedure gtk_tree_view_set_fixed_height_mode(tree_view:PGtkTreeView; enable:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_fixed_height_mode(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_hover_selection(tree_view:PGtkTreeView; hover:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_hover_selection(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_hover_expand(tree_view:PGtkTreeView; expand:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_hover_expand(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_rubber_banding(tree_view:PGtkTreeView; enable:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_rubber_banding(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  function gtk_tree_view_is_rubber_banding_active(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  function gtk_tree_view_get_row_separator_func(tree_view:PGtkTreeView):GtkTreeViewRowSeparatorFunc;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_row_separator_func(tree_view:PGtkTreeView; func:GtkTreeViewRowSeparatorFunc; data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  function gtk_tree_view_get_grid_lines(tree_view:PGtkTreeView):GtkTreeViewGridLines;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_grid_lines(tree_view:PGtkTreeView; grid_lines:GtkTreeViewGridLines);

  { Zeile entfernt  }
  function gtk_tree_view_get_enable_tree_lines(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_enable_tree_lines(tree_view:PGtkTreeView; enabled:gboolean);

  { Zeile entfernt  }
  procedure gtk_tree_view_set_show_expanders(tree_view:PGtkTreeView; enabled:gboolean);

  { Zeile entfernt  }
  function gtk_tree_view_get_show_expanders(tree_view:PGtkTreeView):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_level_indentation(tree_view:PGtkTreeView; indentation:longint);

  { Zeile entfernt  }
  function gtk_tree_view_get_level_indentation(tree_view:PGtkTreeView):longint;

  { Convenience functions for setting tooltips  }
  { Zeile entfernt  }
  procedure gtk_tree_view_set_tooltip_row(tree_view:PGtkTreeView; tooltip:PGtkTooltip; path:PGtkTreePath);

  { Zeile entfernt  }
  procedure gtk_tree_view_set_tooltip_cell(tree_view:PGtkTreeView; tooltip:PGtkTooltip; path:PGtkTreePath; column:PGtkTreeViewColumn; cell:PGtkCellRenderer);

  { Zeile entfernt  }
  function gtk_tree_view_get_tooltip_context(tree_view:PGtkTreeView; x:longint; y:longint; keyboard_tip:gboolean; model:PPGtkTreeModel; 
             path:PPGtkTreePath; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_view_set_tooltip_column(tree_view:PGtkTreeView; column:longint);

  { Zeile entfernt  }
  function gtk_tree_view_get_tooltip_column(tree_view:PGtkTreeView):longint;

  { Zeile entfernt  }
{$endif}
  { __GTK_TREE_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_VIEW:=gtk_tree_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW(obj : longint) : longint;
  begin
    GTK_TREE_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_VIEW,GtkTreeView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_VIEW(obj : longint) : longint;
  begin
    GTK_IS_TREE_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW_CLASS(klass : longint) : longint;
  begin
    GTK_TREE_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_VIEW,GtkTreeViewClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_VIEW_CLASS(klass : longint) : longint;
  begin
    GTK_IS_TREE_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_VIEW_GET_CLASS(obj : longint) : longint;
  begin
    GTK_TREE_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_VIEW,GtkTreeViewClass);
  end;

  function gtk_tree_view_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_new_with_model(model:PGtkTreeModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_model(tree_view:PGtkTreeView):PGtkTreeModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_model(tree_view:PGtkTreeView; model:PGtkTreeModel);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_selection(tree_view:PGtkTreeView):PGtkTreeSelection;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_headers_visible(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_headers_visible(tree_view:PGtkTreeView; headers_visible:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_columns_autosize(tree_view:PGtkTreeView);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_headers_clickable(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_headers_clickable(tree_view:PGtkTreeView; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_activate_on_single_click(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_activate_on_single_click(tree_view:PGtkTreeView; single:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_append_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_remove_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_insert_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn; position:longint):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_insert_column_with_attributes(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_insert_column_with_data_func(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer; func:GtkTreeCellDataFunc; 
             data:gpointer; dnotify:GDestroyNotify):longint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_n_columns(tree_view:PGtkTreeView):guint;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_column(tree_view:PGtkTreeView; n:longint):PGtkTreeViewColumn;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_columns(tree_view:PGtkTreeView):PGList;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_move_column_after(tree_view:PGtkTreeView; column:PGtkTreeViewColumn; base_column:PGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_expander_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_expander_column(tree_view:PGtkTreeView):PGtkTreeViewColumn;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_column_drag_function(tree_view:PGtkTreeView; func:GtkTreeViewColumnDropFunc; user_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_scroll_to_point(tree_view:PGtkTreeView; tree_x:longint; tree_y:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_scroll_to_cell(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; use_align:gboolean; row_align:single; 
              col_align:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_row_activated(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_expand_all(tree_view:PGtkTreeView);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_collapse_all(tree_view:PGtkTreeView);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_expand_to_path(tree_view:PGtkTreeView; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_expand_row(tree_view:PGtkTreeView; path:PGtkTreePath; open_all:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_collapse_row(tree_view:PGtkTreeView; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_map_expanded_rows(tree_view:PGtkTreeView; func:GtkTreeViewMappingFunc; data:gpointer);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_row_expanded(tree_view:PGtkTreeView; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_reorderable(tree_view:PGtkTreeView; reorderable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_reorderable(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_cursor(tree_view:PGtkTreeView; path:PGtkTreePath; focus_column:PGtkTreeViewColumn; start_editing:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_cursor_on_cell(tree_view:PGtkTreeView; path:PGtkTreePath; focus_column:PGtkTreeViewColumn; focus_cell:PGtkCellRenderer; start_editing:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_get_cursor(tree_view:PGtkTreeView; path:PPGtkTreePath; focus_column:PPGtkTreeViewColumn);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_path_at_pos(tree_view:PGtkTreeView; x:longint; y:longint; path:PPGtkTreePath; column:PPGtkTreeViewColumn; 
             cell_x:Plongint; cell_y:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_get_cell_area(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_get_background_area(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_get_visible_rect(tree_view:PGtkTreeView; visible_rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_visible_range(tree_view:PGtkTreeView; start_path:PPGtkTreePath; end_path:PPGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_is_blank_at_pos(tree_view:PGtkTreeView; x:longint; y:longint; path:PPGtkTreePath; column:PPGtkTreeViewColumn; 
             cell_x:Plongint; cell_y:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_enable_model_drag_source(tree_view:PGtkTreeView; start_button_mask:GdkModifierType; formats:PGdkContentFormats; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_enable_model_drag_dest(tree_view:PGtkTreeView; formats:PGdkContentFormats; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_unset_rows_drag_source(tree_view:PGtkTreeView);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_unset_rows_drag_dest(tree_view:PGtkTreeView);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_drag_dest_row(tree_view:PGtkTreeView; path:PGtkTreePath; pos:GtkTreeViewDropPosition);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_get_drag_dest_row(tree_view:PGtkTreeView; path:PPGtkTreePath; pos:PGtkTreeViewDropPosition);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_dest_row_at_pos(tree_view:PGtkTreeView; drag_x:longint; drag_y:longint; path:PPGtkTreePath; pos:PGtkTreeViewDropPosition):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_create_row_drag_icon(tree_view:PGtkTreeView; path:PGtkTreePath):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_enable_search(tree_view:PGtkTreeView; enable_search:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_enable_search(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_search_column(tree_view:PGtkTreeView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_search_column(tree_view:PGtkTreeView; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_search_equal_func(tree_view:PGtkTreeView):GtkTreeViewSearchEqualFunc;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_search_equal_func(tree_view:PGtkTreeView; search_equal_func:GtkTreeViewSearchEqualFunc; search_user_data:gpointer; search_destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_search_entry(tree_view:PGtkTreeView):PGtkEditable;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_search_entry(tree_view:PGtkTreeView; entry:PGtkEditable);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_convert_widget_to_tree_coords(tree_view:PGtkTreeView; wx:longint; wy:longint; tx:Plongint; ty:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_convert_tree_to_widget_coords(tree_view:PGtkTreeView; tx:longint; ty:longint; wx:Plongint; wy:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_convert_widget_to_bin_window_coords(tree_view:PGtkTreeView; wx:longint; wy:longint; bx:Plongint; by:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_convert_bin_window_to_widget_coords(tree_view:PGtkTreeView; bx:longint; by:longint; wx:Plongint; wy:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_convert_tree_to_bin_window_coords(tree_view:PGtkTreeView; tx:longint; ty:longint; bx:Plongint; by:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_convert_bin_window_to_tree_coords(tree_view:PGtkTreeView; bx:longint; by:longint; tx:Plongint; ty:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_fixed_height_mode(tree_view:PGtkTreeView; enable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_fixed_height_mode(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_hover_selection(tree_view:PGtkTreeView; hover:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_hover_selection(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_hover_expand(tree_view:PGtkTreeView; expand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_hover_expand(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_rubber_banding(tree_view:PGtkTreeView; enable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_rubber_banding(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_is_rubber_banding_active(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_row_separator_func(tree_view:PGtkTreeView):GtkTreeViewRowSeparatorFunc;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_row_separator_func(tree_view:PGtkTreeView; func:GtkTreeViewRowSeparatorFunc; data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_grid_lines(tree_view:PGtkTreeView):GtkTreeViewGridLines;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_grid_lines(tree_view:PGtkTreeView; grid_lines:GtkTreeViewGridLines);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_enable_tree_lines(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_enable_tree_lines(tree_view:PGtkTreeView; enabled:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_show_expanders(tree_view:PGtkTreeView; enabled:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_show_expanders(tree_view:PGtkTreeView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_level_indentation(tree_view:PGtkTreeView; indentation:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_level_indentation(tree_view:PGtkTreeView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_tooltip_row(tree_view:PGtkTreeView; tooltip:PGtkTooltip; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_tooltip_cell(tree_view:PGtkTreeView; tooltip:PGtkTooltip; path:PGtkTreePath; column:PGtkTreeViewColumn; cell:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_tooltip_context(tree_view:PGtkTreeView; x:longint; y:longint; keyboard_tip:gboolean; model:PPGtkTreeModel; 
             path:PPGtkTreePath; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_view_set_tooltip_column(tree_view:PGtkTreeView; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_tree_view_get_tooltip_column(tree_view:PGtkTreeView):longint;
  begin
    { You must implement this function }
  end;

