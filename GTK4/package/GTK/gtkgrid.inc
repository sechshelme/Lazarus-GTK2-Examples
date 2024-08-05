/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGrid = record
    parent_instance: TGtkWidget;
  end;
  PGtkGrid = ^TGtkGrid;

  TGtkGridClass = record
    parent_class: TGtkWidgetClass;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkGridClass = ^TGtkGridClass;

function gtk_grid_get_type: TGType; cdecl; external gtklib;
function gtk_grid_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_grid_attach(grid: PGtkGrid; child: PGtkWidget; column: longint; row: longint; Width: longint;
  Height: longint); cdecl; external gtklib;
procedure gtk_grid_attach_next_to(grid: PGtkGrid; child: PGtkWidget; sibling: PGtkWidget; side: TGtkPositionType; Width: longint;
  Height: longint); cdecl; external gtklib;
function gtk_grid_get_child_at(grid: PGtkGrid; column: longint; row: longint): PGtkWidget; cdecl; external gtklib;
procedure gtk_grid_remove(grid: PGtkGrid; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_grid_insert_row(grid: PGtkGrid; position: longint); cdecl; external gtklib;
procedure gtk_grid_insert_column(grid: PGtkGrid; position: longint); cdecl; external gtklib;
procedure gtk_grid_remove_row(grid: PGtkGrid; position: longint); cdecl; external gtklib;
procedure gtk_grid_remove_column(grid: PGtkGrid; position: longint); cdecl; external gtklib;
procedure gtk_grid_insert_next_to(grid: PGtkGrid; sibling: PGtkWidget; side: TGtkPositionType); cdecl; external gtklib;
procedure gtk_grid_set_row_homogeneous(grid: PGtkGrid; homogeneous: Tgboolean); cdecl; external gtklib;
function gtk_grid_get_row_homogeneous(grid: PGtkGrid): Tgboolean; cdecl; external gtklib;
procedure gtk_grid_set_row_spacing(grid: PGtkGrid; spacing: Tguint); cdecl; external gtklib;
function gtk_grid_get_row_spacing(grid: PGtkGrid): Tguint; cdecl; external gtklib;
procedure gtk_grid_set_column_homogeneous(grid: PGtkGrid; homogeneous: Tgboolean); cdecl; external gtklib;
function gtk_grid_get_column_homogeneous(grid: PGtkGrid): Tgboolean; cdecl; external gtklib;
procedure gtk_grid_set_column_spacing(grid: PGtkGrid; spacing: Tguint); cdecl; external gtklib;
function gtk_grid_get_column_spacing(grid: PGtkGrid): Tguint; cdecl; external gtklib;
procedure gtk_grid_set_row_baseline_position(grid: PGtkGrid; row: longint; pos: TGtkBaselinePosition); cdecl; external gtklib;
function gtk_grid_get_row_baseline_position(grid: PGtkGrid; row: longint): TGtkBaselinePosition; cdecl; external gtklib;
procedure gtk_grid_set_baseline_row(grid: PGtkGrid; row: longint); cdecl; external gtklib;
function gtk_grid_get_baseline_row(grid: PGtkGrid): longint; cdecl; external gtklib;
procedure gtk_grid_query_child(grid: PGtkGrid; child: PGtkWidget; column: Plongint; row: Plongint; Width: Plongint;
  Height: Plongint); cdecl; external gtklib;

// === Konventiert am: 19-7-24 16:53:48 ===

function GTK_TYPE_GRID: TGType;
function GTK_GRID(obj: Pointer): PGtkGrid;
function GTK_GRID_CLASS(klass: Pointer): PGtkGridClass;
function GTK_IS_GRID(obj: Pointer): Tgboolean;
function GTK_IS_GRID_CLASS(klass: Pointer): Tgboolean;
function GTK_GRID_GET_CLASS(obj: Pointer): PGtkGridClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GRID: TGType;
begin
  GTK_TYPE_GRID := gtk_grid_get_type;
end;

function GTK_GRID(obj: Pointer): PGtkGrid;
begin
  Result := PGtkGrid(g_type_check_instance_cast(obj, GTK_TYPE_GRID));
end;

function GTK_GRID_CLASS(klass: Pointer): PGtkGridClass;
begin
  Result := PGtkGridClass(g_type_check_class_cast(klass, GTK_TYPE_GRID));
end;

function GTK_IS_GRID(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GRID);
end;

function GTK_IS_GRID_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GRID);
end;

function GTK_GRID_GET_CLASS(obj: Pointer): PGtkGridClass;
begin
  Result := PGtkGridClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
