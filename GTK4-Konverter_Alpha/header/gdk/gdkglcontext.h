/* GDK - The GIMP Drawing Kit
 *
 * gdkglcontext.h: GL context abstraction
 * 
 * Copyright © 2014  Emmanuele Bassi
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

#ifndef __GDK_GL_CONTEXT_H__
#define __GDK_GL_CONTEXT_H__

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdkversionmacros.h>
#include <gdk/gdktypes.h>

/* Zeile entfernt */

/**
 * GdkGLAPI:
 * @GDK_GL_API_GL: The OpenGL API
 * @GDK_GL_API_GLES: The OpenGL ES API
 *
 * The list of the different APIs that GdkGLContext can potentially support.
 *
 * Since: 4.6
 */
typedef enum { /*< underscore_name=GDK_GL_API >*/
  GDK_GL_API_GL   = 1 << 0,
  GDK_GL_API_GLES = 1 << 1
} GdkGLAPI;

#define GDK_TYPE_GL_CONTEXT             (gdk_gl_context_get_type ())
#define GDK_GL_CONTEXT(obj)             (G_TYPE_CHECK_INSTANCE_CAST ((obj), GDK_TYPE_GL_CONTEXT, GdkGLContext))
#define GDK_IS_GL_CONTEXT(obj)          (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GDK_TYPE_GL_CONTEXT))

#define GDK_GL_ERROR       (gdk_gl_error_quark ())

/* Zeile entfernt */
GQuark gdk_gl_error_quark (void);

/* Zeile entfernt */
GType gdk_gl_context_get_type (void) ;

/* Zeile entfernt */
GdkDisplay *            gdk_gl_context_get_display              (GdkGLContext  *context);
/* Zeile entfernt */
GdkSurface *            gdk_gl_context_get_surface               (GdkGLContext  *context);
GDK_DEPRECATED_IN_4_4_FOR(gdk_gl_context_is_shared)
GdkGLContext *          gdk_gl_context_get_shared_context       (GdkGLContext  *context);
/* Zeile entfernt */
void                    gdk_gl_context_get_version              (GdkGLContext  *context,
                                                                 int           *major,
                                                                 int           *minor);
/* Zeile entfernt */
gboolean                gdk_gl_context_is_legacy                (GdkGLContext  *context);
/* Zeile entfernt */
gboolean                gdk_gl_context_is_shared                (GdkGLContext  *self,
                                                                 GdkGLContext  *other);

/* Zeile entfernt */
void                    gdk_gl_context_set_required_version     (GdkGLContext  *context,
                                                                 int            major,
                                                                 int            minor);
/* Zeile entfernt */
void                    gdk_gl_context_get_required_version     (GdkGLContext  *context,
                                                                 int           *major,
                                                                 int           *minor);
/* Zeile entfernt */
void                    gdk_gl_context_set_debug_enabled        (GdkGLContext  *context,
                                                                 gboolean       enabled);
/* Zeile entfernt */
gboolean                gdk_gl_context_get_debug_enabled        (GdkGLContext  *context);
/* Zeile entfernt */
void                    gdk_gl_context_set_forward_compatible   (GdkGLContext  *context,
                                                                 gboolean       compatible);
/* Zeile entfernt */
gboolean                gdk_gl_context_get_forward_compatible   (GdkGLContext  *context);
/* Zeile entfernt */
void                    gdk_gl_context_set_allowed_apis         (GdkGLContext  *self,
                                                                 GdkGLAPI       apis);
/* Zeile entfernt */
GdkGLAPI                gdk_gl_context_get_allowed_apis         (GdkGLContext  *self);
/* Zeile entfernt */
GdkGLAPI                gdk_gl_context_get_api                  (GdkGLContext  *self);
GDK_DEPRECATED_IN_4_6_FOR(gdk_gl_context_set_allowed_apis)
void                    gdk_gl_context_set_use_es               (GdkGLContext  *context,
                                                                 int            use_es);
/* Zeile entfernt */
gboolean                gdk_gl_context_get_use_es               (GdkGLContext  *context);

/* Zeile entfernt */
gboolean                gdk_gl_context_realize                  (GdkGLContext  *context,
                                                                 GError       **error);

/* Zeile entfernt */
void                    gdk_gl_context_make_current             (GdkGLContext  *context);
/* Zeile entfernt */
GdkGLContext *          gdk_gl_context_get_current              (void);
/* Zeile entfernt */
void                    gdk_gl_context_clear_current            (void);

/* Zeile entfernt */

#endif /* __GDK_GL_CONTEXT_H__ */
