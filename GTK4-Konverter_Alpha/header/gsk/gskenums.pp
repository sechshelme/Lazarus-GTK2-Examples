
unit gskenums;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskenums.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskenums.h
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
PGskBlendMode  = ^GskBlendMode;
PGskCorner  = ^GskCorner;
PGskGLUniformType  = ^GskGLUniformType;
PGskRenderNodeType  = ^GskRenderNodeType;
PGskScalingFilter  = ^GskScalingFilter;
PGskSerializationError  = ^GskSerializationError;
PGskTransformCategory  = ^GskTransformCategory;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GSK_ENUMS_H__}
{$define __GSK_ENUMS_H__}
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}

type
  PGskRenderNodeType = ^TGskRenderNodeType;
  TGskRenderNodeType = (GSK_NOT_A_RENDER_NODE := 0,GSK_CONTAINER_NODE,
    GSK_CAIRO_NODE,GSK_COLOR_NODE,GSK_LINEAR_GRADIENT_NODE,
    GSK_REPEATING_LINEAR_GRADIENT_NODE,GSK_RADIAL_GRADIENT_NODE,
    GSK_REPEATING_RADIAL_GRADIENT_NODE,GSK_CONIC_GRADIENT_NODE,
    GSK_BORDER_NODE,GSK_TEXTURE_NODE,GSK_INSET_SHADOW_NODE,
    GSK_OUTSET_SHADOW_NODE,GSK_TRANSFORM_NODE,
    GSK_OPACITY_NODE,GSK_COLOR_MATRIX_NODE,
    GSK_REPEAT_NODE,GSK_CLIP_NODE,GSK_ROUNDED_CLIP_NODE,
    GSK_SHADOW_NODE,GSK_BLEND_NODE,GSK_CROSS_FADE_NODE,
    GSK_TEXT_NODE,GSK_BLUR_NODE,GSK_DEBUG_NODE,
    GSK_GL_SHADER_NODE);


  PGskScalingFilter = ^TGskScalingFilter;
  TGskScalingFilter = (GSK_SCALING_FILTER_LINEAR,GSK_SCALING_FILTER_NEAREST,
    GSK_SCALING_FILTER_TRILINEAR);


  PGskBlendMode = ^TGskBlendMode;
  TGskBlendMode = (GSK_BLEND_MODE_DEFAULT := 0,GSK_BLEND_MODE_MULTIPLY,
    GSK_BLEND_MODE_SCREEN,GSK_BLEND_MODE_OVERLAY,
    GSK_BLEND_MODE_DARKEN,GSK_BLEND_MODE_LIGHTEN,
    GSK_BLEND_MODE_COLOR_DODGE,GSK_BLEND_MODE_COLOR_BURN,
    GSK_BLEND_MODE_HARD_LIGHT,GSK_BLEND_MODE_SOFT_LIGHT,
    GSK_BLEND_MODE_DIFFERENCE,GSK_BLEND_MODE_EXCLUSION,
    GSK_BLEND_MODE_COLOR,GSK_BLEND_MODE_HUE,
    GSK_BLEND_MODE_SATURATION,GSK_BLEND_MODE_LUMINOSITY
    );


  PGskCorner = ^TGskCorner;
  TGskCorner = (GSK_CORNER_TOP_LEFT,GSK_CORNER_TOP_RIGHT,
    GSK_CORNER_BOTTOM_RIGHT,GSK_CORNER_BOTTOM_LEFT
    );


  PGskSerializationError = ^TGskSerializationError;
  TGskSerializationError = (GSK_SERIALIZATION_UNSUPPORTED_FORMAT,GSK_SERIALIZATION_UNSUPPORTED_VERSION,
    GSK_SERIALIZATION_INVALID_DATA);


  PGskTransformCategory = ^TGskTransformCategory;
  TGskTransformCategory = (GSK_TRANSFORM_CATEGORY_UNKNOWN,GSK_TRANSFORM_CATEGORY_ANY,
    GSK_TRANSFORM_CATEGORY_3D,GSK_TRANSFORM_CATEGORY_2D,
    GSK_TRANSFORM_CATEGORY_2D_AFFINE,GSK_TRANSFORM_CATEGORY_2D_TRANSLATE,
    GSK_TRANSFORM_CATEGORY_IDENTITY);


  PGskGLUniformType = ^TGskGLUniformType;
  TGskGLUniformType = (GSK_GL_UNIFORM_TYPE_NONE,GSK_GL_UNIFORM_TYPE_FLOAT,
    GSK_GL_UNIFORM_TYPE_INT,GSK_GL_UNIFORM_TYPE_UINT,
    GSK_GL_UNIFORM_TYPE_BOOL,GSK_GL_UNIFORM_TYPE_VEC2,
    GSK_GL_UNIFORM_TYPE_VEC3,GSK_GL_UNIFORM_TYPE_VEC4
    );
{$endif}


implementation


end.
