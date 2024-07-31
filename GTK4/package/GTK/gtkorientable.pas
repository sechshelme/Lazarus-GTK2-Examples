unit gtkorientable;

interface

uses
  glib2, common_GTK, gtkenums;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkOrientable = record // _GtkOrientable
  end;
  PGtkOrientable = ^TGtkOrientable;

  TGtkOrientableIface = record
    base_iface: TGTypeInterface;
  end;
  PGtkOrientableIface = ^TGtkOrientableIface;


function gtk_orientable_get_type: TGType; cdecl; external gtklib;
procedure gtk_orientable_set_orientation(orientable: PGtkOrientable; orientation: TGtkOrientation); cdecl; external gtklib;
function gtk_orientable_get_orientation(orientable: PGtkOrientable): TGtkOrientation; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:02:29 ===

function GTK_TYPE_ORIENTABLE: TGType;
function GTK_ORIENTABLE(obj: Pointer): PGtkOrientable;
function GTK_IS_ORIENTABLE(obj: Pointer): Tgboolean;
function GTK_ORIENTABLE_GET_IFACE(obj: Pointer): PGtkOrientableIface;

implementation

function GTK_TYPE_ORIENTABLE: TGType;
begin
  GTK_TYPE_ORIENTABLE := gtk_orientable_get_type;
end;

function GTK_ORIENTABLE(obj: Pointer): PGtkOrientable;
begin
  Result := PGtkOrientable(g_type_check_instance_cast(obj, GTK_TYPE_ORIENTABLE));
end;

function GTK_IS_ORIENTABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ORIENTABLE);
end;


function GTK_ORIENTABLE_GET_IFACE(obj: Pointer): PGtkOrientableIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_ORIENTABLE);
end;


end.
