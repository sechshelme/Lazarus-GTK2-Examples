unit gtklistbox;

interface

uses
  glib2, common_GTK, gtkenums, gtkwidget, gtktypes, gtkadjustment;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkListBox = record // _GtkListBox
  end;
  PGtkListBox = ^TGtkListBox;

  TGtkListBoxRow = record
    parent_instance: TGtkWidget;
  end;
  PGtkListBoxRow = ^TGtkListBoxRow;

  TGtkListBoxRowClass = record
    parent_class: TGtkWidgetClass;
    activate: procedure(row: PGtkListBoxRow); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkListBoxRowClass = ^TGtkListBoxRowClass;

  TGtkListBoxFilterFunc = function(row: PGtkListBoxRow; user_data: Tgpointer): Tgboolean; cdecl;
  TGtkListBoxSortFunc = function(row1: PGtkListBoxRow; row2: PGtkListBoxRow; user_data: Tgpointer): longint; cdecl;
  TGtkListBoxUpdateHeaderFunc = procedure(row: PGtkListBoxRow; before: PGtkListBoxRow; user_data: Tgpointer); cdecl;

  TGtkListBoxCreateWidgetFunc = function(item: Tgpointer; user_data: Tgpointer): PGtkWidget; cdecl;
  PGtkListBoxCreateWidgetFunc = ^TGtkListBoxCreateWidgetFunc;

