/*
 * Copyright © 2023 Red Hat, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Matthias Clasen <mclasen@redhat.com>
 */

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_DMABUF_TEXTURE_BUILDER (gdk_dmabuf_texture_builder_get_type ())

//GDK_DECLARE_INTERNAL_TYPE (GdkDmabufTextureBuilder, gdk_dmabuf_texture_builder, GDK, DMABUF_TEXTURE_BUILDER, GObject)


GdkDmabufTextureBuilder *gdk_dmabuf_texture_builder_new              (void);


GdkDisplay *             gdk_dmabuf_texture_builder_get_display      (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_display      (GdkDmabufTextureBuilder    *self,
                                                                      GdkDisplay                 *display);


unsigned int             gdk_dmabuf_texture_builder_get_width        (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_width        (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                width);


unsigned int             gdk_dmabuf_texture_builder_get_height       (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_height       (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                height);


guint32                  gdk_dmabuf_texture_builder_get_fourcc       (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_fourcc       (GdkDmabufTextureBuilder    *self,
                                                                      guint32                     fourcc);


guint64                  gdk_dmabuf_texture_builder_get_modifier     (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_modifier     (GdkDmabufTextureBuilder    *self,
                                                                      guint64                     modifier);


gboolean                 gdk_dmabuf_texture_builder_get_premultiplied (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_premultiplied (GdkDmabufTextureBuilder    *self,
                                                                       gboolean                    premultiplied);


unsigned int             gdk_dmabuf_texture_builder_get_n_planes     (GdkDmabufTextureBuilder    *self) ;

void                     gdk_dmabuf_texture_builder_set_n_planes     (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                n_planes);


int                      gdk_dmabuf_texture_builder_get_fd           (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                plane) ;

void                     gdk_dmabuf_texture_builder_set_fd           (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                plane,
                                                                      int                         fd);


unsigned int             gdk_dmabuf_texture_builder_get_stride       (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                plane) ;

void                     gdk_dmabuf_texture_builder_set_stride       (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                plane,
                                                                      unsigned int                stride);


unsigned int             gdk_dmabuf_texture_builder_get_offset       (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                plane) ;

void                     gdk_dmabuf_texture_builder_set_offset       (GdkDmabufTextureBuilder    *self,
                                                                      unsigned int                plane,
                                                                      unsigned int                offset);


GdkTexture *             gdk_dmabuf_texture_builder_get_update_texture (GdkDmabufTextureBuilder  *self) ;

void                     gdk_dmabuf_texture_builder_set_update_texture (GdkDmabufTextureBuilder  *self,
                                                                        GdkTexture               *texture);


cairo_region_t *         gdk_dmabuf_texture_builder_get_update_region (GdkDmabufTextureBuilder   *self) ;

void                     gdk_dmabuf_texture_builder_set_update_region (GdkDmabufTextureBuilder   *self,
                                                                       cairo_region_t            *region);


GdkTexture *             gdk_dmabuf_texture_builder_build            (GdkDmabufTextureBuilder    *self,
                                                                      GDestroyNotify              destroy,
                                                                      gpointer                    data,
                                                                      GError                    **error);



