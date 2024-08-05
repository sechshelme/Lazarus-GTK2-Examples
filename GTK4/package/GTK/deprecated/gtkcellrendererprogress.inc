/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCellRendererProgress = record
  end;
  PGtkCellRendererProgress = ^TGtkCellRendererProgress;


function gtk_cell_renderer_progress_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_progress_new: PGtkCellRenderer; cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:00:46 ===

function GTK_TYPE_CELL_RENDERER_PROGRESS: TGType;
function GTK_CELL_RENDERER_PROGRESS(obj: Pointer): PGtkCellRendererProgress;
function GTK_IS_CELL_RENDERER_PROGRESS(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CELL_RENDERER_PROGRESS: TGType;
begin
  GTK_TYPE_CELL_RENDERER_PROGRESS := gtk_cell_renderer_progress_get_type;
end;

function GTK_CELL_RENDERER_PROGRESS(obj: Pointer): PGtkCellRendererProgress;
begin
  Result := PGtkCellRendererProgress(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_PROGRESS));
end;

function GTK_IS_CELL_RENDERER_PROGRESS(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_PROGRESS);
end;



{$ENDIF read_implementation}
