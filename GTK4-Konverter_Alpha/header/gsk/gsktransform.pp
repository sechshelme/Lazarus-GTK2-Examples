
unit gsktransform;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gsktransform.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gsktransform.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

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



{$ifndef __GSK_TRANSFORM_H__}
{$define __GSK_TRANSFORM_H__}
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gskenums.h>}
{$include <gsk/gsktypes.h>}


function GSK_TYPE_TRANSFORM : longint; { return type might be wrong }


function gsk_transform_get_type:TGType;cdecl;external;

function gsk_transform_ref(self:PGskTransform):PGskTransform;cdecl;external;

procedure gsk_transform_unref(self:PGskTransform);cdecl;external;

procedure gsk_transform_print(self:PGskTransform; _string:PGString);cdecl;external;

function gsk_transform_to_string(self:PGskTransform):Pchar;cdecl;external;

function gsk_transform_parse(_string:Pchar; out_transform:PPGskTransform):Tgboolean;cdecl;external;

procedure gsk_transform_to_matrix(self:PGskTransform; out_matrix:Pgraphene_matrix_t);cdecl;external;

procedure gsk_transform_to_2d(self:PGskTransform; out_xx:Psingle; out_yx:Psingle; out_xy:Psingle; out_yy:Psingle; 
            out_dx:Psingle; out_dy:Psingle);cdecl;external;

procedure gsk_transform_to_2d_components(self:PGskTransform; out_skew_x:Psingle; out_skew_y:Psingle; out_scale_x:Psingle; out_scale_y:Psingle; 
            out_angle:Psingle; out_dx:Psingle; out_dy:Psingle);cdecl;external;

procedure gsk_transform_to_affine(self:PGskTransform; out_scale_x:Psingle; out_scale_y:Psingle; out_dx:Psingle; out_dy:Psingle);cdecl;external;

procedure gsk_transform_to_translate(self:PGskTransform; out_dx:Psingle; out_dy:Psingle);cdecl;external;

function gsk_transform_get_category(self:PGskTransform):TGskTransformCategory;cdecl;external;

function gsk_transform_equal(first:PGskTransform; second:PGskTransform):Tgboolean;cdecl;external;

function gsk_transform_new:PGskTransform;cdecl;external;

(* error 
                                                                 GskTransform                   *other) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
  var
 : TGskTransform;

(* error 
GskTransform *          gsk_transform_invert                    (GskTransform                   *self) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 const graphene_matrix_t        *matrix) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 const graphene_point_t         *point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 const graphene_point3d_t       *point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 float                           skew_y) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 float                           angle) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 const graphene_vec3_t          *axis) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 float                           factor_y) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 float                           factor_z) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;

(* error 
                                                                 float                           depth) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGskTransform;


procedure gsk_transform_transform_bounds(self:PGskTransform; rect:Pgraphene_rect_t; out_rect:Pgraphene_rect_t);cdecl;external;

procedure gsk_transform_transform_point(self:PGskTransform; point:Pgraphene_point_t; out_point:Pgraphene_point_t);cdecl;external;

{$endif}


implementation

function GSK_TYPE_TRANSFORM : longint; { return type might be wrong }
  begin
    GSK_TYPE_TRANSFORM:=gsk_transform_get_type;
  end;


end.
