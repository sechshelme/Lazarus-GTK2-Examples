/* gdktexture.h
 *
 * Copyright 2016  Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>
#include <gdk-pixbuf/gdk-pixbuf.h>



#define GDK_TYPE_TEXTURE (gdk_texture_get_type ())

#define GDK_TEXTURE(obj)               (G_TYPE_CHECK_INSTANCE_CAST ((obj), GDK_TYPE_TEXTURE, GdkTexture))
#define GDK_IS_TEXTURE(obj)            (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GDK_TYPE_TEXTURE))

typedef struct _GdkTextureClass        GdkTextureClass;

#define GDK_TEXTURE_ERROR       (gdk_texture_error_quark ())


GQuark gdk_texture_error_quark (void);

/**
 * GdkTextureError:
 * @GDK_TEXTURE_ERROR_TOO_LARGE: Not enough memory to handle this image
 * @GDK_TEXTURE_ERROR_CORRUPT_IMAGE: The image data appears corrupted
 * @GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT: The image contains features
 *   that cannot be loaded
 * @GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT: The image format is not supported
 *
 * Possible errors that can be returned by `GdkTexture` constructors.
 *
 * Since: 4.6
 */
typedef enum
{
  GDK_TEXTURE_ERROR_TOO_LARGE,
  GDK_TEXTURE_ERROR_CORRUPT_IMAGE,
  GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT,
  GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT,
} GdkTextureError;


GType                   gdk_texture_get_type                   (void) ;


GdkTexture *            gdk_texture_new_for_pixbuf             (GdkPixbuf       *pixbuf);

GdkTexture *            gdk_texture_new_from_resource          (const char      *resource_path);

GdkTexture *            gdk_texture_new_from_file              (GFile           *file,
                                                                GError         **error);

GdkTexture *            gdk_texture_new_from_filename          (const char      *path,
                                                                GError         **error);

GdkTexture *            gdk_texture_new_from_bytes             (GBytes          *bytes,
                                                                GError         **error);


int                     gdk_texture_get_width                  (GdkTexture      *texture) ;

int                     gdk_texture_get_height                 (GdkTexture      *texture) ;

GdkMemoryFormat         gdk_texture_get_format                 (GdkTexture      *self) ;


void                    gdk_texture_download                   (GdkTexture      *texture,
                                                                guchar          *data,
                                                                gsize            stride);

gboolean                gdk_texture_save_to_png                (GdkTexture      *texture,
                                                                const char      *filename);

GBytes *                gdk_texture_save_to_png_bytes          (GdkTexture      *texture);

gboolean                gdk_texture_save_to_tiff               (GdkTexture      *texture,
                                                                const char      *filename);

GBytes *                gdk_texture_save_to_tiff_bytes         (GdkTexture      *texture);





