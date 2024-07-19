/*
 * Copyright © 2019 Benjamin Otte
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

#if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gsk/gsk.h> can be included directly."
#endif

#include <gsk/gskenums.h>
#include <gsk/gsktypes.h>



#define GSK_TYPE_TRANSFORM (gsk_transform_get_type ())


GType                   gsk_transform_get_type                  (void) ;


GskTransform *          gsk_transform_ref                       (GskTransform                   *self);

void                    gsk_transform_unref                     (GskTransform                   *self);


void                    gsk_transform_print                     (GskTransform                   *self,
                                                                 GString                        *string);

char *                  gsk_transform_to_string                 (GskTransform                   *self);

gboolean                gsk_transform_parse                     (const char                     *string,
                                                                 GskTransform                  **out_transform);

void                    gsk_transform_to_matrix                 (GskTransform                   *self,
                                                                 graphene_matrix_t              *out_matrix);

void                    gsk_transform_to_2d                     (GskTransform                   *self,
                                                                 float                          *out_xx,
                                                                 float                          *out_yx,
                                                                 float                          *out_xy,
                                                                 float                          *out_yy,
                                                                 float                          *out_dx,
                                                                 float                          *out_dy);

void                    gsk_transform_to_2d_components          (GskTransform                   *self,
                                                                 float                          *out_skew_x,
                                                                 float                          *out_skew_y,
                                                                 float                          *out_scale_x,
                                                                 float                          *out_scale_y,
                                                                 float                          *out_angle,
                                                                 float                          *out_dx,
                                                                 float                          *out_dy);

void                    gsk_transform_to_affine                 (GskTransform                   *self,
                                                                 float                          *out_scale_x,
                                                                 float                          *out_scale_y,
                                                                 float                          *out_dx,
                                                                 float                          *out_dy);

void                    gsk_transform_to_translate              (GskTransform                   *self,
                                                                 float                          *out_dx,
                                                                 float                          *out_dy);


GskTransformCategory    gsk_transform_get_category              (GskTransform                   *self) ;

gboolean                gsk_transform_equal                     (GskTransform                   *first,
                                                                 GskTransform                   *second) ;


GskTransform *          gsk_transform_new                       (void);

GskTransform *          gsk_transform_transform                 (GskTransform                   *next,
                                                                 GskTransform                   *other) ;

GskTransform *          gsk_transform_invert                    (GskTransform                   *self) ;

GskTransform *          gsk_transform_matrix                    (GskTransform                   *next,
                                                                 const graphene_matrix_t        *matrix) ;

GskTransform *          gsk_transform_translate                 (GskTransform                   *next,
                                                                 const graphene_point_t         *point) ;

GskTransform *          gsk_transform_translate_3d              (GskTransform                   *next,
                                                                 const graphene_point3d_t       *point) ;

GskTransform *          gsk_transform_skew                      (GskTransform                   *next,
                                                                 float                           skew_x,
                                                                 float                           skew_y) ;

GskTransform *          gsk_transform_rotate                    (GskTransform                   *next,
                                                                 float                           angle) ;

GskTransform *          gsk_transform_rotate_3d                 (GskTransform                   *next,
                                                                 float                           angle,
                                                                 const graphene_vec3_t          *axis) ;

GskTransform *          gsk_transform_scale                     (GskTransform                   *next,
                                                                 float                           factor_x,
                                                                 float                           factor_y) ;

GskTransform *          gsk_transform_scale_3d                  (GskTransform                   *next,
                                                                 float                           factor_x,
                                                                 float                           factor_y,
                                                                 float                           factor_z) ;

GskTransform *          gsk_transform_perspective               (GskTransform                   *next,
                                                                 float                           depth) ;


void                    gsk_transform_transform_bounds          (GskTransform                   *self,
                                                                 const graphene_rect_t          *rect,
                                                                 graphene_rect_t                *out_rect);

void                    gsk_transform_transform_point           (GskTransform                   *self,
                                                                 const graphene_point_t          *point,
                                                                 graphene_point_t                *out_point);





