/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCellRendererSpin = record
  end;
  PGtkCellRendererSpin = ^TGtkCellRendererSpin;

function gtk_cell_renderer_spin_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_spin_new: PGtkCellRenderer; cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:00:53 ===

function GTK_TYPE_CELL_RENDERER_SPIN: TGType;
function GTK_CELL_RENDERER_SPIN(obj: Pointer): PGtkCellRendererSpin;
function GTK_IS_CELL_RENDERER_SPIN(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CELL_RENDERER_SPIN: TGType;
begin
  GTK_TYPE_CELL_RENDERER_SPIN := gtk_cell_renderer_spin_get_type;
end;

function GTK_CELL_RENDERER_SPIN(obj: Pointer): PGtkCellRendererSpin;
begin
  Result := PGtkCellRendererSpin(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_SPIN));
end;

function GTK_IS_CELL_RENDERER_SPIN(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_SPIN);
end;



{$ENDIF read_implementation}
