/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  PGtkTreeModelFlags = ^TGtkTreeModelFlags;
  TGtkTreeModelFlags = longint;

const
  GTK_TREE_MODEL_ITERS_PERSIST = 1 shl 0;
  GTK_TREE_MODEL_LIST_ONLY = 1 shl 1;


type
  TGtkTreeIter = record
    stamp: longint;
    user_data: Tgpointer;
    user_data2: Tgpointer;
    user_data3: Tgpointer;
  end;
  PGtkTreeIter = ^TGtkTreeIter;

  TGtkTreePath = record // _GtkTreePath
  end;
  PGtkTreePath = ^TGtkTreePath;
  PPGtkTreePath = ^PGtkTreePath;

  TGtkTreeRowReference = record // _GtkTreeRowReference
  end;
  PGtkTreeRowReference = ^TGtkTreeRowReference;

  TGtkTreeModel = record // _GtkTreeModel
  end;
  PGtkTreeModel = ^TGtkTreeModel;
  PPGtkTreeModel = ^PGtkTreeModel;

  TGtkTreeModelIface = record
    g_iface: TGTypeInterface;
    row_changed: procedure(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter); cdecl;
    row_inserted: procedure(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter); cdecl;
    row_has_child_toggled: procedure(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter); cdecl;
    row_deleted: procedure(tree_model: PGtkTreeModel; path: PGtkTreePath); cdecl;
    rows_reordered: procedure(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter; new_order: Plongint); cdecl;
    get_flags: function(tree_model: PGtkTreeModel): TGtkTreeModelFlags; cdecl;
    get_n_columns: function(tree_model: PGtkTreeModel): longint; cdecl;
    get_column_type: function(tree_model: PGtkTreeModel; index_: longint): TGType; cdecl;
    get_iter: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter; path: PGtkTreePath): Tgboolean; cdecl;
    get_path: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter): PGtkTreePath; cdecl;
    get_value: procedure(tree_model: PGtkTreeModel; iter: PGtkTreeIter; column: longint; Value: PGValue); cdecl;
    iter_next: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl;
    iter_previous: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl;
    iter_children: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter; parent: PGtkTreeIter): Tgboolean; cdecl;
    iter_has_child: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl;
    iter_n_children: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter): longint; cdecl;
    iter_nth_child: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter; parent: PGtkTreeIter; n: longint): Tgboolean; cdecl;
    iter_parent: function(tree_model: PGtkTreeModel; iter: PGtkTreeIter; child: PGtkTreeIter): Tgboolean; cdecl;
    ref_node: procedure(tree_model: PGtkTreeModel; iter: PGtkTreeIter); cdecl;
    unref_node: procedure(tree_model: PGtkTreeModel; iter: PGtkTreeIter); cdecl;
  end;
  PGtkTreeModelIface = ^TGtkTreeModelIface;

  TGtkTreeModelForeachFunc = function(model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter; Data: Tgpointer): Tgboolean; cdecl;

