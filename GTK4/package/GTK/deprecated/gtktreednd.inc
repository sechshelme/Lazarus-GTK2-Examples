/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


function gtk_tree_row_data_get_type: TGType; cdecl; external gtklib;

type
  TGtkTreeDragSource = record
  end;
  PGtkTreeDragSource = ^TGtkTreeDragSource;

  TGtkTreeDragSourceIface = record
    g_iface: TGTypeInterface;
    row_draggable: function(drag_source: PGtkTreeDragSource; path: PGtkTreePath): Tgboolean; cdecl;
    drag_data_get: function(drag_source: PGtkTreeDragSource; path: PGtkTreePath): PGdkContentProvider; cdecl;
    drag_data_delete: function(drag_source: PGtkTreeDragSource; path: PGtkTreePath): Tgboolean; cdecl;
  end;
  PGtkTreeDragSourceIface = ^TGtkTreeDragSourceIface;


function gtk_tree_drag_source_get_type: TGType; cdecl; external gtklib;
function gtk_tree_drag_source_row_draggable(drag_source: PGtkTreeDragSource; path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_tree_drag_source_drag_data_delete(drag_source: PGtkTreeDragSource; path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_tree_drag_source_drag_data_get(drag_source: PGtkTreeDragSource; path: PGtkTreePath): PGdkContentProvider; cdecl; external gtklib;

type
  TGtkTreeDragDest = record
  end;
  PGtkTreeDragDest = ^TGtkTreeDragDest;

  TGtkTreeDragDestIface = record
    g_iface: TGTypeInterface;
    drag_data_received: function(drag_dest: PGtkTreeDragDest; dest: PGtkTreePath; Value: PGValue): Tgboolean; cdecl;
    row_drop_possible: function(drag_dest: PGtkTreeDragDest; dest_path: PGtkTreePath; Value: PGValue): Tgboolean; cdecl;
  end;
  PGtkTreeDragDestIface = ^TGtkTreeDragDestIface;


function gtk_tree_drag_dest_get_type: TGType; cdecl; external gtklib;
function gtk_tree_drag_dest_drag_data_received(drag_dest: PGtkTreeDragDest; dest: PGtkTreePath; Value: PGValue): Tgboolean; cdecl; external gtklib;
function gtk_tree_drag_dest_row_drop_possible(drag_dest: PGtkTreeDragDest; dest_path: PGtkTreePath; Value: PGValue): Tgboolean; cdecl; external gtklib;
function gtk_tree_create_row_drag_content(tree_model: PGtkTreeModel; path: PGtkTreePath): PGdkContentProvider; cdecl; external gtklib;
function gtk_tree_get_row_drag_data(Value: PGValue; tree_model: PPGtkTreeModel; path: PPGtkTreePath): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 15:21:16 ===

function GTK_TYPE_TREE_ROW_DATA: TGType;

function GTK_TYPE_TREE_DRAG_SOURCE: TGType;
function GTK_TREE_DRAG_SOURCE(obj: Pointer): PGtkTreeDragSource;
function GTK_IS_TREE_DRAG_SOURCE(obj: Pointer): Tgboolean;
function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj: Pointer): PGtkTreeDragSourceIface;

function GTK_TYPE_TREE_DRAG_DEST: TGType;
function GTK_TREE_DRAG_DEST(obj: Pointer): PGtkTreeDragDest;
function GTK_IS_TREE_DRAG_DEST(obj: Pointer): Tgboolean;
function GTK_TREE_DRAG_DEST_GET_IFACE(obj: Pointer): PGtkTreeDragDestIface;


{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_DRAG_SOURCE: TGType;
begin
  GTK_TYPE_TREE_DRAG_SOURCE := gtk_tree_drag_source_get_type;
end;

function GTK_TREE_DRAG_SOURCE(obj: Pointer): PGtkTreeDragSource;
begin
  Result := PGtkTreeDragSource(g_type_check_instance_cast(obj, GTK_TYPE_TREE_DRAG_SOURCE));
end;

function GTK_IS_TREE_DRAG_SOURCE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_DRAG_SOURCE);
end;

function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj: Pointer): PGtkTreeDragSourceIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_TREE_DRAG_SOURCE);
end;

// ====

function GTK_TYPE_TREE_DRAG_DEST: TGType;
begin
  GTK_TYPE_TREE_DRAG_DEST := gtk_tree_drag_dest_get_type;
end;

function GTK_TREE_DRAG_DEST(obj: Pointer): PGtkTreeDragDest;
begin
  Result := PGtkTreeDragDest(g_type_check_instance_cast(obj, GTK_TYPE_TREE_DRAG_DEST));
end;

function GTK_IS_TREE_DRAG_DEST(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_DRAG_DEST);
end;

function GTK_TREE_DRAG_DEST_GET_IFACE(obj: Pointer): PGtkTreeDragDestIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_TREE_DRAG_DEST);
end;

// ====

function GTK_TYPE_TREE_ROW_DATA: TGType;
begin
  GTK_TYPE_TREE_ROW_DATA := gtk_tree_row_data_get_type;
end;


{$ENDIF read_implementation}
