unit gtkcellareabox;

interface

uses
  glib2, common_GTK, gtkcellrenderer, gtkcellarea;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkCellAreaBox = record
  end;
  PGtkCellAreaBox = ^TGtkCellAreaBox;

function gtk_cell_area_box_get_type: TGType; cdecl; external gtklib;
function gtk_cell_area_box_new: PGtkCellArea; cdecl; external gtklib;
procedure gtk_cell_area_box_pack_start(box: PGtkCellAreaBox; renderer: PGtkCellRenderer; expand: Tgboolean; align: Tgboolean; fixed: Tgboolean); cdecl; external gtklib;
procedure gtk_cell_area_box_pack_end(box: PGtkCellAreaBox; renderer: PGtkCellRenderer; expand: Tgboolean; align: Tgboolean; fixed: Tgboolean); cdecl; external gtklib;
function gtk_cell_area_box_get_spacing(box: PGtkCellAreaBox): longint; cdecl; external gtklib;
procedure gtk_cell_area_box_set_spacing(box: PGtkCellAreaBox; spacing: longint); cdecl; external gtklib;
function _gtk_cell_area_box_group_visible(box: PGtkCellAreaBox; group_idx: longint): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 29-7-24 16:59:22 ===

function GTK_TYPE_CELL_AREA_BOX: TGType;
function GTK_CELL_AREA_BOX(obj: Pointer): PGtkCellAreaBox;
function GTK_IS_CELL_AREA_BOX(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_CELL_AREA_BOX: TGType;
begin
  GTK_TYPE_CELL_AREA_BOX := gtk_cell_area_box_get_type;
end;

function GTK_CELL_AREA_BOX(obj: Pointer): PGtkCellAreaBox;
begin
  Result := PGtkCellAreaBox(g_type_check_instance_cast(obj, GTK_TYPE_CELL_AREA_BOX));
end;

function GTK_IS_CELL_AREA_BOX(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_AREA_BOX);
end;



end.
