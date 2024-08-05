/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  // ausgelagert
  //TGdkSurface = record
  //end;
  //PGdkSurface = ^TGdkSurface;

  TGdkSurfaceClass = record
  end;
  PGdkSurfaceClass = ^TGdkSurfaceClass;

function gdk_surface_get_type: TGType; cdecl; external gtklib;
function gdk_surface_new_toplevel(display: PGdkDisplay): PGdkSurface; cdecl; external gtklib;
function gdk_surface_new_popup(parent: PGdkSurface; autohide: Tgboolean): PGdkSurface; cdecl; external gtklib;
procedure gdk_surface_destroy(surface: PGdkSurface); cdecl; external gtklib;
function gdk_surface_is_destroyed(surface: PGdkSurface): Tgboolean; cdecl; external gtklib;
function gdk_surface_get_display(surface: PGdkSurface): PGdkDisplay; cdecl; external gtklib;
procedure gdk_surface_hide(surface: PGdkSurface); cdecl; external gtklib;
procedure gdk_surface_set_input_region(surface: PGdkSurface; region: Pcairo_region_t); cdecl; external gtklib;
function gdk_surface_get_mapped(surface: PGdkSurface): Tgboolean; cdecl; external gtklib;
procedure gdk_surface_set_cursor(surface: PGdkSurface; cursor: PGdkCursor); cdecl; external gtklib;
function gdk_surface_get_cursor(surface: PGdkSurface): PGdkCursor; cdecl; external gtklib;
procedure gdk_surface_set_device_cursor(surface: PGdkSurface; device: PGdkDevice; cursor: PGdkCursor); cdecl; external gtklib;
function gdk_surface_get_device_cursor(surface: PGdkSurface; device: PGdkDevice): PGdkCursor; cdecl; external gtklib;
function gdk_surface_get_width(surface: PGdkSurface): longint; cdecl; external gtklib;
function gdk_surface_get_height(surface: PGdkSurface): longint; cdecl; external gtklib;
function gdk_surface_translate_coordinates(from: PGdkSurface; to_: PGdkSurface; x: Pdouble; y: Pdouble): Tgboolean; cdecl; external gtklib;
function gdk_surface_get_scale_factor(surface: PGdkSurface): longint; cdecl; external gtklib;
function gdk_surface_get_scale(surface: PGdkSurface): Tdouble; cdecl; external gtklib;
function gdk_surface_get_device_position(surface: PGdkSurface; device: PGdkDevice; x: Pdouble; y: Pdouble; mask: PGdkModifierType): Tgboolean; cdecl; external gtklib;
function gdk_surface_create_similar_surface(surface: PGdkSurface; content: Tcairo_content_t; Width: longint; Height: longint): Pcairo_surface_t; cdecl; external gtklib;
procedure gdk_surface_beep(surface: PGdkSurface); cdecl; external gtklib;
procedure gdk_surface_queue_render(surface: PGdkSurface); cdecl; external gtklib;
procedure gdk_surface_request_layout(surface: PGdkSurface); cdecl; external gtklib;
function gdk_surface_get_frame_clock(surface: PGdkSurface): PGdkFrameClock; cdecl; external gtklib;
procedure gdk_surface_set_opaque_region(surface: PGdkSurface; region: Pcairo_region_t); cdecl; external gtklib;
function gdk_surface_create_cairo_context(surface: PGdkSurface): PGdkCairoContext; cdecl; external gtklib;
function gdk_surface_create_gl_context(surface: PGdkSurface; error: PPGError): PGdkGLContext; cdecl; external gtklib;
function gdk_surface_create_vulkan_context(surface: PGdkSurface; error: PPGError): PGdkVulkanContext; cdecl; external gtklib;
{G_DEFINE_AUTOPTR_CLEANUP_FUNC (GdkSurface, g_object_unref) }

// === Konventiert am: 31-7-24 16:36:33 ===

function GDK_TYPE_SURFACE: TGType;
function GDK_SURFACE(obj: Pointer): PGdkSurface;
function GDK_SURFACE_CLASS(klass: Pointer): PGdkSurfaceClass;
function GDK_IS_SURFACE(obj: Pointer): Tgboolean;
function GDK_IS_SURFACE_CLASS(klass: Pointer): Tgboolean;
function GDK_SURFACE_GET_CLASS(obj: Pointer): PGdkSurfaceClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_SURFACE: TGType;
begin
  GDK_TYPE_SURFACE := gdk_surface_get_type;
end;

function GDK_SURFACE(obj: Pointer): PGdkSurface;
begin
  Result := PGdkSurface(g_type_check_instance_cast(obj, GDK_TYPE_SURFACE));
end;

function GDK_SURFACE_CLASS(klass: Pointer): PGdkSurfaceClass;
begin
  Result := PGdkSurfaceClass(g_type_check_class_cast(klass, GDK_TYPE_SURFACE));
end;

function GDK_IS_SURFACE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_SURFACE);
end;

function GDK_IS_SURFACE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_SURFACE);
end;

function GDK_SURFACE_GET_CLASS(obj: Pointer): PGdkSurfaceClass;
begin
  Result := PGdkSurfaceClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
