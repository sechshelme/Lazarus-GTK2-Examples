unit gtksortlistmodel;

interface

uses
  glib2, common_GTK, gtksorter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkSortListModel, gtk_sort_list_model, GTK, SORT_LIST_MODEL, GObject) }
type
  TGtkSortListModel = record
  end;
  PGtkSortListModel = ^TGtkSortListModel;

  TGtkSortListModelClass = record
    parent_class: TGObjectClass;
  end;
  PGtkSortListModelClass = ^TGtkSortListModelClass;

function gtk_sort_list_model_get_type: TGType; cdecl; external gtklib;
function gtk_sort_list_model_new(model: PGListModel; sorter: PGtkSorter): PGtkSortListModel; cdecl; external gtklib;
procedure gtk_sort_list_model_set_sorter(self: PGtkSortListModel; sorter: PGtkSorter); cdecl; external gtklib;
function gtk_sort_list_model_get_sorter(self: PGtkSortListModel): PGtkSorter; cdecl; external gtklib;
procedure gtk_sort_list_model_set_section_sorter(self: PGtkSortListModel; sorter: PGtkSorter); cdecl; external gtklib;
function gtk_sort_list_model_get_section_sorter(self: PGtkSortListModel): PGtkSorter; cdecl; external gtklib;
procedure gtk_sort_list_model_set_model(self: PGtkSortListModel; model: PGListModel); cdecl; external gtklib;
function gtk_sort_list_model_get_model(self: PGtkSortListModel): PGListModel; cdecl; external gtklib;
procedure gtk_sort_list_model_set_incremental(self: PGtkSortListModel; incremental: Tgboolean); cdecl; external gtklib;
function gtk_sort_list_model_get_incremental(self: PGtkSortListModel): Tgboolean; cdecl; external gtklib;
function gtk_sort_list_model_get_pending(self: PGtkSortListModel): Tguint; cdecl; external gtklib;

// === Konventiert am: 28-7-24 16:33:24 ===

function GTK_TYPE_SORT_LIST_MODEL: TGType;
function GTK_SORT_LIST_MODEL(obj: Pointer): PGtkSortListModel;
function GTK_IS_SORT_LIST_MODEL(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SORT_LIST_MODEL: TGType;
begin
  Result := gtk_sort_list_model_get_type;
end;

function GTK_SORT_LIST_MODEL(obj: Pointer): PGtkSortListModel;
begin
  Result := PGtkSortListModel(g_type_check_instance_cast(obj, GTK_TYPE_SORT_LIST_MODEL));
end;

function GTK_IS_SORT_LIST_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SORT_LIST_MODEL);
end;




end.
