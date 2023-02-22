
  Type
  Pchar  = ^char;
  PGdkVulkanContext  = ^GdkVulkanContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   *
   * gdkvulkancontext.h:  specific Vulkan wrappers
   *
   * Copyright © 2016  Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
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

  { was #define dname def_expr }
  function GDK_TYPE_VULKAN_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_VULKAN_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_VULKAN_CONTEXT(obj : longint) : longint;  

  { was #define dname def_expr }
  function GDK_VULKAN_ERROR : longint; { return type might be wrong }

  function gdk_vulkan_error_quark:GQuark;

(* error 
GType gdk_vulkan_context_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
{$ifndef __GI_SCANNER__}
{$ifdef GDK_RENDERING_VULKAN}
(* Const before type ignored *)

  function gdk_vulkan_strerror(result:VkResult):^char;

  function gdk_vulkan_context_get_instance(context:PGdkVulkanContext):VkInstance;

  function gdk_vulkan_context_get_physical_device(context:PGdkVulkanContext):VkPhysicalDevice;

  function gdk_vulkan_context_get_device(context:PGdkVulkanContext):VkDevice;

  function gdk_vulkan_context_get_queue(context:PGdkVulkanContext):VkQueue;

  function gdk_vulkan_context_get_queue_family_index(context:PGdkVulkanContext):uint32_t;

  function gdk_vulkan_context_get_image_format(context:PGdkVulkanContext):VkFormat;

  function gdk_vulkan_context_get_n_images(context:PGdkVulkanContext):uint32_t;

  function gdk_vulkan_context_get_image(context:PGdkVulkanContext; id:guint):VkImage;

  function gdk_vulkan_context_get_draw_index(context:PGdkVulkanContext):uint32_t;

  function gdk_vulkan_context_get_draw_semaphore(context:PGdkVulkanContext):VkSemaphore;

{$endif}
  { GDK_RENDERING_VULKAN  }
{$endif}
  { __GI_SCANNER__  }
{$endif}
  { __GDK_VULKAN_CONTEXT__  }
  { was #define dname def_expr }
  function GDK_TYPE_VULKAN_CONTEXT : longint; { return type might be wrong }
    begin
      GDK_TYPE_VULKAN_CONTEXT:=gdk_vulkan_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_VULKAN_CONTEXT(obj : longint) : longint;
  begin
    GDK_VULKAN_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_VULKAN_CONTEXT,GdkVulkanContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_VULKAN_CONTEXT(obj : longint) : longint;
  begin
    GDK_IS_VULKAN_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_VULKAN_CONTEXT);
  end;

  { was #define dname def_expr }
  function GDK_VULKAN_ERROR : longint; { return type might be wrong }
    begin
      GDK_VULKAN_ERROR:=gdk_vulkan_error_quark;
    end;

  function gdk_vulkan_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_strerror(result:VkResult):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_instance(context:PGdkVulkanContext):VkInstance;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_physical_device(context:PGdkVulkanContext):VkPhysicalDevice;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_device(context:PGdkVulkanContext):VkDevice;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_queue(context:PGdkVulkanContext):VkQueue;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_queue_family_index(context:PGdkVulkanContext):uint32_t;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_image_format(context:PGdkVulkanContext):VkFormat;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_n_images(context:PGdkVulkanContext):uint32_t;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_image(context:PGdkVulkanContext; id:guint):VkImage;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_draw_index(context:PGdkVulkanContext):uint32_t;
  begin
    { You must implement this function }
  end;
  function gdk_vulkan_context_get_draw_semaphore(context:PGdkVulkanContext):VkSemaphore;
  begin
    { You must implement this function }
  end;

