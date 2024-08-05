/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkTreeListRowSorter, gtk_tree_list_row_sorter, GTK, TREE_LIST_ROW_SORTER, GtkSorter) }
type
  TGtkTreeListRowSorter = record
  end;
  PGtkTreeListRowSorter = ^TGtkTreeListRowSorter;

  TGtkTreeListRowSorterClass = record
    parent_class: TGtkSorterClass;
  end;
  PGtkTreeListRowSorterClass = ^TGtkTreeListRowSorterClass;

function gtk_tree_list_row_sorter_get_type: TGType; cdecl; external gtklib;
function gtk_tree_list_row_sorter_new(sorter: PGtkSorter): PGtkTreeListRowSorter; cdecl; external gtklib;
function gtk_tree_list_row_sorter_get_sorter(self: PGtkTreeListRowSorter): PGtkSorter; cdecl; external gtklib;
procedure gtk_tree_list_row_sorter_set_sorter(self: PGtkTreeListRowSorter; sorter: PGtkSorter); cdecl; external gtklib;

// === Konventiert am: 28-7-24 16:51:23 ===

function GTK_TYPE_TREE_LIST_ROW_SORTER: TGType;
function GTK_TREE_LIST_ROW_SORTER(obj: Pointer): PGtkTreeListRowSorter;
function GTK_IS_TREE_LIST_ROW_SORTER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TREE_LIST_ROW_SORTER: TGType;
begin
  Result := gtk_tree_list_row_sorter_get_type;
end;

function GTK_TREE_LIST_ROW_SORTER(obj: Pointer): PGtkTreeListRowSorter;
begin
  Result := PGtkTreeListRowSorter(g_type_check_instance_cast(obj, GTK_TYPE_TREE_LIST_ROW_SORTER));
end;

function GTK_IS_TREE_LIST_ROW_SORTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_LIST_ROW_SORTER);
end;




{$ENDIF read_implementation}
