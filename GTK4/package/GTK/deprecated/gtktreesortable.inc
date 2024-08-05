/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


const
  GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = -(1);
  GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = -(2);

type
  TGtkTreeSortable = record
  end;
  PGtkTreeSortable = ^TGtkTreeSortable;

  TGtkTreeIterCompareFunc = function(model: PGtkTreeModel; a: PGtkTreeIter; b: PGtkTreeIter; user_data: Tgpointer): longint; cdecl;

  TGtkTreeSortableIface = record
    g_iface: TGTypeInterface;
    sort_column_changed: procedure(sortable: PGtkTreeSortable); cdecl;
    get_sort_column_id: function(sortable: PGtkTreeSortable; sort_column_id: Plongint; order: PGtkSortType): Tgboolean; cdecl;
    set_sort_column_id: procedure(sortable: PGtkTreeSortable; sort_column_id: longint; order: TGtkSortType); cdecl;
    set_sort_func: procedure(sortable: PGtkTreeSortable; sort_column_id: longint; sort_func: TGtkTreeIterCompareFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl;
    set_default_sort_func: procedure(sortable: PGtkTreeSortable; sort_func: TGtkTreeIterCompareFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl;
    has_default_sort_func: function(sortable: PGtkTreeSortable): Tgboolean; cdecl;
  end;
  PGtkTreeSortableIface = ^TGtkTreeSortableIface;


function gtk_tree_sortable_get_type: TGType; cdecl; external gtklib;
procedure gtk_tree_sortable_sort_column_changed(sortable: PGtkTreeSortable); cdecl; external gtklib;
function gtk_tree_sortable_get_sort_column_id(sortable: PGtkTreeSortable; sort_column_id: Plongint; order: PGtkSortType): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_sortable_set_sort_column_id(sortable: PGtkTreeSortable; sort_column_id: longint; order: TGtkSortType); cdecl; external gtklib;
procedure gtk_tree_sortable_set_sort_func(sortable: PGtkTreeSortable; sort_column_id: longint; sort_func: TGtkTreeIterCompareFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_tree_sortable_set_default_sort_func(sortable: PGtkTreeSortable; sort_func: TGtkTreeIterCompareFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
function gtk_tree_sortable_has_default_sort_func(sortable: PGtkTreeSortable): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 15:24:25 ===

function GTK_TYPE_TREE_SORTABLE: TGType;
function GTK_TREE_SORTABLE(obj: Pointer): PGtkTreeSortable;
function GTK_IS_TREE_SORTABLE(obj: Pointer): Tgboolean;
function GTK_TREE_SORTABLE_GET_IFACE(obj: Pointer): PGtkTreeSortableIface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_SORTABLE: TGType;
begin
  GTK_TYPE_TREE_SORTABLE := gtk_tree_sortable_get_type;
end;

function GTK_TREE_SORTABLE(obj: Pointer): PGtkTreeSortable;
begin
  Result := PGtkTreeSortable(g_type_check_instance_cast(obj, GTK_TYPE_TREE_SORTABLE));
end;

function GTK_IS_TREE_SORTABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_SORTABLE);
end;

function GTK_TREE_SORTABLE_GET_IFACE(obj: Pointer): PGtkTreeSortableIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_TREE_SORTABLE);
end;



{$ENDIF read_implementation}
