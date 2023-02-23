/* GDK - The GIMP Drawing Kit
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
 */

#ifndef __GDK_VULKAN_CONTEXT__
#define __GDK_VULKAN_CONTEXT__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkversionmacros.h>
#include <gdk/gdktypes.h>

#ifdef GDK_RENDERING_VULKAN
#include <vulkan/vulkan.h>
#endif

/* Zeile entfernt */

#define GDK_TYPE_VULKAN_CONTEXT             (gdk_vulkan_context_get_type ())
#define GDK_VULKAN_CONTEXT(obj)             (G_TYPE_CHECK_INSTANCE_CAST ((obj), GDK_TYPE_VULKAN_CONTEXT, GdkVulkanContext))
#define GDK_IS_VULKAN_CONTEXT(obj)          (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GDK_TYPE_VULKAN_CONTEXT))

#define GDK_VULKAN_ERROR                    (gdk_vulkan_error_quark ())

/* Zeile entfernt */
GQuark gdk_vulkan_error_quark (void);

/* Zeile entfernt */
GType gdk_vulkan_context_get_type (void) ;

#ifndef __GI_SCANNER__
#ifdef GDK_RENDERING_VULKAN

/* Zeile entfernt */
const char *            gdk_vulkan_strerror                         (VkResult           result);

/* Zeile entfernt */
VkInstance              gdk_vulkan_context_get_instance             (GdkVulkanContext  *context);
/* Zeile entfernt */
VkPhysicalDevice        gdk_vulkan_context_get_physical_device      (GdkVulkanContext  *context);
/* Zeile entfernt */
VkDevice                gdk_vulkan_context_get_device               (GdkVulkanContext  *context);
/* Zeile entfernt */
VkQueue                 gdk_vulkan_context_get_queue                (GdkVulkanContext  *context);
/* Zeile entfernt */
uint32_t                gdk_vulkan_context_get_queue_family_index   (GdkVulkanContext  *context);
/* Zeile entfernt */
VkFormat                gdk_vulkan_context_get_image_format         (GdkVulkanContext  *context);
/* Zeile entfernt */
uint32_t                gdk_vulkan_context_get_n_images             (GdkVulkanContext  *context);
/* Zeile entfernt */
VkImage                 gdk_vulkan_context_get_image                (GdkVulkanContext  *context,
                                                                     guint              id);
/* Zeile entfernt */
uint32_t                gdk_vulkan_context_get_draw_index           (GdkVulkanContext  *context);
/* Zeile entfernt */
VkSemaphore             gdk_vulkan_context_get_draw_semaphore       (GdkVulkanContext  *context);

#endif /* GDK_RENDERING_VULKAN */
#endif /* __GI_SCANNER__ */

/* Zeile entfernt */

#endif /* __GDK_VULKAN_CONTEXT__ */