function gtk_tree_path_new: PGtkTreePath; cdecl; external gtklib;
function gtk_tree_path_new_from_string(path: PChar): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_path_new_from_indices(first_index: longint; args: array of const): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_path_new_from_indices(first_index: longint): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_path_new_from_indicesv(indices: Plongint; length: Tgsize): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_path_to_string(path: PGtkTreePath): PChar; cdecl; external gtklib;
function gtk_tree_path_new_first: PGtkTreePath; cdecl; external gtklib;
procedure gtk_tree_path_append_index(path: PGtkTreePath; index_: longint); cdecl; external gtklib;
procedure gtk_tree_path_prepend_index(path: PGtkTreePath; index_: longint); cdecl; external gtklib;
function gtk_tree_path_get_depth(path: PGtkTreePath): longint; cdecl; external gtklib;
function gtk_tree_path_get_indices(path: PGtkTreePath): Plongint; cdecl; external gtklib;
function gtk_tree_path_get_indices_with_depth(path: PGtkTreePath; depth: Plongint): Plongint; cdecl; external gtklib;
procedure gtk_tree_path_free(path: PGtkTreePath); cdecl; external gtklib;
function gtk_tree_path_copy(path: PGtkTreePath): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_path_get_type: TGType; cdecl; external gtklib;
function gtk_tree_path_compare(a: PGtkTreePath; b: PGtkTreePath): longint; cdecl; external gtklib;
procedure gtk_tree_path_next(path: PGtkTreePath); cdecl; external gtklib;
function gtk_tree_path_prev(path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_tree_path_up(path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_path_down(path: PGtkTreePath); cdecl; external gtklib;
function gtk_tree_path_is_ancestor(path: PGtkTreePath; descendant: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_tree_path_is_descendant(path: PGtkTreePath; ancestor: PGtkTreePath): Tgboolean; cdecl; external gtklib;

function gtk_tree_row_reference_get_type: TGType; cdecl; external gtklib;
function gtk_tree_row_reference_new(model: PGtkTreeModel; path: PGtkTreePath): PGtkTreeRowReference; cdecl; external gtklib;
function gtk_tree_row_reference_new_proxy(proxy: PGObject; model: PGtkTreeModel; path: PGtkTreePath): PGtkTreeRowReference; cdecl; external gtklib;
function gtk_tree_row_reference_get_path(reference: PGtkTreeRowReference): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_row_reference_get_model(reference: PGtkTreeRowReference): PGtkTreeModel; cdecl; external gtklib;
function gtk_tree_row_reference_valid(reference: PGtkTreeRowReference): Tgboolean; cdecl; external gtklib;
function gtk_tree_row_reference_copy(reference: PGtkTreeRowReference): PGtkTreeRowReference; cdecl; external gtklib;
procedure gtk_tree_row_reference_free(reference: PGtkTreeRowReference); cdecl; external gtklib;
procedure gtk_tree_row_reference_inserted(proxy: PGObject; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_tree_row_reference_deleted(proxy: PGObject; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_tree_row_reference_reordered(proxy: PGObject; path: PGtkTreePath; iter: PGtkTreeIter; new_order: Plongint); cdecl; external gtklib;
function gtk_tree_iter_copy(iter: PGtkTreeIter): PGtkTreeIter; cdecl; external gtklib;
procedure gtk_tree_iter_free(iter: PGtkTreeIter); cdecl; external gtklib;
function gtk_tree_iter_get_type: TGType; cdecl; external gtklib;
function gtk_tree_model_get_type: TGType; cdecl; external gtklib;
function gtk_tree_model_get_flags(tree_model: PGtkTreeModel): TGtkTreeModelFlags; cdecl; external gtklib;
function gtk_tree_model_get_n_columns(tree_model: PGtkTreeModel): longint; cdecl; external gtklib;
function gtk_tree_model_get_column_type(tree_model: PGtkTreeModel; index_: longint): TGType; cdecl; external gtklib;
function gtk_tree_model_get_iter(tree_model: PGtkTreeModel; iter: PGtkTreeIter; path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_get_iter_from_string(tree_model: PGtkTreeModel; iter: PGtkTreeIter; path_string: PChar): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_get_string_from_iter(tree_model: PGtkTreeModel; iter: PGtkTreeIter): PChar; cdecl; external gtklib;
function gtk_tree_model_get_iter_first(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_get_path(tree_model: PGtkTreeModel; iter: PGtkTreeIter): PGtkTreePath; cdecl; external gtklib;
procedure gtk_tree_model_get_value(tree_model: PGtkTreeModel; iter: PGtkTreeIter; column: longint; Value: PGValue); cdecl; external gtklib;
function gtk_tree_model_iter_previous(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_iter_next(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_iter_children(tree_model: PGtkTreeModel; iter: PGtkTreeIter; parent: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_iter_has_child(tree_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_iter_n_children(tree_model: PGtkTreeModel; iter: PGtkTreeIter): longint; cdecl; external gtklib;
function gtk_tree_model_iter_nth_child(tree_model: PGtkTreeModel; iter: PGtkTreeIter; parent: PGtkTreeIter; n: longint): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_iter_parent(tree_model: PGtkTreeModel; iter: PGtkTreeIter; child: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_model_ref_node(tree_model: PGtkTreeModel; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_unref_node(tree_model: PGtkTreeModel; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_get(tree_model: PGtkTreeModel; iter: PGtkTreeIter; args: array of const); cdecl; external gtklib;
procedure gtk_tree_model_get(tree_model: PGtkTreeModel; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_get_valist(tree_model: PGtkTreeModel; iter: PGtkTreeIter; var_args: Tva_list); cdecl; external gtklib;
procedure gtk_tree_model_foreach(model: PGtkTreeModel; func: TGtkTreeModelForeachFunc; user_data: Tgpointer); cdecl; external gtklib;
procedure gtk_tree_model_row_changed(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_row_inserted(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_row_has_child_toggled(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_row_deleted(tree_model: PGtkTreeModel; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_tree_model_rows_reordered(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter; new_order: Plongint); cdecl; external gtklib;
procedure gtk_tree_model_rows_reordered_with_length(tree_model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter; new_order: Plongint; length: longint); cdecl; external gtklib;

function GTK_TREE_MODEL_GET_IFACE(obj: Pointer): PGtkTreeModelIface;
function GTK_TYPE_TREE_ITER: TGType;
function GTK_TYPE_TREE_PATH: TGType;
function GTK_TYPE_TREE_ROW_REFERENCE: TGType;

// === Konventiert am: 21-7-24 15:47:34 ===

function GTK_TYPE_TREE_MODEL: TGType;
function GTK_TREE_MODEL(obj: Pointer): PGtkTreeModel;
function GTK_IS_TREE_MODEL(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_MODEL: TGType;
begin
  GTK_TYPE_TREE_MODEL := gtk_tree_model_get_type;
end;

function GTK_TREE_MODEL(obj: Pointer): PGtkTreeModel;
begin
  Result := PGtkTreeModel(g_type_check_instance_cast(obj, GTK_TYPE_TREE_MODEL));
end;

function GTK_IS_TREE_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_MODEL);
end;



function GTK_TREE_MODEL_GET_IFACE(obj: Pointer): PGtkTreeModelIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_TREE_MODEL);
end;

function GTK_TYPE_TREE_ITER: TGType;
begin
  GTK_TYPE_TREE_ITER := gtk_tree_iter_get_type;
end;

function GTK_TYPE_TREE_PATH: TGType;
begin
  GTK_TYPE_TREE_PATH := gtk_tree_path_get_type;
end;

function GTK_TYPE_TREE_ROW_REFERENCE: TGType;
begin
  GTK_TYPE_TREE_ROW_REFERENCE := gtk_tree_row_reference_get_type;
end;


{$ENDIF read_implementation}
