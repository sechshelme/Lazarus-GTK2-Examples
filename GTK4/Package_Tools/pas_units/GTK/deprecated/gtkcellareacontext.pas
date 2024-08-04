unit gtkcellareacontext;

interface

uses
  glib2, common_GTK, gtktypes, gtkcellarea;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  // Ausgelagert
  //TGtkCellAreaContext = record
  //  parent_instance: TGObject;
  //end;
  //PGtkCellAreaContext = ^TGtkCellAreaContext;

  TGtkCellAreaContextClass = record
    parent_class: TGObjectClass;
    allocate: procedure(context: PGtkCellAreaContext; Width: longint; Height: longint); cdecl;
    reset: procedure(context: PGtkCellAreaContext); cdecl;
    get_preferred_height_for_width: procedure(context: PGtkCellAreaContext; Width: longint; minimum_height: Plongint; natural_height: Plongint); cdecl;
    get_preferred_width_for_height: procedure(context: PGtkCellAreaContext; Height: longint; minimum_width: Plongint; natural_width: Plongint); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkCellAreaContextClass = ^TGtkCellAreaContextClass;


function gtk_cell_area_context_get_type: TGType; cdecl; external gtklib;
function gtk_cell_area_context_get_area(context: PGtkCellAreaContext): PGtkCellArea; cdecl; external gtklib;
procedure gtk_cell_area_context_allocate(context: PGtkCellAreaContext; Width: longint; Height: longint); cdecl; external gtklib;
procedure gtk_cell_area_context_reset(context: PGtkCellAreaContext); cdecl; external gtklib;
procedure gtk_cell_area_context_get_preferred_width(context: PGtkCellAreaContext; minimum_width: Plongint; natural_width: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_context_get_preferred_height(context: PGtkCellAreaContext; minimum_height: Plongint; natural_height: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_context_get_preferred_height_for_width(context: PGtkCellAreaContext; Width: longint; minimum_height: Plongint; natural_height: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_context_get_preferred_width_for_height(context: PGtkCellAreaContext; Height: longint; minimum_width: Plongint; natural_width: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_context_get_allocation(context: PGtkCellAreaContext; Width: Plongint; Height: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_context_push_preferred_width(context: PGtkCellAreaContext; minimum_width: longint; natural_width: longint); cdecl; external gtklib;
procedure gtk_cell_area_context_push_preferred_height(context: PGtkCellAreaContext; minimum_height: longint; natural_height: longint); cdecl; external gtklib;

// === Konventiert am: 29-7-24 16:59:32 ===

function GTK_TYPE_CELL_AREA_CONTEXT: TGType;
function GTK_CELL_AREA_CONTEXT(obj: Pointer): PGtkCellAreaContext;
function GTK_CELL_AREA_CONTEXT_CLASS(klass: Pointer): PGtkCellAreaContextClass;
function GTK_IS_CELL_AREA_CONTEXT(obj: Pointer): Tgboolean;
function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass: Pointer): Tgboolean;
function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj: Pointer): PGtkCellAreaContextClass;

implementation

function GTK_TYPE_CELL_AREA_CONTEXT: TGType;
begin
  GTK_TYPE_CELL_AREA_CONTEXT := gtk_cell_area_context_get_type;
end;

function GTK_CELL_AREA_CONTEXT(obj: Pointer): PGtkCellAreaContext;
begin
  Result := PGtkCellAreaContext(g_type_check_instance_cast(obj, GTK_TYPE_CELL_AREA_CONTEXT));
end;

function GTK_CELL_AREA_CONTEXT_CLASS(klass: Pointer): PGtkCellAreaContextClass;
begin
  Result := PGtkCellAreaContextClass(g_type_check_class_cast(klass, GTK_TYPE_CELL_AREA_CONTEXT));
end;

function GTK_IS_CELL_AREA_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_AREA_CONTEXT);
end;

function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_CELL_AREA_CONTEXT);
end;

function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj: Pointer): PGtkCellAreaContextClass;
begin
  Result := PGtkCellAreaContextClass(PGTypeInstance(obj)^.g_class);
end;



end.
