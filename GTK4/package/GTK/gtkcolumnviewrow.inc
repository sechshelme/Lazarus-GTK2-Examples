/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {GDK_DECLARE_INTERNAL_TYPE (GtkColumnViewRow, gtk_column_view_row, GTK, COLUMN_VIEW_ROW, GObject) }
type
  TGtkColumnViewRow = record
  end;
  PGtkColumnViewRow = ^TGtkColumnViewRow;

  TGtkColumnViewRowClass = record
  end;
  PGtkColumnViewRowClass = ^TGtkColumnViewRowClass;

function gtk_column_view_row_get_type: TGType; cdecl; external gtklib;
function gtk_column_view_row_get_item(self: PGtkColumnViewRow): Tgpointer; cdecl; external gtklib;
function gtk_column_view_row_get_position(self: PGtkColumnViewRow): Tguint; cdecl; external gtklib;
function gtk_column_view_row_get_selected(self: PGtkColumnViewRow): Tgboolean; cdecl; external gtklib;
function gtk_column_view_row_get_selectable(self: PGtkColumnViewRow): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_row_set_selectable(self: PGtkColumnViewRow; selectable: Tgboolean); cdecl; external gtklib;
function gtk_column_view_row_get_activatable(self: PGtkColumnViewRow): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_row_set_activatable(self: PGtkColumnViewRow; activatable: Tgboolean); cdecl; external gtklib;
function gtk_column_view_row_get_focusable(self: PGtkColumnViewRow): Tgboolean; cdecl; external gtklib;
procedure gtk_column_view_row_set_focusable(self: PGtkColumnViewRow; focusable: Tgboolean); cdecl; external gtklib;
function gtk_column_view_row_get_accessible_description(self: PGtkColumnViewRow): PChar; cdecl; external gtklib;
procedure gtk_column_view_row_set_accessible_description(self: PGtkColumnViewRow; description: PChar); cdecl; external gtklib;
function gtk_column_view_row_get_accessible_label(self: PGtkColumnViewRow): PChar; cdecl; external gtklib;
procedure gtk_column_view_row_set_accessible_label(self: PGtkColumnViewRow; _label: PChar); cdecl; external gtklib;

// === Konventiert am: 23-7-24 20:06:59 ===

function GTK_TYPE_COLUMN_VIEW_ROW: TGType;
function GTK_COLUMN_VIEW_ROW(obj: Pointer): PGtkColumnViewRow;
function GTK_IS_COLUMN_VIEW_ROW(obj: Pointer): Tgboolean;
function GTK_COLUMN_VIEW_ROW_CLASS(klass: Pointer): PGtkColumnViewRowClass;
function GTK_IS_COLUMN_VIEW_ROW_CLASS(klass: Pointer): Tgboolean;
function GTK_COLUMN_VIEW_ROW_GET_CLASS(obj: Pointer): PGtkColumnViewRowClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_COLUMN_VIEW_ROW: TGType;
begin
  Result := gtk_column_view_row_get_type;
end;

function GTK_COLUMN_VIEW_ROW(obj: Pointer): PGtkColumnViewRow;
begin
  Result := PGtkColumnViewRow(g_type_check_instance_cast(obj, GTK_TYPE_COLUMN_VIEW_ROW));
end;

function GTK_IS_COLUMN_VIEW_ROW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLUMN_VIEW_ROW);
end;

function GTK_COLUMN_VIEW_ROW_CLASS(klass: Pointer): PGtkColumnViewRowClass;
begin
  Result := PGtkColumnViewRowClass(g_type_check_class_cast(klass, GTK_TYPE_COLUMN_VIEW_ROW));
end;

function GTK_IS_COLUMN_VIEW_ROW_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_COLUMN_VIEW_ROW);
end;

function GTK_COLUMN_VIEW_ROW_GET_CLASS(obj: Pointer): PGtkColumnViewRowClass;
begin
  Result := PGtkColumnViewRowClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
