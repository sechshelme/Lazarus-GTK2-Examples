/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGskCairoRenderer = record
  end;
  PGskCairoRenderer = ^TGskCairoRenderer;

  TGskCairoRendererClass = record
  end;
  PGskCairoRendererClass = ^TGskCairoRendererClass;

function gsk_cairo_renderer_get_type: TGType; cdecl; external gtklib;
function gsk_cairo_renderer_new: PGskRenderer; cdecl; external gtklib;

// === Konventiert am: 3-8-24 14:02:11 ===

function GSK_TYPE_CAIRO_RENDERER: TGType;
function GSK_CAIRO_RENDERER(obj: Pointer): PGskCairoRenderer;
function GSK_CAIRO_RENDERER_CLASS(klass: Pointer): PGskCairoRendererClass;
function GSK_IS_CAIRO_RENDERER(obj: Pointer): Tgboolean;
function GSK_IS_CAIRO_RENDERER_CLASS(klass: Pointer): Tgboolean;
function GSK_CAIRO_RENDERER_GET_CLASS(obj: Pointer): PGskCairoRendererClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GSK_TYPE_CAIRO_RENDERER: TGType;
begin
  GSK_TYPE_CAIRO_RENDERER := gsk_cairo_renderer_get_type;
end;

function GSK_CAIRO_RENDERER(obj: Pointer): PGskCairoRenderer;
begin
  Result := PGskCairoRenderer(g_type_check_instance_cast(obj, GSK_TYPE_CAIRO_RENDERER));
end;

function GSK_CAIRO_RENDERER_CLASS(klass: Pointer): PGskCairoRendererClass;
begin
  Result := PGskCairoRendererClass(g_type_check_class_cast(klass, GSK_TYPE_CAIRO_RENDERER));
end;

function GSK_IS_CAIRO_RENDERER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_CAIRO_RENDERER);
end;

function GSK_IS_CAIRO_RENDERER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GSK_TYPE_CAIRO_RENDERER);
end;

function GSK_CAIRO_RENDERER_GET_CLASS(obj: Pointer): PGskCairoRendererClass;
begin
  Result := PGskCairoRendererClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
