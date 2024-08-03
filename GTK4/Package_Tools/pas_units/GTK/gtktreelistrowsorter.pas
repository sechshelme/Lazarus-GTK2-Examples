unit gtktreelistrowsorter;

interface

uses
  glib2, common_GTK, gtksorter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


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

implementation

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




end.
