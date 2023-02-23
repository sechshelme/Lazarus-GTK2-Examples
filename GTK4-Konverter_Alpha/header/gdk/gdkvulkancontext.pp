
unit gdkvulkancontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkvulkancontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkvulkancontext.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGdkVulkanContext  = ^GdkVulkanContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_VULKAN_CONTEXT__}
{$define __GDK_VULKAN_CONTEXT__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$ifdef GDK_RENDERING_VULKAN}
{$include <vulkan/vulkan.h>}
{$endif}


function GDK_TYPE_VULKAN_CONTEXT : longint; { return type might be wrong }

function GDK_VULKAN_CONTEXT(obj : longint) : longint;

function GDK_IS_VULKAN_CONTEXT(obj : longint) : longint;

function GDK_VULKAN_ERROR : longint; { return type might be wrong }


function gdk_vulkan_error_quark:TGQuark;cdecl;external;

function gdk_vulkan_context_get_type:TGType;cdecl;external;
{$ifndef __GI_SCANNER__}
{$ifdef GDK_RENDERING_VULKAN}


function gdk_vulkan_strerror(result:TVkResult):Pchar;cdecl;external;

function gdk_vulkan_context_get_instance(context:PGdkVulkanContext):TVkInstance;cdecl;external;

function gdk_vulkan_context_get_physical_device(context:PGdkVulkanContext):TVkPhysicalDevice;cdecl;external;

function gdk_vulkan_context_get_device(context:PGdkVulkanContext):TVkDevice;cdecl;external;

function gdk_vulkan_context_get_queue(context:PGdkVulkanContext):TVkQueue;cdecl;external;

function gdk_vulkan_context_get_queue_family_index(context:PGdkVulkanContext):Tuint32_t;cdecl;external;

function gdk_vulkan_context_get_image_format(context:PGdkVulkanContext):TVkFormat;cdecl;external;

function gdk_vulkan_context_get_n_images(context:PGdkVulkanContext):Tuint32_t;cdecl;external;

function gdk_vulkan_context_get_image(context:PGdkVulkanContext; id:Tguint):TVkImage;cdecl;external;

function gdk_vulkan_context_get_draw_index(context:PGdkVulkanContext):Tuint32_t;cdecl;external;

function gdk_vulkan_context_get_draw_semaphore(context:PGdkVulkanContext):TVkSemaphore;cdecl;external;
{$endif}

{$endif}


{$endif}


implementation

function GDK_TYPE_VULKAN_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_VULKAN_CONTEXT:=gdk_vulkan_context_get_type;
  end;

function GDK_VULKAN_CONTEXT(obj : longint) : longint;
begin
  GDK_VULKAN_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_VULKAN_CONTEXT,GdkVulkanContext);
end;

function GDK_IS_VULKAN_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_VULKAN_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_VULKAN_CONTEXT);
end;

function GDK_VULKAN_ERROR : longint; { return type might be wrong }
  begin
    GDK_VULKAN_ERROR:=gdk_vulkan_error_quark;
  end;


end.
