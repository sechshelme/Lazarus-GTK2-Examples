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

#if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gsk/gsk.h> can be included directly."
#endif


#include <gsk/gsktypes.h>



#define GSK_TYPE_PATH_POINT (gsk_path_point_get_type ())

typedef struct _GskPathPoint GskPathPoint;

 struct _GskPathPoint
{
  /*< private >*/
  union {
    struct {
      gsize contour;
      gsize idx;
      float t;
    }aaaaa;
    gpointer padding[8];
    graphene_vec4_t alignment;
  }aaaaa;
};


GType                   gsk_path_point_get_type        (void) ;


GskPathPoint *          gsk_path_point_copy            (GskPathPoint       *point);


void                    gsk_path_point_free            (GskPathPoint       *point);


gboolean                gsk_path_point_equal           (const GskPathPoint *point1,
                                                        const GskPathPoint *point2) ;


int                     gsk_path_point_compare         (const GskPathPoint *point1,
                                                        const GskPathPoint *point2) ;


void                    gsk_path_point_get_position    (const GskPathPoint *point,
                                                        GskPath            *path,
                                                        graphene_point_t   *position);


void                    gsk_path_point_get_tangent     (const GskPathPoint *point,
                                                        GskPath            *path,
                                                        GskPathDirection    direction,
                                                        graphene_vec2_t    *tangent);


float                   gsk_path_point_get_rotation    (const GskPathPoint *point,
                                                        GskPath            *path,
                                                        GskPathDirection    direction);


float                   gsk_path_point_get_curvature   (const GskPathPoint *point,
                                                        GskPath            *path,
                                                        GskPathDirection    direction,
                                                        graphene_point_t   *center);


float                   gsk_path_point_get_distance    (const GskPathPoint *point,
                                                        GskPathMeasure     *measure);


