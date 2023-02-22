
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

  { was #define dname def_expr }
  function GSK_TYPE_TRANSFORM : longint; { return type might be wrong }

(* error 
GType                   gsk_transform_get_type                  (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gsk_transform_ref(self:PGskTransform):^GskTransform;

  procedure gsk_transform_unref(self:PGskTransform);

  procedure gsk_transform_print(self:PGskTransform; _string:PGString);

  function gsk_transform_to_string(self:PGskTransform):^char;

(* Const before type ignored *)
  function gsk_transform_parse(_string:Pchar; out_transform:PPGskTransform):gboolean;

  procedure gsk_transform_to_matrix(self:PGskTransform; out_matrix:Pgraphene_matrix_t);

  procedure gsk_transform_to_2d(self:PGskTransform; out_xx:Psingle; out_yx:Psingle; out_xy:Psingle; out_yy:Psingle; 
              out_dx:Psingle; out_dy:Psingle);

(* error 
void                    gsk_transform_to_2d_components          (GskTransform                   *self,
in declaration at line 70 *)
    procedure gsk_transform_to_affine(self:PGskTransform; out_scale_x:Psingle; out_scale_y:Psingle; out_dx:Psingle; out_dy:Psingle);

    procedure gsk_transform_to_translate(self:PGskTransform; out_dx:Psingle; out_dy:Psingle);

(* error 
GskTransformCategory    gsk_transform_get_category              (GskTransform                   *self) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskTransformCategory;
(* error 
                                                                 GskTransform                   *second) G_GNUC_PURE;
 in declarator_list *)
 : gboolean;

    function gsk_transform_new:^GskTransform;

(* error 
                                                                 GskTransform                   *other) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)

      var
 : GskTransform;
(* error 
GskTransform *          gsk_transform_invert                    (GskTransform                   *self) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* Const before type ignored *)
(* error 
                                                                 const graphene_matrix_t        *matrix) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* Const before type ignored *)
(* error 
                                                                 const graphene_point_t         *point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* Const before type ignored *)
(* error 
                                                                 const graphene_point3d_t       *point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* error 
GskTransform *          gsk_transform_skew                      (GskTransform                   *next,
(* error 
                                                                 float                           skew_x,
(* error 
                                                                 float                           skew_y) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
                                                                 float                           angle) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* Const before type ignored *)
(* error 
                                                                 const graphene_vec3_t          *axis) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* error 
                                                                 float                           factor_y) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* error 
                                                                 float                           factor_z) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* error 
                                                                 float                           depth) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GskTransform;
(* Const before type ignored *)

    procedure gsk_transform_transform_bounds(self:PGskTransform; rect:Pgraphene_rect_t; out_rect:Pgraphene_rect_t);

(* Const before type ignored *)
    procedure gsk_transform_transform_point(self:PGskTransform; point:Pgraphene_point_t; out_point:Pgraphene_point_t);

{$endif}
    { __GSK_TRANSFORM_H__  }
  { was #define dname def_expr }
  function GSK_TYPE_TRANSFORM : longint; { return type might be wrong }
    begin
      GSK_TYPE_TRANSFORM:=gsk_transform_get_type;
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
    procedure gsk_transform_to_affine(self:PGskTransform; out_scale_x:Psingle; out_scale_y:Psingle; out_dx:Psingle; out_dy:Psingle);
    begin
      { You must implement this function }
    end;
    procedure gsk_transform_to_translate(self:PGskTransform; out_dx:Psingle; out_dy:Psingle);
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

