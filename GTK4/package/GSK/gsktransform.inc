/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGskTransform = record
  end;
  PGskTransform = ^TGskTransform;
  PPGskTransform = ^PGskTransform;

function gsk_transform_get_type: TGType; cdecl; external gtklib;
function gsk_transform_ref(self: PGskTransform): PGskTransform; cdecl; external gtklib;
procedure gsk_transform_unref(self: PGskTransform); cdecl; external gtklib;
procedure gsk_transform_print(self: PGskTransform; _string: PGString); cdecl; external gtklib;
function gsk_transform_to_string(self: PGskTransform): PChar; cdecl; external gtklib;
function gsk_transform_parse(_string: PChar; out_transform: PPGskTransform): Tgboolean; cdecl; external gtklib;
procedure gsk_transform_to_matrix(self: PGskTransform; out_matrix: Pgraphene_matrix_t); cdecl; external gtklib;
procedure gsk_transform_to_2d(self: PGskTransform; out_xx: Psingle; out_yx: Psingle; out_xy: Psingle; out_yy: Psingle;
  out_dx: Psingle; out_dy: Psingle); cdecl; external gtklib;
procedure gsk_transform_to_2d_components(self: PGskTransform; out_skew_x: Psingle; out_skew_y: Psingle; out_scale_x: Psingle; out_scale_y: Psingle;
  out_angle: Psingle; out_dx: Psingle; out_dy: Psingle); cdecl; external gtklib;
procedure gsk_transform_to_affine(self: PGskTransform; out_scale_x: Psingle; out_scale_y: Psingle; out_dx: Psingle; out_dy: Psingle); cdecl; external gtklib;
procedure gsk_transform_to_translate(self: PGskTransform; out_dx: Psingle; out_dy: Psingle); cdecl; external gtklib;
function gsk_transform_get_category(self: PGskTransform): TGskTransformCategory; cdecl; external gtklib;
function gsk_transform_equal(First: PGskTransform; second: PGskTransform): Tgboolean; cdecl; external gtklib;
function gsk_transform_new: PGskTransform; cdecl; external gtklib;
function gsk_transform_transform(Next: PGskTransform; other: PGskTransform): PGskTransform; cdecl; external gtklib;
function gsk_transform_invert(self: PGskTransform): PGskTransform; cdecl; external gtklib;
function gsk_transform_matrix(Next: PGskTransform; matrix: Pgraphene_matrix_t): PGskTransform; cdecl; external gtklib;
function gsk_transform_translate(Next: PGskTransform; point: Pgraphene_point_t): PGskTransform; cdecl; external gtklib;
function gsk_transform_translate_3d(Next: PGskTransform; point: Pgraphene_point3d_t): PGskTransform; cdecl; external gtklib;
function gsk_transform_skew(Next: PGskTransform; skew_x: single; skew_y: single): PGskTransform; cdecl; external gtklib;
function gsk_transform_rotate(Next: PGskTransform; angle: single): PGskTransform; cdecl; external gtklib;
function gsk_transform_rotate_3d(Next: PGskTransform; angle: single; axis: Pgraphene_vec3_t): PGskTransform; cdecl; external gtklib;
function gsk_transform_scale(Next: PGskTransform; factor_x: single; factor_y: single): PGskTransform; cdecl; external gtklib;
function gsk_transform_scale_3d(Next: PGskTransform; factor_x: single; factor_y: single; factor_z: single): PGskTransform; cdecl; external gtklib;
function gsk_transform_perspective(Next: PGskTransform; depth: single): PGskTransform; cdecl; external gtklib;
procedure gsk_transform_transform_bounds(self: PGskTransform; rect: Pgraphene_rect_t; out_rect: Pgraphene_rect_t); cdecl; external gtklib;
procedure gsk_transform_transform_point(self: PGskTransform; point: Pgraphene_point_t; out_point: Pgraphene_point_t); cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:59:05 ===

function GSK_TYPE_TRANSFORM: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GSK_TYPE_TRANSFORM: TGType;
begin
  GSK_TYPE_TRANSFORM := gsk_transform_get_type;
end;



{$ENDIF read_implementation}
