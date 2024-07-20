/* GTK - The GIMP Toolkit
 * Copyright (C) 2016 Benjamin Otte <otte@gnome.org>
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

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gsk/gsk.h>

#include <gtk/gtktypes.h>



typedef struct _GtkSnapshotClass       GtkSnapshotClass;

#define GTK_TYPE_SNAPSHOT               (gtk_snapshot_get_type ())

#define GTK_SNAPSHOT(obj)               (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_SNAPSHOT, GtkSnapshot))
#define GTK_IS_SNAPSHOT(obj)            (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_SNAPSHOT))






GType           gtk_snapshot_get_type                   (void) ;


GtkSnapshot *   gtk_snapshot_new                        (void);

GskRenderNode * gtk_snapshot_free_to_node               (GtkSnapshot            *snapshot);

GdkPaintable *  gtk_snapshot_free_to_paintable          (GtkSnapshot            *snapshot,
                                                         const graphene_size_t  *size);


GskRenderNode * gtk_snapshot_to_node                    (GtkSnapshot            *snapshot);

GdkPaintable *  gtk_snapshot_to_paintable               (GtkSnapshot            *snapshot,
                                                         const graphene_size_t  *size);


void            gtk_snapshot_push_debug                 (GtkSnapshot            *snapshot,
                                                         const char             *message,
                                                         ...);

void            gtk_snapshot_push_opacity               (GtkSnapshot            *snapshot,
                                                         double                  opacity);

void            gtk_snapshot_push_blur                  (GtkSnapshot            *snapshot,
                                                         double                  radius);

void            gtk_snapshot_push_color_matrix          (GtkSnapshot            *snapshot,
                                                         const graphene_matrix_t*color_matrix,
                                                         const graphene_vec4_t  *color_offset);

void            gtk_snapshot_push_repeat                (GtkSnapshot            *snapshot,
                                                         const graphene_rect_t  *bounds,
                                                         const graphene_rect_t  *child_bounds);

void            gtk_snapshot_push_clip                  (GtkSnapshot            *snapshot,
                                                         const graphene_rect_t  *bounds);

void            gtk_snapshot_push_rounded_clip          (GtkSnapshot            *snapshot,
                                                         const GskRoundedRect   *bounds);

void            gtk_snapshot_push_fill                  (GtkSnapshot            *snapshot,
                                                         GskPath                *path,
                                                         GskFillRule             fill_rule);

void            gtk_snapshot_push_stroke                (GtkSnapshot            *snapshot,
                                                         GskPath                *path,
                                                         const GskStroke        *stroke);

void            gtk_snapshot_push_shadow                (GtkSnapshot            *snapshot,
                                                         const GskShadow        *shadow,
                                                         gsize                   n_shadows);

void            gtk_snapshot_push_blend                 (GtkSnapshot            *snapshot,
                                                         GskBlendMode            blend_mode);

void            gtk_snapshot_push_mask                  (GtkSnapshot            *snapshot,
                                                         GskMaskMode             mask_mode);


void            gtk_snapshot_push_cross_fade            (GtkSnapshot            *snapshot,
                                                         double                  progress);

void            gtk_snapshot_push_gl_shader             (GtkSnapshot            *snapshot,
                                                         GskGLShader            *shader,
                                                         const graphene_rect_t  *bounds,
                                                         GBytes                 *take_args);

void           gtk_snapshot_gl_shader_pop_texture       (GtkSnapshot            *snapshot);

void            gtk_snapshot_pop                        (GtkSnapshot            *snapshot);

void            gtk_snapshot_save                       (GtkSnapshot            *snapshot);

void            gtk_snapshot_restore                    (GtkSnapshot            *snapshot);

void            gtk_snapshot_transform                  (GtkSnapshot            *snapshot,
                                                         GskTransform           *transform);

void            gtk_snapshot_transform_matrix           (GtkSnapshot            *snapshot,
                                                         const graphene_matrix_t*matrix);

void            gtk_snapshot_translate                  (GtkSnapshot            *snapshot,
                                                         const graphene_point_t *point);

void            gtk_snapshot_translate_3d               (GtkSnapshot            *snapshot,
                                                         const graphene_point3d_t*point);

void            gtk_snapshot_rotate                     (GtkSnapshot            *snapshot,
                                                         float                  angle);

void            gtk_snapshot_rotate_3d                  (GtkSnapshot            *snapshot,
                                                         float                   angle,
                                                         const graphene_vec3_t  *axis);

void            gtk_snapshot_scale                      (GtkSnapshot            *snapshot,
                                                         float                   factor_x,
                                                         float                   factor_y);

void            gtk_snapshot_scale_3d                   (GtkSnapshot            *snapshot,
                                                         float                   factor_x,
                                                         float                   factor_y,
                                                         float                   factor_z);

void            gtk_snapshot_perspective                (GtkSnapshot            *snapshot,
                                                         float                   depth);

void            gtk_snapshot_append_node                (GtkSnapshot            *snapshot,
                                                         GskRenderNode          *node);

cairo_t *       gtk_snapshot_append_cairo               (GtkSnapshot            *snapshot,
                                                         const graphene_rect_t  *bounds);

void            gtk_snapshot_append_texture             (GtkSnapshot            *snapshot,
                                                         GdkTexture             *texture,
                                                         const graphene_rect_t  *bounds);

void            gtk_snapshot_append_scaled_texture      (GtkSnapshot            *snapshot,
                                                         GdkTexture             *texture,
                                                         GskScalingFilter        filter,
                                                         const graphene_rect_t  *bounds);

void            gtk_snapshot_append_color               (GtkSnapshot            *snapshot,
                                                         const GdkRGBA          *color,
                                                         const graphene_rect_t  *bounds);

void            gtk_snapshot_append_linear_gradient     (GtkSnapshot            *snapshot,
                                                         const graphene_rect_t  *bounds,
                                                         const graphene_point_t *start_point,
                                                         const graphene_point_t *end_point,
                                                         const GskColorStop     *stops,
                                                         gsize                   n_stops);

void            gtk_snapshot_append_repeating_linear_gradient (GtkSnapshot            *snapshot,
                                                               const graphene_rect_t  *bounds,
                                                               const graphene_point_t *start_point,
                                                               const graphene_point_t *end_point,
                                                               const GskColorStop     *stops,
                                                               gsize                   n_stops);

void            gtk_snapshot_append_radial_gradient     (GtkSnapshot            *snapshot,
                                                         const graphene_rect_t  *bounds,
                                                         const graphene_point_t *center,
                                                         float                   hradius,
                                                         float                   vradius,
                                                         float                   start,
                                                         float                   end,
                                                         const GskColorStop     *stops,
                                                         gsize                   n_stops);

void            gtk_snapshot_append_repeating_radial_gradient (GtkSnapshot            *snapshot,
                                                               const graphene_rect_t  *bounds,
                                                               const graphene_point_t *center,
                                                               float                   hradius,
                                                               float                   vradius,
                                                               float                   start,
                                                               float                   end,
                                                               const GskColorStop     *stops,
                                                               gsize                   n_stops);

void            gtk_snapshot_append_conic_gradient      (GtkSnapshot            *snapshot,
                                                         const graphene_rect_t  *bounds,
                                                         const graphene_point_t *center,
                                                         float                   rotation,
                                                         const GskColorStop     *stops,
                                                         gsize                   n_stops);

void            gtk_snapshot_append_border              (GtkSnapshot            *snapshot,
                                                         const GskRoundedRect   *outline,
                                                         const float             border_width[4],
                                                         const GdkRGBA           border_color[4]);

void            gtk_snapshot_append_inset_shadow        (GtkSnapshot            *snapshot,
                                                         const GskRoundedRect   *outline,
                                                         const GdkRGBA          *color,
                                                         float                   dx,
                                                         float                   dy,
                                                         float                   spread,
                                                         float                   blur_radius);

void            gtk_snapshot_append_outset_shadow       (GtkSnapshot            *snapshot,
                                                         const GskRoundedRect   *outline,
                                                         const GdkRGBA          *color,
                                                         float                   dx,
                                                         float                   dy,
                                                         float                   spread,
                                                         float                   blur_radius);
/* next function implemented in gskpango.c */

void            gtk_snapshot_append_layout              (GtkSnapshot            *snapshot,
                                                         PangoLayout            *layout,
                                                         const GdkRGBA          *color);


void            gtk_snapshot_append_fill                (GtkSnapshot            *snapshot,
                                                         GskPath                *path,
                                                         GskFillRule             fill_rule,
                                                         const GdkRGBA          *color);

void            gtk_snapshot_append_stroke              (GtkSnapshot            *snapshot,
                                                         GskPath                *path,
                                                         const GskStroke        *stroke,
                                                         const GdkRGBA          *color);



