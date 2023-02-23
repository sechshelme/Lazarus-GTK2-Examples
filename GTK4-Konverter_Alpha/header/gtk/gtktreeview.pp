
unit gtktreeview;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeview.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeview.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

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
PGtkTreeViewClass  = ^GtkTreeViewClass;
PGtkTreeViewColumn  = ^GtkTreeViewColumn;
PGtkTreeViewDropPosition  = ^GtkTreeViewDropPosition;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_VIEW_H__}
{$define __GTK_TREE_VIEW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreeviewcolumn.h>}
{$include <gtk/gtkentry.h>}




type
  PGtkTreeViewDropPosition = ^TGtkTreeViewDropPosition;
  TGtkTreeViewDropPosition = (GTK_TREE_VIEW_DROP_BEFORE,GTK_TREE_VIEW_DROP_AFTER,
    GTK_TREE_VIEW_DROP_INTO_OR_BEFORE,GTK_TREE_VIEW_DROP_INTO_OR_AFTER
    );

function GTK_TYPE_TREE_VIEW : longint; { return type might be wrong }

function GTK_TREE_VIEW(obj : longint) : longint;

function GTK_IS_TREE_VIEW(obj : longint) : longint;

function GTK_TREE_VIEW_CLASS(klass : longint) : longint;

function GTK_IS_TREE_VIEW_CLASS(klass : longint) : longint;

function GTK_TREE_VIEW_GET_CLASS(obj : longint) : longint;

