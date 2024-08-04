unit gtkcolumnviewsorter;

interface

uses
  glib2, common_GTK, gtkenums, gtksorter, gtktypes;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{G_DECLARE_FINAL_TYPE (GtkColumnViewSorter, gtk_column_view_sorter, GTK, COLUMN_VIEW_SORTER, GtkSorter) }
type
  TGtkColumnViewSorter = record
  end;
  PGtkColumnViewSorter = ^TGtkColumnViewSorter;

  TGtkColumnViewSorterClass = record
    parent_class: TGtkSorterClass;
  end;
  PGtkColumnViewSorterClass = ^TGtkColumnViewSorterClass;

function gtk_column_view_sorter_get_type: TGType; cdecl; external gtklib;
function gtk_column_view_sorter_get_primary_sort_column(self:PGtkColumnViewSorter):PGtkColumnViewColumn;cdecl;external gtklib;
function gtk_column_view_sorter_get_primary_sort_order(self:PGtkColumnViewSorter):TGtkSortType;cdecl;external gtklib;
function gtk_column_view_sorter_get_n_sort_columns(self:PGtkColumnViewSorter):Tguint;cdecl;external gtklib;
function gtk_column_view_sorter_get_nth_sort_column(self:PGtkColumnViewSorter; position:Tguint; sort_order:PGtkSortType):PGtkColumnViewColumn;cdecl;external gtklib;

// === Konventiert am: 23-7-24 20:10:01 ===

function GTK_TYPE_COLUMN_VIEW_SORTER: TGType;
function GTK_COLUMN_VIEW_SORTER(obj: Pointer): PGtkColumnViewSorter;
function GTK_IS_COLUMN_VIEW_SORTER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_COLUMN_VIEW_SORTER: TGType;
begin
  Result := gtk_column_view_sorter_get_type;
end;

function GTK_COLUMN_VIEW_SORTER(obj: Pointer): PGtkColumnViewSorter;
begin
  Result := PGtkColumnViewSorter(g_type_check_instance_cast(obj, GTK_TYPE_COLUMN_VIEW_SORTER));
end;

function GTK_IS_COLUMN_VIEW_SORTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLUMN_VIEW_SORTER);
end;




end.
