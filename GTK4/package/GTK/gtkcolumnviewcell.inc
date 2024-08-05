/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {GDK_DECLARE_INTERNAL_TYPE (GtkColumnViewCell, gtk_column_view_cell, GTK, COLUMN_VIEW_CELL, GtkListItem) }
type
  TGtkColumnViewCell = record
  end;
  PGtkColumnViewCell = ^TGtkColumnViewCell;

  TGtkColumnViewCellClass = record
  end;
  PGtkColumnViewCellClass = ^TGtkColumnViewCellClass;

function gtk_column_view_cell_get_type: TGType; cdecl; external gtklib;
function gtk_column_view_cell_get_item(self: PGtkColumnViewCell): Tgpointer; cdecl; external;
function gtk_column_view_cell_get_position(self: PGtkColumnViewCell): Tguint; cdecl; external;
function gtk_column_view_cell_get_selected(self: PGtkColumnViewCell): Tgboolean; cdecl; external;
function gtk_column_view_cell_get_focusable(self: PGtkColumnViewCell): Tgboolean; cdecl; external;
procedure gtk_column_view_cell_set_focusable(self: PGtkColumnViewCell; focusable: Tgboolean); cdecl; external;
procedure gtk_column_view_cell_set_child(self: PGtkColumnViewCell; child: PGtkWidget); cdecl; external;
function gtk_column_view_cell_get_child(self: PGtkColumnViewCell): PGtkWidget; cdecl; external;


function GTK_TYPE_COLUMN_VIEW_CELL: TGType;
function GTK_COLUMN_VIEW_CELL(obj: Pointer): PGtkColumnViewCell;
function GTK_IS_COLUMN_VIEW_CELL(obj: Pointer): Tgboolean;
function GTK_COLUMN_VIEW_CELL_CLASS(klass: Pointer): PGtkColumnViewCellClass;
function GTK_IS_COLUMN_VIEW_CELL_CLASS(klass: Pointer): Tgboolean;
function GTK_COLUMN_VIEW_CELL_GET_CLASS(obj: Pointer): PGtkColumnViewCellClass;



{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_COLUMN_VIEW_CELL: TGType;
begin
  Result := gtk_column_view_cell_get_type;
end;

function GTK_COLUMN_VIEW_CELL(obj: Pointer): PGtkColumnViewCell;
begin
  Result := PGtkColumnViewCell(g_type_check_instance_cast(obj, GTK_TYPE_COLUMN_VIEW_CELL));
end;

function GTK_IS_COLUMN_VIEW_CELL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLUMN_VIEW_CELL);
end;

function GTK_COLUMN_VIEW_CELL_CLASS(klass: Pointer): PGtkColumnViewCellClass;
begin
  Result := PGtkColumnViewCellClass(g_type_check_class_cast(klass, GTK_TYPE_COLUMN_VIEW_CELL));
end;

function GTK_IS_COLUMN_VIEW_CELL_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_COLUMN_VIEW_CELL);
end;

function GTK_COLUMN_VIEW_CELL_GET_CLASS(obj: Pointer): PGtkColumnViewCellClass;
begin
  Result := PGtkColumnViewCellClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
