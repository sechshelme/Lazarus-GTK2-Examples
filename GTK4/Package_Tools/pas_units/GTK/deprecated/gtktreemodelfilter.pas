unit gtktreemodelfilter;

interface

uses
  glib2, common_GTK, gtktreemodel;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkTreeModelFilterPrivate = record
  end;
  PGtkTreeModelFilterPrivate = ^TGtkTreeModelFilterPrivate;

  TGtkTreeModelFilterVisibleFunc = function(model: PGtkTreeModel; iter: PGtkTreeIter; Data: Tgpointer): Tgboolean; cdecl;
  TGtkTreeModelFilterModifyFunc = procedure(model: PGtkTreeModel; iter: PGtkTreeIter; Value: PGValue; column: longint; Data: Tgpointer); cdecl;

  TGtkTreeModelFilter = record
    parent: TGObject;
    priv: PGtkTreeModelFilterPrivate;
  end;
  PGtkTreeModelFilter = ^TGtkTreeModelFilter;

  TGtkTreeModelFilterClass = record
    parent_class: TGObjectClass;
    Visible: function(self: PGtkTreeModelFilter; child_model: PGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl;
    modify: procedure(self: PGtkTreeModelFilter; child_model: PGtkTreeModel; iter: PGtkTreeIter; Value: PGValue; column: longint); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkTreeModelFilterClass = ^TGtkTreeModelFilterClass;

function gtk_tree_model_filter_get_type: TGType; cdecl; external gtklib;
function gtk_tree_model_filter_new(child_model: PGtkTreeModel; root: PGtkTreePath): PGtkTreeModel; cdecl; external gtklib;
procedure gtk_tree_model_filter_set_visible_func(filter: PGtkTreeModelFilter; func: TGtkTreeModelFilterVisibleFunc; Data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_tree_model_filter_set_modify_func(filter: PGtkTreeModelFilter; n_columns: longint; types: PGType; func: TGtkTreeModelFilterModifyFunc; Data: Tgpointer;
  Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_tree_model_filter_set_visible_column(filter: PGtkTreeModelFilter; column: longint); cdecl; external gtklib;
function gtk_tree_model_filter_get_model(filter: PGtkTreeModelFilter): PGtkTreeModel; cdecl; external gtklib;
function gtk_tree_model_filter_convert_child_iter_to_iter(filter: PGtkTreeModelFilter; filter_iter: PGtkTreeIter; child_iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_model_filter_convert_iter_to_child_iter(filter: PGtkTreeModelFilter; child_iter: PGtkTreeIter; filter_iter: PGtkTreeIter); cdecl; external gtklib;
function gtk_tree_model_filter_convert_child_path_to_path(filter: PGtkTreeModelFilter; child_path: PGtkTreePath): PGtkTreePath; cdecl; external gtklib;
function gtk_tree_model_filter_convert_path_to_child_path(filter: PGtkTreeModelFilter; filter_path: PGtkTreePath): PGtkTreePath; cdecl; external gtklib;
procedure gtk_tree_model_filter_refilter(filter: PGtkTreeModelFilter); cdecl; external gtklib;
procedure gtk_tree_model_filter_clear_cache(filter: PGtkTreeModelFilter); cdecl; external gtklib;

// === Konventiert am: 30-7-24 15:23:52 ===

function GTK_TYPE_TREE_MODEL_FILTER: TGType;
function GTK_TREE_MODEL_FILTER(obj: Pointer): PGtkTreeModelFilter;
function GTK_TREE_MODEL_FILTER_CLASS(klass: Pointer): PGtkTreeModelFilterClass;
function GTK_IS_TREE_MODEL_FILTER(obj: Pointer): Tgboolean;
function GTK_IS_TREE_MODEL_FILTER_CLASS(klass: Pointer): Tgboolean;
function GTK_TREE_MODEL_FILTER_GET_CLASS(obj: Pointer): PGtkTreeModelFilterClass;

implementation

function GTK_TYPE_TREE_MODEL_FILTER: TGType;
begin
  GTK_TYPE_TREE_MODEL_FILTER := gtk_tree_model_filter_get_type;
end;

function GTK_TREE_MODEL_FILTER(obj: Pointer): PGtkTreeModelFilter;
begin
  Result := PGtkTreeModelFilter(g_type_check_instance_cast(obj, GTK_TYPE_TREE_MODEL_FILTER));
end;

function GTK_TREE_MODEL_FILTER_CLASS(klass: Pointer): PGtkTreeModelFilterClass;
begin
  Result := PGtkTreeModelFilterClass(g_type_check_class_cast(klass, GTK_TYPE_TREE_MODEL_FILTER));
end;

function GTK_IS_TREE_MODEL_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_MODEL_FILTER);
end;

function GTK_IS_TREE_MODEL_FILTER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_TREE_MODEL_FILTER);
end;

function GTK_TREE_MODEL_FILTER_GET_CLASS(obj: Pointer): PGtkTreeModelFilterClass;
begin
  Result := PGtkTreeModelFilterClass(PGTypeInstance(obj)^.g_class);
end;



end.
