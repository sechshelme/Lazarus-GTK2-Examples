unit gtkcellrendererspinner;

interface

uses
  glib2, common_GTK, gtkcellrenderer;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkCellRendererSpinner = record
  end;
  PGtkCellRendererSpinner = ^TGtkCellRendererSpinner;

function gtk_cell_renderer_spinner_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_spinner_new: PGtkCellRenderer; cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:01:02 ===

function GTK_TYPE_CELL_RENDERER_SPINNER: TGType;
function GTK_CELL_RENDERER_SPINNER(obj: Pointer): PGtkCellRendererSpinner;
function GTK_IS_CELL_RENDERER_SPINNER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_CELL_RENDERER_SPINNER: TGType;
begin
  GTK_TYPE_CELL_RENDERER_SPINNER := gtk_cell_renderer_spinner_get_type;
end;

function GTK_CELL_RENDERER_SPINNER(obj: Pointer): PGtkCellRendererSpinner;
begin
  Result := PGtkCellRendererSpinner(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_SPINNER));
end;

function GTK_IS_CELL_RENDERER_SPINNER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_SPINNER);
end;



end.
