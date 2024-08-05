/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGskVulkanRenderer = record
  end;
  PGskVulkanRenderer = ^TGskVulkanRenderer;

  TGskVulkanRendererClass = record
  end;
  PGskVulkanRendererClass = ^TGskVulkanRendererClass;

function gsk_vulkan_renderer_get_type: TGType; cdecl; external gtklib;
function gsk_vulkan_renderer_new: PGskRenderer; cdecl; external gtklib;

// === Konventiert am: 4-8-24 13:20:47 ===

function GSK_TYPE_VULKAN_RENDERER: TGType;
function GSK_VULKAN_RENDERER(obj: Pointer): PGskVulkanRenderer;
function GSK_VULKAN_RENDERER_CLASS(klass: Pointer): PGskVulkanRendererClass;
function GSK_IS_VULKAN_RENDERER(obj: Pointer): Tgboolean;
function GSK_IS_VULKAN_RENDERER_CLASS(klass: Pointer): Tgboolean;
function GSK_VULKAN_RENDERER_GET_CLASS(obj: Pointer): PGskVulkanRendererClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GSK_TYPE_VULKAN_RENDERER: TGType;
begin
  GSK_TYPE_VULKAN_RENDERER := gsk_vulkan_renderer_get_type;
end;

function GSK_VULKAN_RENDERER(obj: Pointer): PGskVulkanRenderer;
begin
  Result := PGskVulkanRenderer(g_type_check_instance_cast(obj, GSK_TYPE_VULKAN_RENDERER));
end;

function GSK_VULKAN_RENDERER_CLASS(klass: Pointer): PGskVulkanRendererClass;
begin
  Result := PGskVulkanRendererClass(g_type_check_class_cast(klass, GSK_TYPE_VULKAN_RENDERER));
end;

function GSK_IS_VULKAN_RENDERER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_VULKAN_RENDERER);
end;

function GSK_IS_VULKAN_RENDERER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GSK_TYPE_VULKAN_RENDERER);
end;

function GSK_VULKAN_RENDERER_GET_CLASS(obj: Pointer): PGskVulkanRendererClass;
begin
  Result := PGskVulkanRendererClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
