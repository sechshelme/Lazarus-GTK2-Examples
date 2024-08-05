/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkTreeModelSortPrivate = record
  end;
  PGtkTreeModelSortPrivate = ^TGtkTreeModelSortPrivate;

  TGtkTreeModelSort = record
    parent: TGObject;
    priv: PGtkTreeModelSortPrivate;
  end;
  PGtkTreeModelSort = ^TGtkTreeModelSort;

  TGtkTreeModelSortClass = record
    parent_class: TGObjectClass;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkTreeModelSortClass = ^TGtkTreeModelSortClass;

function gtk_tree_model_sort_get_type: TGType; cdecl; external gtklib;
function gtk_tree_model_sort_new_with_model(child_model: PGtkTreeModel): PGtkTreeModel; cdecl; external gtklib;
function gtk_tree_model_sort_get_model(tree_model: PGtkTreeModelSort): PGtkTreeModel; cdecl; external gtklib;
function gtk_tree_model_sort_convert_child_path_to_path(tree_model_sort: PGtkTreeModelSort; child_path: PGtkTreePath): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_model_sort_convert_child_iter_to_iter(tree_model_sort: PGtkTreeModelSort; sort_iter: PGtkTreeIter; child_iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_model_sort_convert_path_to_child_path(tree_model_sort: PGtkTreeModelSort; sorted_path: PGtkTreePath): PGtkTreePath; cdecl; external gtklib;
procedure gtk_tree_model_sort_convert_iter_to_child_iter(tree_model_sort: PGtkTreeModelSort; child_iter: PGtkTreeIter; sorted_iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_model_sort_reset_default_sort_func(tree_model_sort: PGtkTreeModelSort); cdecl; external gtklib;
procedure gtk_tree_model_sort_clear_cache(tree_model_sort: PGtkTreeModelSort); cdecl; external gtklib;
function gtk_tree_model_sort_iter_is_valid(tree_model_sort: PGtkTreeModelSort; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 15:23:59 ===

function GTK_TYPE_TREE_MODEL_SORT: TGType;
function GTK_TREE_MODEL_SORT(obj: Pointer): PGtkTreeModelSort;
function GTK_TREE_MODEL_SORT_CLASS(klass: Pointer): PGtkTreeModelSortClass;
function GTK_IS_TREE_MODEL_SORT(obj: Pointer): Tgboolean;
function GTK_IS_TREE_MODEL_SORT_CLASS(klass: Pointer): Tgboolean;
function GTK_TREE_MODEL_SORT_GET_CLASS(obj: Pointer): PGtkTreeModelSortClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_MODEL_SORT: TGType;
begin
  GTK_TYPE_TREE_MODEL_SORT := gtk_tree_model_sort_get_type;
end;

function GTK_TREE_MODEL_SORT(obj: Pointer): PGtkTreeModelSort;
begin
  Result := PGtkTreeModelSort(g_type_check_instance_cast(obj, GTK_TYPE_TREE_MODEL_SORT));
end;

function GTK_TREE_MODEL_SORT_CLASS(klass: Pointer): PGtkTreeModelSortClass;
begin
  Result := PGtkTreeModelSortClass(g_type_check_class_cast(klass, GTK_TYPE_TREE_MODEL_SORT));
end;

function GTK_IS_TREE_MODEL_SORT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_MODEL_SORT);
end;

function GTK_IS_TREE_MODEL_SORT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_TREE_MODEL_SORT);
end;

function GTK_TREE_MODEL_SORT_GET_CLASS(obj: Pointer): PGtkTreeModelSortClass;
begin
  Result := PGtkTreeModelSortClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
