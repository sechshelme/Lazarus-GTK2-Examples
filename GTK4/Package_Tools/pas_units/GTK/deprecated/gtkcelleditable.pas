unit gtkcelleditable;

interface

uses
  glib2, common_GTK, GDK4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkCellEditable = record // _GtkCellEditable
  end;
  PGtkCellEditable = ^TGtkCellEditable;

  TGtkCellEditableIface = record
    g_iface: TGTypeInterface;
    editing_done: procedure(cell_editable: PGtkCellEditable); cdecl;
    remove_widget: procedure(cell_editable: PGtkCellEditable); cdecl;
    start_editing: procedure(cell_editable: PGtkCellEditable; event: PGdkEvent); cdecl;
  end;
  PGtkCellEditableIface = ^TGtkCellEditableIface;


function gtk_cell_editable_get_type: TGType; cdecl; external gtklib;
procedure gtk_cell_editable_start_editing(cell_editable: PGtkCellEditable; event: PGdkEvent); cdecl; external gtklib;
procedure gtk_cell_editable_editing_done(cell_editable: PGtkCellEditable); cdecl; external gtklib;
procedure gtk_cell_editable_remove_widget(cell_editable: PGtkCellEditable); cdecl; external gtklib;

// === Konventiert am: 21-7-24 16:39:08 ===

function GTK_TYPE_CELL_EDITABLE: TGType;
function GTK_CELL_EDITABLE(obj: Pointer): PGtkCellEditable;
function GTK_IS_CELL_EDITABLE(obj: Pointer): Tgboolean;
function GTK_CELL_EDITABLE_GET_IFACE(obj: Pointer): PGtkCellEditableIface;

implementation

function GTK_TYPE_CELL_EDITABLE: TGType;
begin
  GTK_TYPE_CELL_EDITABLE := gtk_cell_editable_get_type;
end;

function GTK_CELL_EDITABLE(obj: Pointer): PGtkCellEditable;
begin
  Result := PGtkCellEditable(g_type_check_instance_cast(obj, GTK_TYPE_CELL_EDITABLE));
end;

function GTK_IS_CELL_EDITABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_EDITABLE);
end;

function GTK_CELL_EDITABLE_GET_IFACE(obj: Pointer): PGtkCellEditableIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_CELL_EDITABLE);
end;


end.
