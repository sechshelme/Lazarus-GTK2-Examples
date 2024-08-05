/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkIconView = record
  end;
  PGtkIconView = ^TGtkIconView;

  TGtkIconViewForeachFunc = procedure(icon_view: PGtkIconView; path: PGtkTreePath; Data: Tgpointer); cdecl;

  PGtkIconViewDropPosition = ^TGtkIconViewDropPosition;
  TGtkIconViewDropPosition = longint;

const
  GTK_ICON_VIEW_NO_DROP = 0;
  GTK_ICON_VIEW_DROP_INTO = 1;
  GTK_ICON_VIEW_DROP_LEFT = 2;
  GTK_ICON_VIEW_DROP_RIGHT = 3;
  GTK_ICON_VIEW_DROP_ABOVE = 4;
  GTK_ICON_VIEW_DROP_BELOW = 5;


function gtk_icon_view_get_type: TGType; cdecl; external gtklib;
function gtk_icon_view_new: PGtkWidget; cdecl; external gtklib;
function gtk_icon_view_new_with_area(area: PGtkCellArea): PGtkWidget; cdecl; external gtklib;
function gtk_icon_view_new_with_model(model: PGtkTreeModel): PGtkWidget; cdecl; external gtklib;
procedure gtk_icon_view_set_model(icon_view: PGtkIconView; model: PGtkTreeModel); cdecl; external gtklib;
function gtk_icon_view_get_model(icon_view: PGtkIconView): PGtkTreeModel; cdecl; external gtklib;
procedure gtk_icon_view_set_text_column(icon_view: PGtkIconView; column: longint); cdecl; external gtklib;
function gtk_icon_view_get_text_column(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_markup_column(icon_view: PGtkIconView; column: longint); cdecl; external gtklib;
function gtk_icon_view_get_markup_column(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_pixbuf_column(icon_view: PGtkIconView; column: longint); cdecl; external gtklib;
function gtk_icon_view_get_pixbuf_column(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_item_orientation(icon_view: PGtkIconView; orientation: TGtkOrientation); cdecl; external gtklib;
function gtk_icon_view_get_item_orientation(icon_view: PGtkIconView): TGtkOrientation; cdecl; external gtklib;
procedure gtk_icon_view_set_columns(icon_view: PGtkIconView; columns: longint); cdecl; external gtklib;
function gtk_icon_view_get_columns(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_item_width(icon_view: PGtkIconView; item_width: longint); cdecl; external gtklib;
function gtk_icon_view_get_item_width(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_spacing(icon_view: PGtkIconView; spacing: longint); cdecl; external gtklib;
function gtk_icon_view_get_spacing(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_row_spacing(icon_view: PGtkIconView; row_spacing: longint); cdecl; external gtklib;
function gtk_icon_view_get_row_spacing(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_column_spacing(icon_view: PGtkIconView; column_spacing: longint); cdecl; external gtklib;
function gtk_icon_view_get_column_spacing(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_margin(icon_view: PGtkIconView; margin: longint); cdecl; external gtklib;
function gtk_icon_view_get_margin(icon_view: PGtkIconView): longint; cdecl; external gtklib;
procedure gtk_icon_view_set_item_padding(icon_view: PGtkIconView; item_padding: longint); cdecl; external gtklib;
function gtk_icon_view_get_item_padding(icon_view: PGtkIconView): longint; cdecl; external gtklib;
function gtk_icon_view_get_path_at_pos(icon_view: PGtkIconView; x: longint; y: longint): PGtkTreePath; cdecl; external gtklib;
function gtk_icon_view_get_item_at_pos(icon_view: PGtkIconView; x: longint; y: longint; path: PPGtkTreePath; cell: PPGtkCellRenderer): Tgboolean; cdecl; external gtklib;
function gtk_icon_view_get_visible_range(icon_view: PGtkIconView; start_path: PPGtkTreePath; end_path: PPGtkTreePath): Tgboolean; cdecl; external gtklib;
procedure gtk_icon_view_set_activate_on_single_click(icon_view: PGtkIconView; single: Tgboolean); cdecl; external gtklib;
function gtk_icon_view_get_activate_on_single_click(icon_view: PGtkIconView): Tgboolean; cdecl; external gtklib;
procedure gtk_icon_view_selected_foreach(icon_view: PGtkIconView; func: TGtkIconViewForeachFunc; Data: Tgpointer); cdecl; external gtklib;
procedure gtk_icon_view_set_selection_mode(icon_view: PGtkIconView; mode: TGtkSelectionMode); cdecl; external gtklib;
function gtk_icon_view_get_selection_mode(icon_view: PGtkIconView): TGtkSelectionMode; cdecl; external gtklib;
procedure gtk_icon_view_select_path(icon_view: PGtkIconView; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_icon_view_unselect_path(icon_view: PGtkIconView; path: PGtkTreePath); cdecl; external gtklib;
function gtk_icon_view_path_is_selected(icon_view: PGtkIconView; path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_icon_view_get_item_row(icon_view: PGtkIconView; path: PGtkTreePath): longint; cdecl; external gtklib;
function gtk_icon_view_get_item_column(icon_view: PGtkIconView; path: PGtkTreePath): longint; cdecl; external gtklib;
function gtk_icon_view_get_selected_items(icon_view: PGtkIconView): PGList; cdecl; external gtklib;
procedure gtk_icon_view_select_all(icon_view: PGtkIconView); cdecl; external gtklib;
procedure gtk_icon_view_unselect_all(icon_view: PGtkIconView); cdecl; external gtklib;
procedure gtk_icon_view_item_activated(icon_view: PGtkIconView; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_icon_view_set_cursor(icon_view: PGtkIconView; path: PGtkTreePath; cell: PGtkCellRenderer; start_editing: Tgboolean); cdecl; external gtklib;
function gtk_icon_view_get_cursor(icon_view: PGtkIconView; path: PPGtkTreePath; cell: PPGtkCellRenderer): Tgboolean; cdecl; external gtklib;
procedure gtk_icon_view_scroll_to_path(icon_view: PGtkIconView; path: PGtkTreePath; use_align: Tgboolean; row_align: single; col_align: single); cdecl; external gtklib;
{ Drag-and-Drop support  }
procedure gtk_icon_view_enable_model_drag_source(icon_view: PGtkIconView; start_button_mask: TGdkModifierType; formats: PGdkContentFormats; actions: TGdkDragAction); cdecl; external gtklib;
procedure gtk_icon_view_enable_model_drag_dest(icon_view: PGtkIconView; formats: PGdkContentFormats; actions: TGdkDragAction); cdecl; external gtklib;
procedure gtk_icon_view_unset_model_drag_source(icon_view: PGtkIconView); cdecl; external gtklib;
procedure gtk_icon_view_unset_model_drag_dest(icon_view: PGtkIconView); cdecl; external gtklib;
procedure gtk_icon_view_set_reorderable(icon_view: PGtkIconView; reorderable: Tgboolean); cdecl; external gtklib;
function gtk_icon_view_get_reorderable(icon_view: PGtkIconView): Tgboolean; cdecl; external gtklib;
{ These are useful to implement your own custom stuff.  }
procedure gtk_icon_view_set_drag_dest_item(icon_view: PGtkIconView; path: PGtkTreePath; pos: TGtkIconViewDropPosition); cdecl; external gtklib;
procedure gtk_icon_view_get_drag_dest_item(icon_view: PGtkIconView; path: PPGtkTreePath; pos: PGtkIconViewDropPosition); cdecl; external gtklib;
function gtk_icon_view_get_dest_item_at_pos(icon_view: PGtkIconView; drag_x: longint; drag_y: longint; path: PPGtkTreePath; pos: PGtkIconViewDropPosition): Tgboolean; cdecl; external gtklib;
function gtk_icon_view_create_drag_icon(icon_view: PGtkIconView; path: PGtkTreePath): PGdkPaintable; cdecl; external gtklib;
function gtk_icon_view_get_cell_rect(icon_view: PGtkIconView; path: PGtkTreePath; cell: PGtkCellRenderer; rect: PGdkRectangle): Tgboolean; cdecl; external gtklib;
procedure gtk_icon_view_set_tooltip_item(icon_view: PGtkIconView; tooltip: PGtkTooltip; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_icon_view_set_tooltip_cell(icon_view: PGtkIconView; tooltip: PGtkTooltip; path: PGtkTreePath; cell: PGtkCellRenderer); cdecl; external gtklib;
function gtk_icon_view_get_tooltip_context(icon_view: PGtkIconView; x: longint; y: longint; keyboard_tip: Tgboolean; model: PPGtkTreeModel;
  path: PPGtkTreePath; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
procedure gtk_icon_view_set_tooltip_column(icon_view: PGtkIconView; column: longint); cdecl; external gtklib;
function gtk_icon_view_get_tooltip_column(icon_view: PGtkIconView): longint; cdecl; external gtklib;

// === Konventiert am: 30-7-24 16:03:31 ===

function GTK_TYPE_ICON_VIEW: TGType;
function GTK_ICON_VIEW(obj: Pointer): PGtkIconView;
function GTK_IS_ICON_VIEW(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ICON_VIEW: TGType;
begin
  GTK_TYPE_ICON_VIEW := gtk_icon_view_get_type;
end;

function GTK_ICON_VIEW(obj: Pointer): PGtkIconView;
begin
  Result := PGtkIconView(g_type_check_instance_cast(obj, GTK_TYPE_ICON_VIEW));
end;

function GTK_IS_ICON_VIEW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ICON_VIEW);
end;



{$ENDIF read_implementation}
