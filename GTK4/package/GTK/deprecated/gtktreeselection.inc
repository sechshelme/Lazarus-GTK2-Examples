/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  //TGtkTreeSelection = record
  //end;
  //PGtkTreeSelection = ^TGtkTreeSelection;

  TGtkTreeSelectionFunc = function(selection: PGtkTreeSelection; model: PGtkTreeModel; path: PGtkTreePath; path_currently_selected: Tgboolean; Data: Tgpointer): Tgboolean; cdecl;

  TGtkTreeSelectionForeachFunc = procedure(model: PGtkTreeModel; path: PGtkTreePath; iter: PGtkTreeIter; Data: Tgpointer); cdecl;

function gtk_tree_selection_get_type: TGType; cdecl; external gtklib;
procedure gtk_tree_selection_set_mode(selection: PGtkTreeSelection; _type: TGtkSelectionMode); cdecl; external gtklib;
function gtk_tree_selection_get_mode(selection: PGtkTreeSelection): TGtkSelectionMode; cdecl; external gtklib;
procedure gtk_tree_selection_set_select_function(selection: PGtkTreeSelection; func: TGtkTreeSelectionFunc; Data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
function gtk_tree_selection_get_user_data(selection: PGtkTreeSelection): Tgpointer; cdecl; external gtklib;
function gtk_tree_selection_get_tree_view(selection: PGtkTreeSelection): PGtkTreeView; cdecl; external gtklib;
function gtk_tree_selection_get_select_function(selection: PGtkTreeSelection): TGtkTreeSelectionFunc; cdecl; external gtklib;
function gtk_tree_selection_get_selected(selection: PGtkTreeSelection; model: PPGtkTreeModel; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
function gtk_tree_selection_get_selected_rows(selection: PGtkTreeSelection; model: PPGtkTreeModel): PGList; cdecl; external gtklib;
function gtk_tree_selection_count_selected_rows(selection: PGtkTreeSelection): longint; cdecl; external gtklib;
procedure gtk_tree_selection_selected_foreach(selection: PGtkTreeSelection; func: TGtkTreeSelectionForeachFunc; Data: Tgpointer); cdecl; external gtklib;
procedure gtk_tree_selection_select_path(selection: PGtkTreeSelection; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_tree_selection_unselect_path(selection: PGtkTreeSelection; path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_tree_selection_select_iter(selection: PGtkTreeSelection; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_tree_selection_unselect_iter(selection: PGtkTreeSelection; iter: PGtkTreeIter); cdecl; external gtklib;
function gtk_tree_selection_path_is_selected(selection: PGtkTreeSelection; path: PGtkTreePath): Tgboolean; cdecl; external gtklib;
function gtk_tree_selection_iter_is_selected(selection: PGtkTreeSelection; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_selection_select_all(selection: PGtkTreeSelection); cdecl; external gtklib;
procedure gtk_tree_selection_unselect_all(selection: PGtkTreeSelection); cdecl; external gtklib;
procedure gtk_tree_selection_select_range(selection: PGtkTreeSelection; start_path: PGtkTreePath; end_path: PGtkTreePath); cdecl; external gtklib;
procedure gtk_tree_selection_unselect_range(selection: PGtkTreeSelection; start_path: PGtkTreePath; end_path: PGtkTreePath); cdecl; external gtklib;

// === Konventiert am: 30-7-24 15:24:15 ===

function GTK_TYPE_TREE_SELECTION: TGType;
function GTK_TREE_SELECTION(obj: Pointer): PGtkTreeSelection;
function GTK_IS_TREE_SELECTION(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_SELECTION: TGType;
begin
  GTK_TYPE_TREE_SELECTION := gtk_tree_selection_get_type;
end;

function GTK_TREE_SELECTION(obj: Pointer): PGtkTreeSelection;
begin
  Result := PGtkTreeSelection(g_type_check_instance_cast(obj, GTK_TYPE_TREE_SELECTION));
end;

function GTK_IS_TREE_SELECTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_SELECTION);
end;



{$ENDIF read_implementation}
