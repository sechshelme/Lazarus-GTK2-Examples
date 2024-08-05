/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCellRendererToggle = record
  end;
  PGtkCellRendererToggle = ^TGtkCellRendererToggle;

function gtk_cell_renderer_toggle_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_toggle_new: PGtkCellRenderer; cdecl; external gtklib;
function gtk_cell_renderer_toggle_get_radio(toggle: PGtkCellRendererToggle): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_toggle_set_radio(toggle: PGtkCellRendererToggle; radio: Tgboolean); cdecl; external gtklib;
function gtk_cell_renderer_toggle_get_active(toggle: PGtkCellRendererToggle): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_toggle_set_active(toggle: PGtkCellRendererToggle; setting: Tgboolean); cdecl; external gtklib;
function gtk_cell_renderer_toggle_get_activatable(toggle: PGtkCellRendererToggle): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_toggle_set_activatable(toggle: PGtkCellRendererToggle; setting: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:01:23 ===

function GTK_TYPE_CELL_RENDERER_TOGGLE: TGType;
function GTK_CELL_RENDERER_TOGGLE(obj: Pointer): PGtkCellRendererToggle;
function GTK_IS_CELL_RENDERER_TOGGLE(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CELL_RENDERER_TOGGLE: TGType;
begin
  GTK_TYPE_CELL_RENDERER_TOGGLE := gtk_cell_renderer_toggle_get_type;
end;

function GTK_CELL_RENDERER_TOGGLE(obj: Pointer): PGtkCellRendererToggle;
begin
  Result := PGtkCellRendererToggle(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_TOGGLE));
end;

function GTK_IS_CELL_RENDERER_TOGGLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_TOGGLE);
end;



{$ENDIF read_implementation}
