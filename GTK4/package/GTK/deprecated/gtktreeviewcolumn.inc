/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkTreeViewColumn = record
  end;
  PGtkTreeViewColumn = ^TGtkTreeViewColumn;
  PPGtkTreeViewColumn = ^PGtkTreeViewColumn;

  PGtkTreeViewColumnSizing = ^TGtkTreeViewColumnSizing;
  TGtkTreeViewColumnSizing = longint;

const
  GTK_TREE_VIEW_COLUMN_GROW_ONLY = 0;
  GTK_TREE_VIEW_COLUMN_AUTOSIZE = 1;
  GTK_TREE_VIEW_COLUMN_FIXED = 2;

type

  TGtkTreeCellDataFunc = procedure(tree_column: PGtkTreeViewColumn; cell: PGtkCellRenderer; tree_model: PGtkTreeModel; iter: PGtkTreeIter; Data: Tgpointer); cdecl;

function gtk_tree_view_column_get_type: TGType; cdecl; external gtklib;
function gtk_tree_view_column_new: PGtkTreeViewColumn; cdecl; external gtklib;
function gtk_tree_view_column_new_with_area(area: PGtkCellArea): PGtkTreeViewColumn; cdecl; external gtklib;
function gtk_tree_view_column_new_with_attributes(title: PChar; cell: PGtkCellRenderer; args: array of const): PGtkTreeViewColumn; cdecl; external gtklib;
function gtk_tree_view_column_new_with_attributes(title: PChar; cell: PGtkCellRenderer): PGtkTreeViewColumn; cdecl; external gtklib;
procedure gtk_tree_view_column_pack_start(tree_column: PGtkTreeViewColumn; cell: PGtkCellRenderer; expand: Tgboolean); cdecl; external gtklib;
procedure gtk_tree_view_column_pack_end(tree_column: PGtkTreeViewColumn; cell: PGtkCellRenderer; expand: Tgboolean); cdecl; external gtklib;
procedure gtk_tree_view_column_clear(tree_column: PGtkTreeViewColumn); cdecl; external gtklib;
procedure gtk_tree_view_column_add_attribute(tree_column: PGtkTreeViewColumn; cell_renderer: PGtkCellRenderer; attribute: PChar; column: longint); cdecl; external gtklib;
procedure gtk_tree_view_column_set_attributes(tree_column: PGtkTreeViewColumn; cell_renderer: PGtkCellRenderer; args: array of const); cdecl; external gtklib;
procedure gtk_tree_view_column_set_attributes(tree_column: PGtkTreeViewColumn; cell_renderer: PGtkCellRenderer); cdecl; external gtklib;
procedure gtk_tree_view_column_set_cell_data_func(tree_column: PGtkTreeViewColumn; cell_renderer: PGtkCellRenderer; func: TGtkTreeCellDataFunc; func_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_tree_view_column_clear_attributes(tree_column: PGtkTreeViewColumn; cell_renderer: PGtkCellRenderer); cdecl; external gtklib;
procedure gtk_tree_view_column_set_spacing(tree_column: PGtkTreeViewColumn; spacing: longint); cdecl; external gtklib;
function gtk_tree_view_column_get_spacing(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
procedure gtk_tree_view_column_set_visible(tree_column: PGtkTreeViewColumn; Visible: Tgboolean); cdecl; external gtklib;
function gtk_tree_view_column_get_visible(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_set_resizable(tree_column: PGtkTreeViewColumn; resizable: Tgboolean); cdecl; external gtklib;
function gtk_tree_view_column_get_resizable(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_set_sizing(tree_column: PGtkTreeViewColumn; _type: TGtkTreeViewColumnSizing); cdecl; external gtklib;
function gtk_tree_view_column_get_sizing(tree_column: PGtkTreeViewColumn): TGtkTreeViewColumnSizing; cdecl; external gtklib;
function gtk_tree_view_column_get_x_offset(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
function gtk_tree_view_column_get_width(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
function gtk_tree_view_column_get_fixed_width(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
procedure gtk_tree_view_column_set_fixed_width(tree_column: PGtkTreeViewColumn; fixed_width: longint); cdecl; external gtklib;
procedure gtk_tree_view_column_set_min_width(tree_column: PGtkTreeViewColumn; min_width: longint); cdecl; external gtklib;
function gtk_tree_view_column_get_min_width(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
procedure gtk_tree_view_column_set_max_width(tree_column: PGtkTreeViewColumn; max_width: longint); cdecl; external gtklib;
function gtk_tree_view_column_get_max_width(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
procedure gtk_tree_view_column_clicked(tree_column: PGtkTreeViewColumn); cdecl; external gtklib;
procedure gtk_tree_view_column_set_title(tree_column: PGtkTreeViewColumn; title: PChar); cdecl; external gtklib;
function gtk_tree_view_column_get_title(tree_column: PGtkTreeViewColumn): PChar; cdecl; external gtklib;
procedure gtk_tree_view_column_set_expand(tree_column: PGtkTreeViewColumn; expand: Tgboolean); cdecl; external gtklib;
function gtk_tree_view_column_get_expand(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_set_clickable(tree_column: PGtkTreeViewColumn; clickable: Tgboolean); cdecl; external gtklib;
function gtk_tree_view_column_get_clickable(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_set_widget(tree_column: PGtkTreeViewColumn; widget: PGtkWidget); cdecl; external gtklib;
function gtk_tree_view_column_get_widget(tree_column: PGtkTreeViewColumn): PGtkWidget; cdecl; external gtklib;
procedure gtk_tree_view_column_set_alignment(tree_column: PGtkTreeViewColumn; xalign: single); cdecl; external gtklib;
function gtk_tree_view_column_get_alignment(tree_column: PGtkTreeViewColumn): single; cdecl; external gtklib;
procedure gtk_tree_view_column_set_reorderable(tree_column: PGtkTreeViewColumn; reorderable: Tgboolean); cdecl; external gtklib;
function gtk_tree_view_column_get_reorderable(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_set_sort_column_id(tree_column: PGtkTreeViewColumn; sort_column_id: longint); cdecl; external gtklib;
function gtk_tree_view_column_get_sort_column_id(tree_column: PGtkTreeViewColumn): longint; cdecl; external gtklib;
procedure gtk_tree_view_column_set_sort_indicator(tree_column: PGtkTreeViewColumn; setting: Tgboolean); cdecl; external gtklib;
function gtk_tree_view_column_get_sort_indicator(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_set_sort_order(tree_column: PGtkTreeViewColumn; order: TGtkSortType); cdecl; external gtklib;
function gtk_tree_view_column_get_sort_order(tree_column: PGtkTreeViewColumn): TGtkSortType; cdecl; external gtklib;
procedure gtk_tree_view_column_cell_set_cell_data(tree_column: PGtkTreeViewColumn; tree_model: PGtkTreeModel; iter: PGtkTreeIter; is_expander: Tgboolean; is_expanded: Tgboolean); cdecl; external gtklib;
procedure gtk_tree_view_column_cell_get_size(tree_column: PGtkTreeViewColumn; x_offset: Plongint; y_offset: Plongint; Width: Plongint; Height: Plongint); cdecl; external gtklib;
function gtk_tree_view_column_cell_is_visible(tree_column: PGtkTreeViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_focus_cell(tree_column: PGtkTreeViewColumn; cell: PGtkCellRenderer); cdecl; external gtklib;
function gtk_tree_view_column_cell_get_position(tree_column: PGtkTreeViewColumn; cell_renderer: PGtkCellRenderer; x_offset: Plongint; Width: Plongint): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_view_column_queue_resize(tree_column: PGtkTreeViewColumn); cdecl; external gtklib;
function gtk_tree_view_column_get_tree_view(tree_column: PGtkTreeViewColumn): PGtkWidget; cdecl; external gtklib;
function gtk_tree_view_column_get_button(tree_column: PGtkTreeViewColumn): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 15:24:42 ===

function GTK_TYPE_TREE_VIEW_COLUMN: TGType;
function GTK_TREE_VIEW_COLUMN(obj: Pointer): PGtkTreeViewColumn;
function GTK_IS_TREE_VIEW_COLUMN(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_VIEW_COLUMN: TGType;
begin
  GTK_TYPE_TREE_VIEW_COLUMN := gtk_tree_view_column_get_type;
end;

function GTK_TREE_VIEW_COLUMN(obj: Pointer): PGtkTreeViewColumn;
begin
  Result := PGtkTreeViewColumn(g_type_check_instance_cast(obj, GTK_TYPE_TREE_VIEW_COLUMN));
end;

function GTK_IS_TREE_VIEW_COLUMN(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_VIEW_COLUMN);
end;



{$ENDIF read_implementation}
