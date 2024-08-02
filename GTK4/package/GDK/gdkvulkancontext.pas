unit gdkvulkancontext;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkVulkanContext = record
  end;
  PGdkVulkanContext = ^TGdkVulkanContext;

function gdk_vulkan_error_quark: TGQuark; cdecl; external gtklib;
function gdk_vulkan_context_get_type: TGType; cdecl; external gtklib;

function GDK_VULKAN_ERROR: TGQuark;

// === Konventiert am: 2-8-24 17:23:59 ===

function GDK_TYPE_VULKAN_CONTEXT: TGType;
function GDK_VULKAN_CONTEXT(obj: Pointer): PGdkVulkanContext;
function GDK_IS_VULKAN_CONTEXT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_VULKAN_CONTEXT: TGType;
begin
  GDK_TYPE_VULKAN_CONTEXT := gdk_vulkan_context_get_type;
end;

function GDK_VULKAN_CONTEXT(obj: Pointer): PGdkVulkanContext;
begin
  Result := PGdkVulkanContext(g_type_check_instance_cast(obj, GDK_TYPE_VULKAN_CONTEXT));
end;

function GDK_IS_VULKAN_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_VULKAN_CONTEXT);
end;

// =====

function GDK_VULKAN_ERROR: TGQuark;
begin
  GDK_VULKAN_ERROR := gdk_vulkan_error_quark;
end;


end.
