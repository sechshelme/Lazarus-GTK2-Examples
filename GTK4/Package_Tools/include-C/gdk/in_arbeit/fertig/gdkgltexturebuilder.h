/*
 * Copyright © 2023 Benjamin Otte
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
 * Authors: Benjamin Otte <otte@gnome.org>
 */

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_GL_TEXTURE_BUILDER (gdk_gl_texture_builder_get_type ())

//GDK_DECLARE_INTERNAL_TYPE (GdkGLTextureBuilder, gdk_gl_texture_builder, GDK, GL_TEXTURE_BUILDER, GObject)


GdkGLTextureBuilder *   gdk_gl_texture_builder_new              (void);


GdkGLContext *          gdk_gl_texture_builder_get_context      (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_context      (GdkGLTextureBuilder    *self,
                                                                 GdkGLContext           *context);


guint                   gdk_gl_texture_builder_get_id           (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_id           (GdkGLTextureBuilder    *self,
                                                                 guint                   id);


int                     gdk_gl_texture_builder_get_width        (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_width        (GdkGLTextureBuilder    *self,
                                                                 int                     width);


int                     gdk_gl_texture_builder_get_height       (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_height       (GdkGLTextureBuilder    *self,
                                                                 int                     height);


GdkMemoryFormat         gdk_gl_texture_builder_get_format       (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_format       (GdkGLTextureBuilder    *self,
                                                                 GdkMemoryFormat         format);


gboolean                gdk_gl_texture_builder_get_has_mipmap   (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_has_mipmap   (GdkGLTextureBuilder    *self,
                                                                 gboolean                has_mipmap);


gpointer                gdk_gl_texture_builder_get_sync         (GdkGLTextureBuilder    *self) ;

void                    gdk_gl_texture_builder_set_sync         (GdkGLTextureBuilder    *self,
                                                                 gpointer                sync);


GdkTexture *            gdk_gl_texture_builder_get_update_texture (GdkGLTextureBuilder  *self) ;

void                    gdk_gl_texture_builder_set_update_texture (GdkGLTextureBuilder  *self,
                                                                 GdkTexture             *texture);


cairo_region_t *        gdk_gl_texture_builder_get_update_region (GdkGLTextureBuilder   *self) ;

void                    gdk_gl_texture_builder_set_update_region (GdkGLTextureBuilder   *self,
                                                                 cairo_region_t         *region);


GdkTexture *            gdk_gl_texture_builder_build            (GdkGLTextureBuilder    *self,
                                                                 GDestroyNotify          destroy,
                                                                 gpointer                data);



