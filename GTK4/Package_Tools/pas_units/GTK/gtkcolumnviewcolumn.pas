unit gtkcolumnviewcolumn;

interface

uses
  glib2, common_GTK, gtktypes, gtkcolumnview, gtklistitemfactory, gtksorter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkColumnViewColumnClass = record // _GtkColumnViewColumnClass
  end;
  PGtkColumnViewColumnClass = ^TGtkColumnViewColumnClass;

  // ausgelagert
  //TGtkColumnViewColumn = record // _GtkColumnViewColumn
  //end;
  //PGtkColumnViewColumn = ^TGtkColumnViewColumn;



function gtk_column_view_column_get_type: TGType; cdecl; external gtklib;
function gtk_column_view_column_new(title: PChar; factory: PGtkListItemFactory): PGtkColumnViewColumn; cdecl; external gtklib;
function gtk_column_view_column_get_column_view(self: PGtkColumnViewColumn): PGtkColumnView; cdecl; external gtklib;
procedure gtk_column_view_column_set_factory(self: PGtkColumnViewColumn; factory: PGtkListItemFactory); cdecl; external gtklib;
function gtk_column_view_column_get_factory(self: PGtkColumnViewColumn): PGtkListItemFactory; cdecl; external gtklib;
procedure gtk_column_view_column_set_title(self: PGtkColumnViewColumn; title: PChar); cdecl; external gtklib;
function gtk_column_view_column_get_title(self: PGtkColumnViewColumn): PChar; cdecl; external gtklib;
procedure gtk_column_view_column_set_sorter(self: PGtkColumnViewColumn; sorter: PGtkSorter); cdecl; external gtklib;
function gtk_column_view_column_get_sorter(self: PGtkColumnViewColumn): PGtkSorter; cdecl; external gtklib;
procedure gtk_column_view_column_set_visible(self: PGtkColumnViewColumn; Visible: Tgboolean); cdecl; external gtklib;
function gtk_column_view_column_get_visible(self: PGtkColumnViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_column_set_header_menu(self: PGtkColumnViewColumn; menu: PGMenuModel); cdecl; external gtklib;
function gtk_column_view_column_get_header_menu(self: PGtkColumnViewColumn): PGMenuModel; cdecl; external gtklib;
procedure gtk_column_view_column_set_fixed_width(self: PGtkColumnViewColumn; fixed_width: longint); cdecl; external gtklib;
function gtk_column_view_column_get_fixed_width(self: PGtkColumnViewColumn): longint; cdecl; external gtklib;
procedure gtk_column_view_column_set_resizable(self: PGtkColumnViewColumn; resizable: Tgboolean); cdecl; external gtklib;
function gtk_column_view_column_get_resizable(self: PGtkColumnViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_column_set_expand(self: PGtkColumnViewColumn; expand: Tgboolean); cdecl; external gtklib;
function gtk_column_view_column_get_expand(self: PGtkColumnViewColumn): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_column_set_id(self: PGtkColumnViewColumn; id: PChar); cdecl; external gtklib;
function gtk_column_view_column_get_id(self: PGtkColumnViewColumn): PChar; cdecl; external gtklib;

// === Konventiert am: 23-7-24 20:02:05 ===

function GTK_TYPE_COLUMN_VIEW_COLUMN: TGType;
function GTK_COLUMN_VIEW_COLUMN(obj: Pointer): PGtkColumnViewColumn;
function GTK_COLUMN_VIEW_COLUMN_CLASS(klass: Pointer): PGtkColumnViewColumnClass;
function GTK_IS_COLUMN_VIEW_COLUMN(obj: Pointer): Tgboolean;
function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(klass: Pointer): Tgboolean;
function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(obj: Pointer): PGtkColumnViewColumnClass;

implementation

function GTK_TYPE_COLUMN_VIEW_COLUMN: TGType;
begin
  GTK_TYPE_COLUMN_VIEW_COLUMN := gtk_column_view_column_get_type;
end;

function GTK_COLUMN_VIEW_COLUMN(obj: Pointer): PGtkColumnViewColumn;
begin
  Result := PGtkColumnViewColumn(g_type_check_instance_cast(obj, GTK_TYPE_COLUMN_VIEW_COLUMN));
end;

function GTK_COLUMN_VIEW_COLUMN_CLASS(klass: Pointer): PGtkColumnViewColumnClass;
begin
  Result := PGtkColumnViewColumnClass(g_type_check_class_cast(klass, GTK_TYPE_COLUMN_VIEW_COLUMN));
end;

function GTK_IS_COLUMN_VIEW_COLUMN(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLUMN_VIEW_COLUMN);
end;

function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_COLUMN_VIEW_COLUMN);
end;

function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(obj: Pointer): PGtkColumnViewColumnClass;
begin
  Result := PGtkColumnViewColumnClass(PGTypeInstance(obj)^.g_class);
end;



end.