function gtk_list_box_row_get_type: TGType; cdecl; external gtklib;
function gtk_list_box_row_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_list_box_row_set_child(row: PGtkListBoxRow; child: PGtkWidget); cdecl; external gtklib;
function gtk_list_box_row_get_child(row: PGtkListBoxRow): PGtkWidget; cdecl; external gtklib;
function gtk_list_box_row_get_header(row: PGtkListBoxRow): PGtkWidget; cdecl; external gtklib;
procedure gtk_list_box_row_set_header(row: PGtkListBoxRow; header: PGtkWidget); cdecl; external gtklib;
function gtk_list_box_row_get_index(row: PGtkListBoxRow): longint; cdecl; external gtklib;
procedure gtk_list_box_row_changed(row: PGtkListBoxRow); cdecl; external gtklib;
function gtk_list_box_row_is_selected(row: PGtkListBoxRow): Tgboolean; cdecl; external gtklib;
procedure gtk_list_box_row_set_selectable(row: PGtkListBoxRow; selectable: Tgboolean); cdecl; external gtklib;
function gtk_list_box_row_get_selectable(row: PGtkListBoxRow): Tgboolean; cdecl; external gtklib;
procedure gtk_list_box_row_set_activatable(row: PGtkListBoxRow; activatable: Tgboolean); cdecl; external gtklib;
function gtk_list_box_row_get_activatable(row: PGtkListBoxRow): Tgboolean; cdecl; external gtklib;
function gtk_list_box_get_type: TGType; cdecl; external gtklib;
procedure gtk_list_box_prepend(box: PGtkListBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_list_box_append(box: PGtkListBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_list_box_insert(box: PGtkListBox; child: PGtkWidget; position: longint); cdecl; external gtklib;
procedure gtk_list_box_remove(box: PGtkListBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_list_box_remove_all(box: PGtkListBox); cdecl; external gtklib;
function gtk_list_box_get_selected_row(box: PGtkListBox): PGtkListBoxRow; cdecl; external gtklib;
function gtk_list_box_get_row_at_index(box: PGtkListBox; index_: longint): PGtkListBoxRow; cdecl; external gtklib;
function gtk_list_box_get_row_at_y(box: PGtkListBox; y: longint): PGtkListBoxRow; cdecl; external gtklib;
procedure gtk_list_box_select_row(box: PGtkListBox; row: PGtkListBoxRow); cdecl; external gtklib;
procedure gtk_list_box_set_placeholder(box: PGtkListBox; placeholder: PGtkWidget); cdecl; external gtklib;
procedure gtk_list_box_set_adjustment(box: PGtkListBox; adjustment: PGtkAdjustment); cdecl; external gtklib;
function gtk_list_box_get_adjustment(box: PGtkListBox): PGtkAdjustment; cdecl; external gtklib;

type
  TGtkListBoxForeachFunc = procedure(box: PGtkListBox; row: PGtkListBoxRow; user_data: Tgpointer); cdecl;

procedure gtk_list_box_selected_foreach(box: PGtkListBox; func: TGtkListBoxForeachFunc; Data: Tgpointer); cdecl; external gtklib;
function gtk_list_box_get_selected_rows(box: PGtkListBox): PGList; cdecl; external gtklib;
procedure gtk_list_box_unselect_row(box: PGtkListBox; row: PGtkListBoxRow); cdecl; external gtklib;
procedure gtk_list_box_select_all(box: PGtkListBox); cdecl; external gtklib;
procedure gtk_list_box_unselect_all(box: PGtkListBox); cdecl; external gtklib;
procedure gtk_list_box_set_selection_mode(box: PGtkListBox; mode: TGtkSelectionMode); cdecl; external gtklib;
function gtk_list_box_get_selection_mode(box: PGtkListBox): TGtkSelectionMode; cdecl; external gtklib;
procedure gtk_list_box_set_filter_func(box: PGtkListBox; filter_func: TGtkListBoxFilterFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_list_box_set_header_func(box: PGtkListBox; update_header: TGtkListBoxUpdateHeaderFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_list_box_invalidate_filter(box: PGtkListBox); cdecl; external gtklib;
procedure gtk_list_box_invalidate_sort(box: PGtkListBox); cdecl; external gtklib;
procedure gtk_list_box_invalidate_headers(box: PGtkListBox); cdecl; external gtklib;
procedure gtk_list_box_set_sort_func(box: PGtkListBox; sort_func: TGtkListBoxSortFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_list_box_set_activate_on_single_click(box: PGtkListBox; single: Tgboolean); cdecl; external gtklib;
function gtk_list_box_get_activate_on_single_click(box: PGtkListBox): Tgboolean; cdecl; external gtklib;
procedure gtk_list_box_drag_unhighlight_row(box: PGtkListBox); cdecl; external gtklib;
procedure gtk_list_box_drag_highlight_row(box: PGtkListBox; row: PGtkListBoxRow); cdecl; external gtklib;
function gtk_list_box_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_list_box_bind_model(box: PGtkListBox; model: PGListModel; create_widget_func: TGtkListBoxCreateWidgetFunc; user_data: Tgpointer; user_data_free_func: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_list_box_set_show_separators(box: PGtkListBox; show_separators: Tgboolean); cdecl; external gtklib;
function gtk_list_box_get_show_separators(box: PGtkListBox): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 20-7-24 15:50:41 ===

function GTK_TYPE_LIST_BOX: TGType;
function GTK_LIST_BOX(obj: Pointer): PGtkListBox;
function GTK_IS_LIST_BOX(obj: Pointer): Tgboolean;

function GTK_TYPE_LIST_BOX_ROW: TGType;
function GTK_LIST_BOX_ROW(obj: Pointer): PGtkListBoxRow;
function GTK_LIST_BOX_ROW_CLASS(klass: Pointer): PGtkListBoxRowClass;
function GTK_IS_LIST_BOX_ROW(obj: Pointer): Tgboolean;
function GTK_IS_LIST_BOX_ROW_CLASS(klass: Pointer): Tgboolean;
function GTK_LIST_BOX_ROW_GET_CLASS(obj: Pointer): PGtkListBoxRowClass;



implementation

function GTK_TYPE_LIST_BOX: TGType;
begin
  GTK_TYPE_LIST_BOX := gtk_list_box_get_type;
end;

function GTK_LIST_BOX(obj: Pointer): PGtkListBox;
begin
  Result := PGtkListBox(g_type_check_instance_cast(obj, GTK_TYPE_LIST_BOX));
end;

function GTK_IS_LIST_BOX(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_BOX);
end;

// =====

function GTK_TYPE_LIST_BOX_ROW: TGType;
begin
  GTK_TYPE_LIST_BOX_ROW := gtk_list_box_row_get_type;
end;

function GTK_LIST_BOX_ROW(obj: Pointer): PGtkListBoxRow;
begin
  Result := PGtkListBoxRow(g_type_check_instance_cast(obj, GTK_TYPE_LIST_BOX_ROW));
end;

function GTK_LIST_BOX_ROW_CLASS(klass: Pointer): PGtkListBoxRowClass;
begin
  Result := PGtkListBoxRowClass(g_type_check_class_cast(klass, GTK_TYPE_LIST_BOX_ROW));
end;

function GTK_IS_LIST_BOX_ROW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_BOX_ROW);
end;

function GTK_IS_LIST_BOX_ROW_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LIST_BOX_ROW);
end;

function GTK_LIST_BOX_ROW_GET_CLASS(obj: Pointer): PGtkListBoxRowClass;
begin
  Result := PGtkListBoxRowClass(PGTypeInstance(obj)^.g_class);
end;



end.
