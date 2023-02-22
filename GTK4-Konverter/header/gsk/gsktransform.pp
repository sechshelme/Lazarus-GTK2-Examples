
  Type
  Pchar  = ^char;
  Pgraphene_matrix_t  = ^graphene_matrix_t;
  Pgraphene_point_t  = ^graphene_point_t;
  Pgraphene_rect_t  = ^graphene_rect_t;
  PGskTransform  = ^GskTransform;
  PGString  = ^GString;
  Psingle  = ^single;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
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
    }
{$ifndef __GSK_TRANSFORM_H__}
{$define __GSK_TRANSFORM_H__}  
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gskenums.h>}
{$include <gsk/gsktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GSK_TYPE_TRANSFORM : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gsk_transform_get_type:GType;

  { Zeile entfernt  }
  function gsk_transform_ref(self:PGskTransform):^GskTransform;

  { Zeile entfernt  }
  procedure gsk_transform_unref(self:PGskTransform);

  { Zeile entfernt  }
  procedure gsk_transform_print(self:PGskTransform; _string:PGString);

  { Zeile entfernt  }
  function gsk_transform_to_string(self:PGskTransform):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_transform_parse(_string:Pchar; out_transform:PPGskTransform):gboolean;

  { Zeile entfernt  }
  procedure gsk_transform_to_matrix(self:PGskTransform; out_matrix:Pgraphene_matrix_t);

  { Zeile entfernt  }
  procedure gsk_transform_to_2d(self:PGskTransform; out_xx:Psingle; out_yx:Psingle; out_xy:Psingle; out_yy:Psingle; 
              out_dx:Psingle; out_dy:Psingle);

  { Zeile entfernt  }
  procedure gsk_transform_to_2d_components(self:PGskTransform; out_skew_x:Psingle; out_skew_y:Psingle; out_scale_x:Psingle; out_scale_y:Psingle; 
              out_angle:Psingle; out_dx:Psingle; out_dy:Psingle);

  { Zeile entfernt  }
  procedure gsk_transform_to_affine(self:PGskTransform; out_scale_x:Psingle; out_scale_y:Psingle; out_dx:Psingle; out_dy:Psingle);

  { Zeile entfernt  }
  procedure gsk_transform_to_translate(self:PGskTransform; out_dx:Psingle; out_dy:Psingle);

  { Zeile entfernt  }
  function gsk_transform_get_category(self:PGskTransform):GskTransformCategory;

  { Zeile entfernt  }
  function gsk_transform_equal(first:PGskTransform; second:PGskTransform):gboolean;

  { Zeile entfernt  }
  function gsk_transform_new:^GskTransform;

  { Zeile entfernt  }
(* error 
                                                                 GskTransform                   *other) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)

    var
 : GskTransform;
  { Zeile entfernt  }
(* error 
GskTransform *          gsk_transform_invert                    (GskTransform                   *self) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 const graphene_matrix_t        *matrix) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 const graphene_point_t         *point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 const graphene_point3d_t       *point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* error 
                                                                 float                           skew_y) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* error 
                                                                 float                           angle) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 const graphene_vec3_t          *axis) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* error 
                                                                 float                           factor_y) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* error 
                                                                 float                           factor_z) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* error 
                                                                 float                           depth) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
  { Zeile entfernt  }
(* Const before type ignored *)

  procedure gsk_transform_transform_bounds(self:PGskTransform; rect:Pgraphene_rect_t; out_rect:Pgraphene_rect_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gsk_transform_transform_point(self:PGskTransform; point:Pgraphene_point_t; out_point:Pgraphene_point_t);

  { Zeile entfernt  }
{$endif}
  { __GSK_TRANSFORM_H__  }
  { was #define dname def_expr }
  function GSK_TYPE_TRANSFORM : longint; { return type might be wrong }
    begin
      GSK_TYPE_TRANSFORM:=gsk_transform_get_type;
    end;

  function gsk_transform_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_transform_ref(self:PGskTransform):PGskTransform;
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_unref(self:PGskTransform);
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_print(self:PGskTransform; _string:PGString);
  begin
    { You must implement this function }
  end;
  function gsk_transform_to_string(self:PGskTransform):Pchar;
  begin
    { You must implement this function }
  end;
  function gsk_transform_parse(_string:Pchar; out_transform:PPGskTransform):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_to_matrix(self:PGskTransform; out_matrix:Pgraphene_matrix_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_to_2d(self:PGskTransform; out_xx:Psingle; out_yx:Psingle; out_xy:Psingle; out_yy:Psingle; 
              out_dx:Psingle; out_dy:Psingle);
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_to_2d_components(self:PGskTransform; out_skew_x:Psingle; out_skew_y:Psingle; out_scale_x:Psingle; out_scale_y:Psingle; 
              out_angle:Psingle; out_dx:Psingle; out_dy:Psingle);
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_to_affine(self:PGskTransform; out_scale_x:Psingle; out_scale_y:Psingle; out_dx:Psingle; out_dy:Psingle);
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_to_translate(self:PGskTransform; out_dx:Psingle; out_dy:Psingle);
  begin
    { You must implement this function }
  end;
  function gsk_transform_get_category(self:PGskTransform):GskTransformCategory;
  begin
    { You must implement this function }
  end;
  function gsk_transform_equal(first:PGskTransform; second:PGskTransform):gboolean;
  begin
    { You must implement this function }
  end;
  function gsk_transform_new:PGskTransform;
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_transform_bounds(self:PGskTransform; rect:Pgraphene_rect_t; out_rect:Pgraphene_rect_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_transform_transform_point(self:PGskTransform; point:Pgraphene_point_t; out_point:Pgraphene_point_t);
  begin
    { You must implement this function }
  end;

