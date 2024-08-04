unit gtkcolumnview;

interface

uses
  glib2, common_GTK, gtkenums, gtkwidget, gtktypes, gtkselectionmodel, gtksorter, gtkscrollinfo;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkColumnView = record // _GtkColumnView
  end;
  PGtkColumnView = ^TGtkColumnView;

  TGtkColumnViewClass = record // _GtkColumnViewClass
  end;
  PGtkColumnViewClass = ^TGtkColumnViewClass;

function gtk_column_view_get_type: TGType; cdecl; external gtklib;
function gtk_column_view_new(model: PGtkSelectionModel): PGtkWidget; cdecl; external gtklib;
function gtk_column_view_get_columns(self: PGtkColumnView): PGListModel; cdecl; external gtklib;
procedure gtk_column_view_append_column(self: PGtkColumnView; column: PGtkColumnViewColumn); cdecl; external gtklib;
procedure gtk_column_view_remove_column(self: PGtkColumnView; column: PGtkColumnViewColumn); cdecl; external gtklib;
procedure gtk_column_view_insert_column(self: PGtkColumnView; position: Tguint; column: PGtkColumnViewColumn); cdecl; external gtklib;
function gtk_column_view_get_model(self: PGtkColumnView): PGtkSelectionModel; cdecl; external gtklib;
procedure gtk_column_view_set_model(self: PGtkColumnView; model: PGtkSelectionModel); cdecl; external gtklib;
function gtk_column_view_get_show_row_separators(self: PGtkColumnView): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_set_show_row_separators(self: PGtkColumnView; show_row_separators: Tgboolean); cdecl; external gtklib;
function gtk_column_view_get_show_column_separators(self: PGtkColumnView): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_set_show_column_separators(self: PGtkColumnView; show_column_separators: Tgboolean); cdecl; external gtklib;
function gtk_column_view_get_sorter(self: PGtkColumnView): PGtkSorter; cdecl; external gtklib;
procedure gtk_column_view_sort_by_column(self: PGtkColumnView; column: PGtkColumnViewColumn; direction: TGtkSortType); cdecl; external gtklib;
procedure gtk_column_view_set_single_click_activate(self: PGtkColumnView; single_click_activate: Tgboolean); cdecl; external gtklib;
function gtk_column_view_get_single_click_activate(self: PGtkColumnView): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_set_reorderable(self: PGtkColumnView; reorderable: Tgboolean); cdecl; external gtklib;
function gtk_column_view_get_reorderable(self: PGtkColumnView): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_set_enable_rubberband(self: PGtkColumnView; enable_rubberband: Tgboolean); cdecl; external gtklib;
function gtk_column_view_get_enable_rubberband(self: PGtkColumnView): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_set_tab_behavior(self: PGtkColumnView; tab_behavior: TGtkListTabBehavior); cdecl; external gtklib;
function gtk_column_view_get_tab_behavior(self: PGtkColumnView): TGtkListTabBehavior; cdecl; external gtklib;
procedure gtk_column_view_set_row_factory(self: PGtkColumnView; factory: PGtkListItemFactory); cdecl; external gtklib;
function gtk_column_view_get_row_factory(self: PGtkColumnView): PGtkListItemFactory; cdecl; external gtklib;
procedure gtk_column_view_set_header_factory(self: PGtkColumnView; factory: PGtkListItemFactory); cdecl; external gtklib;
function gtk_column_view_get_header_factory(self: PGtkColumnView): PGtkListItemFactory; cdecl; external gtklib;
procedure gtk_column_view_scroll_to(self: PGtkColumnView; pos: Tguint; column: PGtkColumnViewColumn; flags: TGtkListScrollFlags; scroll: PGtkScrollInfo); cdecl; external gtklib;

// === Konventiert am: 23-7-24 19:30:19 ===

function GTK_TYPE_COLUMN_VIEW: TGType;
function GTK_COLUMN_VIEW(obj: Pointer): PGtkColumnView;
function GTK_COLUMN_VIEW_CLASS(klass: Pointer): PGtkColumnViewClass;
function GTK_IS_COLUMN_VIEW(obj: Pointer): Tgboolean;
function GTK_IS_COLUMN_VIEW_CLASS(klass: Pointer): Tgboolean;
function GTK_COLUMN_VIEW_GET_CLASS(obj: Pointer): PGtkColumnViewClass;

implementation

function GTK_TYPE_COLUMN_VIEW: TGType;
begin
  GTK_TYPE_COLUMN_VIEW := gtk_column_view_get_type;
end;

function GTK_COLUMN_VIEW(obj: Pointer): PGtkColumnView;
begin
  Result := PGtkColumnView(g_type_check_instance_cast(obj, GTK_TYPE_COLUMN_VIEW));
end;

function GTK_COLUMN_VIEW_CLASS(klass: Pointer): PGtkColumnViewClass;
begin
  Result := PGtkColumnViewClass(g_type_check_class_cast(klass, GTK_TYPE_COLUMN_VIEW));
end;

function GTK_IS_COLUMN_VIEW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLUMN_VIEW);
end;

function GTK_IS_COLUMN_VIEW_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_COLUMN_VIEW);
end;

function GTK_COLUMN_VIEW_GET_CLASS(obj: Pointer): PGtkColumnViewClass;
begin
  Result := PGtkColumnViewClass(PGTypeInstance(obj)^.g_class);
end;



end.