type


  TGtkTreeViewColumnDropFunc = function (tree_view:PGtkTreeView; column:PGtkTreeViewColumn; prev_column:PGtkTreeViewColumn; next_column:PGtkTreeViewColumn; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeViewMappingFunc = procedure (tree_view:PGtkTreeView; path:PGtkTreePath; user_data:Tgpointer);cdecl;


  TGtkTreeViewSearchEqualFunc = function (model:PGtkTreeModel; column:longint; key:Pchar; iter:PGtkTreeIter; search_data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeViewRowSeparatorFunc = function (model:PGtkTreeModel; iter:PGtkTreeIter; data:Tgpointer):Tgboolean;cdecl;
  PGtkTreeView = ^TGtkTreeView;
  TGtkTreeView = record
      parent_instance : TGtkWidget;cdecl;
    end;



  PGtkTreeViewClass = ^TGtkTreeViewClass;
  TGtkTreeViewClass = record
      parent_class : TGtkWidgetClass;
      row_activated : procedure (tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn);cdecl;
      test_expand_row : function (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath):Tgboolean;cdecl;
      test_collapse_row : function (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath):Tgboolean;cdecl;
      row_expanded : procedure (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath);cdecl;
      row_collapsed : procedure (tree_view:PGtkTreeView; iter:PGtkTreeIter; path:PGtkTreePath);cdecl;
      columns_changed : procedure (tree_view:PGtkTreeView);cdecl;
      cursor_changed : procedure (tree_view:PGtkTreeView);cdecl;
      move_cursor : function (tree_view:PGtkTreeView; step:TGtkMovementStep; count:longint; extend:Tgboolean; modify:Tgboolean):Tgboolean;cdecl;
      select_all : function (tree_view:PGtkTreeView):Tgboolean;cdecl;
      unselect_all : function (tree_view:PGtkTreeView):Tgboolean;cdecl;
      select_cursor_row : function (tree_view:PGtkTreeView; start_editing:Tgboolean):Tgboolean;cdecl;
      toggle_cursor_row : function (tree_view:PGtkTreeView):Tgboolean;cdecl;
      expand_collapse_cursor_row : function (tree_view:PGtkTreeView; logical:Tgboolean; expand:Tgboolean; open_all:Tgboolean):Tgboolean;cdecl;
      select_cursor_parent : function (tree_view:PGtkTreeView):Tgboolean;cdecl;
      start_interactive_search : function (tree_view:PGtkTreeView):Tgboolean;cdecl;
      _reserved : array[0..15] of Tgpointer;
    end;



function gtk_tree_view_get_type:TGType;cdecl;external;


function gtk_tree_view_new:PGtkWidget;cdecl;external;

function gtk_tree_view_new_with_model(model:PGtkTreeModel):PGtkWidget;cdecl;external;


function gtk_tree_view_get_model(tree_view:PGtkTreeView):PGtkTreeModel;cdecl;external;

procedure gtk_tree_view_set_model(tree_view:PGtkTreeView; model:PGtkTreeModel);cdecl;external;

function gtk_tree_view_get_selection(tree_view:PGtkTreeView):PGtkTreeSelection;cdecl;external;

function gtk_tree_view_get_headers_visible(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_headers_visible(tree_view:PGtkTreeView; headers_visible:Tgboolean);cdecl;external;

procedure gtk_tree_view_columns_autosize(tree_view:PGtkTreeView);cdecl;external;

function gtk_tree_view_get_headers_clickable(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_headers_clickable(tree_view:PGtkTreeView; setting:Tgboolean);cdecl;external;

function gtk_tree_view_get_activate_on_single_click(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_activate_on_single_click(tree_view:PGtkTreeView; single:Tgboolean);cdecl;external;


function gtk_tree_view_append_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn):longint;cdecl;external;

function gtk_tree_view_remove_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn):longint;cdecl;external;

function gtk_tree_view_insert_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn; position:longint):longint;cdecl;external;

function gtk_tree_view_insert_column_with_attributes(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer; args:array of const):longint;cdecl;external;
function gtk_tree_view_insert_column_with_attributes(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer):longint;cdecl;external;

function gtk_tree_view_insert_column_with_data_func(tree_view:PGtkTreeView; position:longint; title:Pchar; cell:PGtkCellRenderer; func:TGtkTreeCellDataFunc; 
           data:Tgpointer; dnotify:TGDestroyNotify):longint;cdecl;external;

function gtk_tree_view_get_n_columns(tree_view:PGtkTreeView):Tguint;cdecl;external;

function gtk_tree_view_get_column(tree_view:PGtkTreeView; n:longint):PGtkTreeViewColumn;cdecl;external;

function gtk_tree_view_get_columns(tree_view:PGtkTreeView):PGList;cdecl;external;

procedure gtk_tree_view_move_column_after(tree_view:PGtkTreeView; column:PGtkTreeViewColumn; base_column:PGtkTreeViewColumn);cdecl;external;

procedure gtk_tree_view_set_expander_column(tree_view:PGtkTreeView; column:PGtkTreeViewColumn);cdecl;external;

function gtk_tree_view_get_expander_column(tree_view:PGtkTreeView):PGtkTreeViewColumn;cdecl;external;

procedure gtk_tree_view_set_column_drag_function(tree_view:PGtkTreeView; func:TGtkTreeViewColumnDropFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;


procedure gtk_tree_view_scroll_to_point(tree_view:PGtkTreeView; tree_x:longint; tree_y:longint);cdecl;external;

procedure gtk_tree_view_scroll_to_cell(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; use_align:Tgboolean; row_align:single; 
            col_align:single);cdecl;external;

procedure gtk_tree_view_row_activated(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn);cdecl;external;

procedure gtk_tree_view_expand_all(tree_view:PGtkTreeView);cdecl;external;

procedure gtk_tree_view_collapse_all(tree_view:PGtkTreeView);cdecl;external;

procedure gtk_tree_view_expand_to_path(tree_view:PGtkTreeView; path:PGtkTreePath);cdecl;external;

function gtk_tree_view_expand_row(tree_view:PGtkTreeView; path:PGtkTreePath; open_all:Tgboolean):Tgboolean;cdecl;external;

function gtk_tree_view_collapse_row(tree_view:PGtkTreeView; path:PGtkTreePath):Tgboolean;cdecl;external;

procedure gtk_tree_view_map_expanded_rows(tree_view:PGtkTreeView; func:TGtkTreeViewMappingFunc; data:Tgpointer);cdecl;external;

function gtk_tree_view_row_expanded(tree_view:PGtkTreeView; path:PGtkTreePath):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_reorderable(tree_view:PGtkTreeView; reorderable:Tgboolean);cdecl;external;

function gtk_tree_view_get_reorderable(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_cursor(tree_view:PGtkTreeView; path:PGtkTreePath; focus_column:PGtkTreeViewColumn; start_editing:Tgboolean);cdecl;external;

procedure gtk_tree_view_set_cursor_on_cell(tree_view:PGtkTreeView; path:PGtkTreePath; focus_column:PGtkTreeViewColumn; focus_cell:PGtkCellRenderer; start_editing:Tgboolean);cdecl;external;

procedure gtk_tree_view_get_cursor(tree_view:PGtkTreeView; path:PPGtkTreePath; focus_column:PPGtkTreeViewColumn);cdecl;external;


function gtk_tree_view_get_path_at_pos(tree_view:PGtkTreeView; x:longint; y:longint; path:PPGtkTreePath; column:PPGtkTreeViewColumn; 
           cell_x:Plongint; cell_y:Plongint):Tgboolean;cdecl;external;

procedure gtk_tree_view_get_cell_area(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; rect:PGdkRectangle);cdecl;external;

procedure gtk_tree_view_get_background_area(tree_view:PGtkTreeView; path:PGtkTreePath; column:PGtkTreeViewColumn; rect:PGdkRectangle);cdecl;external;

procedure gtk_tree_view_get_visible_rect(tree_view:PGtkTreeView; visible_rect:PGdkRectangle);cdecl;external;

function gtk_tree_view_get_visible_range(tree_view:PGtkTreeView; start_path:PPGtkTreePath; end_path:PPGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_view_is_blank_at_pos(tree_view:PGtkTreeView; x:longint; y:longint; path:PPGtkTreePath; column:PPGtkTreeViewColumn; 
           cell_x:Plongint; cell_y:Plongint):Tgboolean;cdecl;external;


procedure gtk_tree_view_enable_model_drag_source(tree_view:PGtkTreeView; start_button_mask:TGdkModifierType; formats:PGdkContentFormats; actions:TGdkDragAction);cdecl;external;

procedure gtk_tree_view_enable_model_drag_dest(tree_view:PGtkTreeView; formats:PGdkContentFormats; actions:TGdkDragAction);cdecl;external;

procedure gtk_tree_view_unset_rows_drag_source(tree_view:PGtkTreeView);cdecl;external;

procedure gtk_tree_view_unset_rows_drag_dest(tree_view:PGtkTreeView);cdecl;external;


procedure gtk_tree_view_set_drag_dest_row(tree_view:PGtkTreeView; path:PGtkTreePath; pos:TGtkTreeViewDropPosition);cdecl;external;

procedure gtk_tree_view_get_drag_dest_row(tree_view:PGtkTreeView; path:PPGtkTreePath; pos:PGtkTreeViewDropPosition);cdecl;external;

function gtk_tree_view_get_dest_row_at_pos(tree_view:PGtkTreeView; drag_x:longint; drag_y:longint; path:PPGtkTreePath; pos:PGtkTreeViewDropPosition):Tgboolean;cdecl;external;

function gtk_tree_view_create_row_drag_icon(tree_view:PGtkTreeView; path:PGtkTreePath):PGdkPaintable;cdecl;external;


procedure gtk_tree_view_set_enable_search(tree_view:PGtkTreeView; enable_search:Tgboolean);cdecl;external;

function gtk_tree_view_get_enable_search(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

function gtk_tree_view_get_search_column(tree_view:PGtkTreeView):longint;cdecl;external;

procedure gtk_tree_view_set_search_column(tree_view:PGtkTreeView; column:longint);cdecl;external;

function gtk_tree_view_get_search_equal_func(tree_view:PGtkTreeView):TGtkTreeViewSearchEqualFunc;cdecl;external;

procedure gtk_tree_view_set_search_equal_func(tree_view:PGtkTreeView; search_equal_func:TGtkTreeViewSearchEqualFunc; search_user_data:Tgpointer; search_destroy:TGDestroyNotify);cdecl;external;

function gtk_tree_view_get_search_entry(tree_view:PGtkTreeView):PGtkEditable;cdecl;external;

procedure gtk_tree_view_set_search_entry(tree_view:PGtkTreeView; entry:PGtkEditable);cdecl;external;


procedure gtk_tree_view_convert_widget_to_tree_coords(tree_view:PGtkTreeView; wx:longint; wy:longint; tx:Plongint; ty:Plongint);cdecl;external;

procedure gtk_tree_view_convert_tree_to_widget_coords(tree_view:PGtkTreeView; tx:longint; ty:longint; wx:Plongint; wy:Plongint);cdecl;external;

procedure gtk_tree_view_convert_widget_to_bin_window_coords(tree_view:PGtkTreeView; wx:longint; wy:longint; bx:Plongint; by:Plongint);cdecl;external;

procedure gtk_tree_view_convert_bin_window_to_widget_coords(tree_view:PGtkTreeView; bx:longint; by:longint; wx:Plongint; wy:Plongint);cdecl;external;

procedure gtk_tree_view_convert_tree_to_bin_window_coords(tree_view:PGtkTreeView; tx:longint; ty:longint; bx:Plongint; by:Plongint);cdecl;external;

procedure gtk_tree_view_convert_bin_window_to_tree_coords(tree_view:PGtkTreeView; bx:longint; by:longint; tx:Plongint; ty:Plongint);cdecl;external;

procedure gtk_tree_view_set_fixed_height_mode(tree_view:PGtkTreeView; enable:Tgboolean);cdecl;external;

function gtk_tree_view_get_fixed_height_mode(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_hover_selection(tree_view:PGtkTreeView; hover:Tgboolean);cdecl;external;

function gtk_tree_view_get_hover_selection(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_hover_expand(tree_view:PGtkTreeView; expand:Tgboolean);cdecl;external;

function gtk_tree_view_get_hover_expand(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_rubber_banding(tree_view:PGtkTreeView; enable:Tgboolean);cdecl;external;

function gtk_tree_view_get_rubber_banding(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

function gtk_tree_view_is_rubber_banding_active(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

function gtk_tree_view_get_row_separator_func(tree_view:PGtkTreeView):TGtkTreeViewRowSeparatorFunc;cdecl;external;

procedure gtk_tree_view_set_row_separator_func(tree_view:PGtkTreeView; func:TGtkTreeViewRowSeparatorFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

function gtk_tree_view_get_grid_lines(tree_view:PGtkTreeView):TGtkTreeViewGridLines;cdecl;external;

procedure gtk_tree_view_set_grid_lines(tree_view:PGtkTreeView; grid_lines:TGtkTreeViewGridLines);cdecl;external;

function gtk_tree_view_get_enable_tree_lines(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_enable_tree_lines(tree_view:PGtkTreeView; enabled:Tgboolean);cdecl;external;

procedure gtk_tree_view_set_show_expanders(tree_view:PGtkTreeView; enabled:Tgboolean);cdecl;external;

function gtk_tree_view_get_show_expanders(tree_view:PGtkTreeView):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_level_indentation(tree_view:PGtkTreeView; indentation:longint);cdecl;external;

function gtk_tree_view_get_level_indentation(tree_view:PGtkTreeView):longint;cdecl;external;


procedure gtk_tree_view_set_tooltip_row(tree_view:PGtkTreeView; tooltip:PGtkTooltip; path:PGtkTreePath);cdecl;external;

procedure gtk_tree_view_set_tooltip_cell(tree_view:PGtkTreeView; tooltip:PGtkTooltip; path:PGtkTreePath; column:PGtkTreeViewColumn; cell:PGtkCellRenderer);cdecl;external;

function gtk_tree_view_get_tooltip_context(tree_view:PGtkTreeView; x:longint; y:longint; keyboard_tip:Tgboolean; model:PPGtkTreeModel; 
           path:PPGtkTreePath; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_tree_view_set_tooltip_column(tree_view:PGtkTreeView; column:longint);cdecl;external;

function gtk_tree_view_get_tooltip_column(tree_view:PGtkTreeView):longint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_VIEW:=gtk_tree_view_get_type;
  end;

function GTK_TREE_VIEW(obj : longint) : longint;
begin
  GTK_TREE_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_VIEW,GtkTreeView);
end;

function GTK_IS_TREE_VIEW(obj : longint) : longint;
begin
  GTK_IS_TREE_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_VIEW);
end;

function GTK_TREE_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_TREE_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_VIEW,GtkTreeViewClass);
end;

function GTK_IS_TREE_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_IS_TREE_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_VIEW);
end;

function GTK_TREE_VIEW_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_VIEW,GtkTreeViewClass);
end;


end.
