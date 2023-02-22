/* GSK - The GTK Scene Kit
 *
 * Copyright 2016  Endless
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

#ifndef __GSK_RENDERER_H__
#define __GSK_RENDERER_H__

#if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gsk/gsk.h> can be included directly."
#endif

#include <gsk/gsktypes.h>
#include <gsk/gskrendernode.h>

/* Zeile entfernt */

#define GSK_TYPE_RENDERER (gsk_renderer_get_type ())

#define GSK_RENDERER(obj)               (G_TYPE_CHECK_INSTANCE_CAST ((obj), GSK_TYPE_RENDERER, GskRenderer))
#define GSK_IS_RENDERER(obj)            (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GSK_TYPE_RENDERER))

typedef struct _GskRendererClass        GskRendererClass;

/* Zeile entfernt */
GType gsk_renderer_get_type (void) ;

/* Zeile entfernt */
GskRenderer *           gsk_renderer_new_for_surface            (GdkSurface               *surface);

/* Zeile entfernt */
GdkSurface *            gsk_renderer_get_surface                (GskRenderer             *renderer);

/* Zeile entfernt */
gboolean                gsk_renderer_realize                    (GskRenderer             *renderer,
                                                                 GdkSurface              *surface,
                                                                 GError                 **error);
/* Zeile entfernt */
void                    gsk_renderer_unrealize                  (GskRenderer             *renderer);
/* Zeile entfernt */
gboolean                gsk_renderer_is_realized                (GskRenderer             *renderer);

/* Zeile entfernt */
GdkTexture *            gsk_renderer_render_texture             (GskRenderer             *renderer,
                                                                 GskRenderNode           *root,
                                                                 const graphene_rect_t   *viewport);

/* Zeile entfernt */
void                    gsk_renderer_render                     (GskRenderer             *renderer,
                                                                 GskRenderNode           *root,
                                                                 const cairo_region_t    *region);

/* Zeile entfernt */

#endif /* __GSK_RENDERER_H__ */
