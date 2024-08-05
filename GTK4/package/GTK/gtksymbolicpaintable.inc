/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkSymbolicPaintable = record
  end;
  PGtkSymbolicPaintable = ^TGtkSymbolicPaintable;

  TGtkSymbolicPaintableInterface = record
    g_iface: TGTypeInterface;
    snapshot_symbolic: procedure(paintable: PGtkSymbolicPaintable; snapshot: PGdkSnapshot; Width: Tdouble; Height: Tdouble; colors: PGdkRGBA; n_colors: Tgsize); cdecl;
  end;
  PGtkSymbolicPaintableInterface = ^TGtkSymbolicPaintableInterface;

function gtk_symbolic_paintable_get_type: TGType; cdecl; external gtklib;
procedure gtk_symbolic_paintable_snapshot_symbolic(paintable: PGtkSymbolicPaintable; snapshot: PGdkSnapshot; Width: Tdouble; Height: Tdouble; colors: PGdkRGBA; n_colors: Tgsize); cdecl; external gtklib;

// === Konventiert am: 28-7-24 16:40:59 ===

function GTK_TYPE_SYMBOLIC_PAINTABLE: TGType;
function GTK_SYMBOLIC_PAINTABLE(obj: Pointer): PGtkSymbolicPaintable;
function GTK_IS_SYMBOLIC_PAINTABLE(obj: Pointer): Tgboolean;
function GTK_SYMBOLIC_PAINTABLE_GET_IFACE(obj: Pointer): PGtkSymbolicPaintableInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SYMBOLIC_PAINTABLE: TGType;
begin
  Result := gtk_symbolic_paintable_get_type;
end;

function GTK_SYMBOLIC_PAINTABLE(obj: Pointer): PGtkSymbolicPaintable;
begin
  Result := PGtkSymbolicPaintable(g_type_check_instance_cast(obj, GTK_TYPE_SYMBOLIC_PAINTABLE));
end;

function GTK_IS_SYMBOLIC_PAINTABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SYMBOLIC_PAINTABLE);
end;

function GTK_SYMBOLIC_PAINTABLE_GET_IFACE(obj: Pointer): PGtkSymbolicPaintableInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_SYMBOLIC_PAINTABLE);
end;




{$ENDIF read_implementation}
