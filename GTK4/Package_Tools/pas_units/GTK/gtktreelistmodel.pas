unit gtktreelistmodel;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {G_DECLARE_FINAL_TYPE (GtkTreeListModel, gtk_tree_list_model, GTK, TREE_LIST_MODEL, GObject) }
type
  TGtkTreeListModel = record
  end;
  PGtkTreeListModel = ^TGtkTreeListModel;

  TGtkTreeListModelClass = record
    parent_class: TGObjectClass;
  end;
  PGtkTreeListModelClass = ^TGtkTreeListModelClass;

  {G_DECLARE_FINAL_TYPE (GtkTreeListRow, gtk_tree_list_row, GTK, TREE_LIST_ROW, GObject) }
type
  TGtkTreeListRow = record
  end;
  PGtkTreeListRow = ^TGtkTreeListRow;

  TGtkTreeListRowClass = record
    parent_class: TGObjectClass;
  end;
  PGtkTreeListRowClass = ^TGtkTreeListRowClass;

type
  PGtkTreeListModelCreateModelFunc = ^TGtkTreeListModelCreateModelFunc;
  TGtkTreeListModelCreateModelFunc = function(item: Tgpointer; user_data: Tgpointer): PGListModel; cdecl;

function gtk_tree_list_model_get_type: TGType; cdecl; external gtklib;
function gtk_tree_list_model_new(root: PGListModel; passthrough: Tgboolean; autoexpand: Tgboolean; create_func: TGtkTreeListModelCreateModelFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify): PGtkTreeListModel; cdecl; external gtklib;
function gtk_tree_list_model_get_model(self: PGtkTreeListModel): PGListModel; cdecl; external gtklib;
function gtk_tree_list_model_get_passthrough(self: PGtkTreeListModel): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_list_model_set_autoexpand(self: PGtkTreeListModel; autoexpand: Tgboolean); cdecl; external gtklib;
function gtk_tree_list_model_get_autoexpand(self: PGtkTreeListModel): Tgboolean; cdecl; external gtklib;
function gtk_tree_list_model_get_child_row(self: PGtkTreeListModel; position: Tguint): PGtkTreeListRow; cdecl; external gtklib;
function gtk_tree_list_model_get_row(self: PGtkTreeListModel; position: Tguint): PGtkTreeListRow; cdecl; external gtklib;

function gtk_tree_list_row_get_type: TGType; cdecl; external gtklib;
function gtk_tree_list_row_get_item(self: PGtkTreeListRow): Tgpointer; cdecl; external gtklib;
procedure gtk_tree_list_row_set_expanded(self: PGtkTreeListRow; expanded: Tgboolean); cdecl; external gtklib;
function gtk_tree_list_row_get_expanded(self: PGtkTreeListRow): Tgboolean; cdecl; external gtklib;
function gtk_tree_list_row_is_expandable(self: PGtkTreeListRow): Tgboolean; cdecl; external gtklib;
function gtk_tree_list_row_get_position(self: PGtkTreeListRow): Tguint; cdecl; external gtklib;
function gtk_tree_list_row_get_depth(self: PGtkTreeListRow): Tguint; cdecl; external gtklib;
function gtk_tree_list_row_get_children(self: PGtkTreeListRow): PGListModel; cdecl; external gtklib;
function gtk_tree_list_row_get_parent(self: PGtkTreeListRow): PGtkTreeListRow; cdecl; external gtklib;
function gtk_tree_list_row_get_child_row(self: PGtkTreeListRow; position: Tguint): PGtkTreeListRow; cdecl; external gtklib;

// === Konventiert am: 28-7-24 16:51:14 ===

function GTK_TYPE_TREE_LIST_MODEL: TGType;
function GTK_TREE_LIST_MODEL(obj: Pointer): PGtkTreeListModel;
function GTK_IS_TREE_LIST_MODEL(obj: Pointer): Tgboolean;

function GTK_TYPE_TREE_LIST_ROW: TGType;
function GTK_TREE_LIST_ROW(obj: Pointer): PGtkTreeListRow;
function GTK_IS_TREE_LIST_ROW(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_TREE_LIST_MODEL: TGType;
begin
  Result := gtk_tree_list_model_get_type;
end;

function GTK_TREE_LIST_MODEL(obj: Pointer): PGtkTreeListModel;
begin
  Result := PGtkTreeListModel(g_type_check_instance_cast(obj, GTK_TYPE_TREE_LIST_MODEL));
end;

function GTK_IS_TREE_LIST_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_LIST_MODEL);
end;

// ====

function GTK_TYPE_TREE_LIST_ROW: TGType;
begin
  Result := gtk_tree_list_row_get_type;
end;

function GTK_TREE_LIST_ROW(obj: Pointer): PGtkTreeListRow;
begin
  Result := PGtkTreeListRow(g_type_check_instance_cast(obj, GTK_TYPE_TREE_LIST_ROW));
end;

function GTK_IS_TREE_LIST_ROW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_LIST_ROW);
end;



end.
