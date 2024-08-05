/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCellRendererCombo = record
  end;
  PGtkCellRendererCombo = ^TGtkCellRendererCombo;

function gtk_cell_renderer_combo_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_combo_new: PGtkCellRenderer; cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:00:15 ===

function GTK_TYPE_CELL_RENDERER_COMBO: TGType;
function GTK_CELL_RENDERER_COMBO(obj: Pointer): PGtkCellRendererCombo;
function GTK_IS_CELL_RENDERER_COMBO(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CELL_RENDERER_COMBO: TGType;
begin
  GTK_TYPE_CELL_RENDERER_COMBO := gtk_cell_renderer_combo_get_type;
end;

function GTK_CELL_RENDERER_COMBO(obj: Pointer): PGtkCellRendererCombo;
begin
  Result := PGtkCellRendererCombo(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_COMBO));
end;

function GTK_IS_CELL_RENDERER_COMBO(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_COMBO);
end;



{$ENDIF read_implementation}
