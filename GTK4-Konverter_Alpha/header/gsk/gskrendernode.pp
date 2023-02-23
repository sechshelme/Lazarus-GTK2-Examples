
unit gskrendernode;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskrendernode.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskrendernode.h
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
Pcairo_surface_t  = ^cairo_surface_t;
Pcairo_t  = ^cairo_t;
Pchar  = ^char;
PGBytes  = ^GBytes;
PGdkRGBA  = ^GdkRGBA;
PGdkTexture  = ^GdkTexture;
PGError  = ^GError;
Pgraphene_matrix_t  = ^graphene_matrix_t;
Pgraphene_point_t  = ^graphene_point_t;
Pgraphene_rect_t  = ^graphene_rect_t;
Pgraphene_vec4_t  = ^graphene_vec4_t;
Pgsize  = ^gsize;
PGskColorStop  = ^GskColorStop;
PGskGLShader  = ^GskGLShader;
PGskParseLocation  = ^GskParseLocation;
PGskRenderNode  = ^GskRenderNode;
PGskRoundedRect  = ^GskRoundedRect;
PGskShadow  = ^GskShadow;
PGskTransform  = ^GskTransform;
Pguint  = ^guint;
PGValue  = ^GValue;
PPangoFont  = ^PangoFont;
PPangoGlyphInfo  = ^PangoGlyphInfo;
PPangoGlyphString  = ^PangoGlyphString;
Psingle  = ^single;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GSK_RENDER_NODE_H__}
{$define __GSK_RENDER_NODE_H__}
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gskroundedrect.h>}
{$include <gsk/gsktypes.h>}
{$include <gsk/gskglshader.h>}
{$include <gtk/css/gtkcss.h>}


function GSK_TYPE_RENDER_NODE : longint; { return type might be wrong }

function GSK_IS_RENDER_NODE(obj : longint) : longint;

function GSK_SERIALIZATION_ERROR : longint; { return type might be wrong }

type

  PGskColorStop = ^TGskColorStop;
  TGskColorStop = record
      offset : single;
      color : TGdkRGBA;
    end;


  PGskShadow = ^TGskShadow;
  TGskShadow = record
      color : TGdkRGBA;
      dx : single;
      dy : single;
      radius : single;
    end;


  PGskParseLocation = ^TGskParseLocation;
  TGskParseLocation = record
      bytes : Tgsize;
      chars : Tgsize;
      lines : Tgsize;
      line_bytes : Tgsize;
      line_chars : Tgsize;
    end;



  TGskParseErrorFunc = procedure (start:PGskParseLocation; end:PGskParseLocation; error:PGError; user_data:Tgpointer);cdecl;


function gsk_render_node_get_type:TGType;cdecl;external;

function gsk_serialization_error_quark:TGQuark;cdecl;external;

function gsk_render_node_ref(node:PGskRenderNode):PGskRenderNode;cdecl;external;

procedure gsk_render_node_unref(node:PGskRenderNode);cdecl;external;

function gsk_render_node_get_node_type(node:PGskRenderNode):TGskRenderNodeType;cdecl;external;

procedure gsk_render_node_get_bounds(node:PGskRenderNode; bounds:Pgraphene_rect_t);cdecl;external;

procedure gsk_render_node_draw(node:PGskRenderNode; cr:Pcairo_t);cdecl;external;

function gsk_render_node_serialize(node:PGskRenderNode):PGBytes;cdecl;external;

function gsk_render_node_write_to_file(node:PGskRenderNode; filename:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gsk_render_node_deserialize(bytes:PGBytes; error_func:TGskParseErrorFunc; user_data:Tgpointer):PGskRenderNode;cdecl;external;
function GSK_TYPE_DEBUG_NODE : longint; { return type might be wrong }

function GSK_TYPE_COLOR_NODE : longint; { return type might be wrong }

function GSK_TYPE_TEXTURE_NODE : longint; { return type might be wrong }

function GSK_TYPE_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }

function GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }

function GSK_TYPE_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }

function GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }

function GSK_TYPE_CONIC_GRADIENT_NODE : longint; { return type might be wrong }

function GSK_TYPE_BORDER_NODE : longint; { return type might be wrong }

function GSK_TYPE_INSET_SHADOW_NODE : longint; { return type might be wrong }

function GSK_TYPE_OUTSET_SHADOW_NODE : longint; { return type might be wrong }

function GSK_TYPE_CAIRO_NODE : longint; { return type might be wrong }

function GSK_TYPE_CONTAINER_NODE : longint; { return type might be wrong }

function GSK_TYPE_TRANSFORM_NODE : longint; { return type might be wrong }

function GSK_TYPE_OPACITY_NODE : longint; { return type might be wrong }

function GSK_TYPE_COLOR_MATRIX_NODE : longint; { return type might be wrong }

function GSK_TYPE_REPEAT_NODE : longint; { return type might be wrong }

function GSK_TYPE_CLIP_NODE : longint; { return type might be wrong }

function GSK_TYPE_ROUNDED_CLIP_NODE : longint; { return type might be wrong }

function GSK_TYPE_SHADOW_NODE : longint; { return type might be wrong }

function GSK_TYPE_BLEND_NODE : longint; { return type might be wrong }

function GSK_TYPE_CROSS_FADE_NODE : longint; { return type might be wrong }

function GSK_TYPE_TEXT_NODE : longint; { return type might be wrong }

function GSK_TYPE_BLUR_NODE : longint; { return type might be wrong }

function GSK_TYPE_GL_SHADER_NODE : longint; { return type might be wrong }

type


function gsk_debug_node_get_type:TGType;cdecl;external;

function gsk_debug_node_new(child:PGskRenderNode; message:Pchar):PGskRenderNode;cdecl;external;

function gsk_debug_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_debug_node_get_message(node:PGskRenderNode):Pchar;cdecl;external;

function gsk_color_node_get_type:TGType;cdecl;external;

function gsk_color_node_new(rgba:PGdkRGBA; bounds:Pgraphene_rect_t):PGskRenderNode;cdecl;external;

function gsk_color_node_get_color(node:PGskRenderNode):PGdkRGBA;cdecl;external;

function gsk_texture_node_get_type:TGType;cdecl;external;

function gsk_texture_node_new(texture:PGdkTexture; bounds:Pgraphene_rect_t):PGskRenderNode;cdecl;external;

function gsk_texture_node_get_texture(node:PGskRenderNode):PGdkTexture;cdecl;external;

function gsk_linear_gradient_node_get_type:TGType;cdecl;external;

function gsk_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:Tgsize):PGskRenderNode;cdecl;external;

function gsk_linear_gradient_node_get_start(node:PGskRenderNode):Pgraphene_point_t;cdecl;external;

function gsk_linear_gradient_node_get_end(node:PGskRenderNode):Pgraphene_point_t;cdecl;external;

function gsk_linear_gradient_node_get_n_color_stops(node:PGskRenderNode):Tgsize;cdecl;external;

function gsk_linear_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):PGskColorStop;cdecl;external;

function gsk_repeating_linear_gradient_node_get_type:TGType;cdecl;external;

function gsk_repeating_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:Tgsize):PGskRenderNode;cdecl;external;

function gsk_conic_gradient_node_get_type:TGType;cdecl;external;

function gsk_conic_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; color_stops:PGskColorStop; n_color_stops:Tgsize):PGskRenderNode;cdecl;external;

function gsk_conic_gradient_node_get_center(node:PGskRenderNode):Pgraphene_point_t;cdecl;external;

function gsk_conic_gradient_node_get_rotation(node:PGskRenderNode):single;cdecl;external;

function gsk_conic_gradient_node_get_angle(node:PGskRenderNode):single;cdecl;external;

function gsk_conic_gradient_node_get_n_color_stops(node:PGskRenderNode):Tgsize;cdecl;external;

function gsk_conic_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):PGskColorStop;cdecl;external;

function gsk_radial_gradient_node_get_type:TGType;cdecl;external;

function gsk_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
           end:single; color_stops:PGskColorStop; n_color_stops:Tgsize):PGskRenderNode;cdecl;external;

function gsk_radial_gradient_node_get_n_color_stops(node:PGskRenderNode):Tgsize;cdecl;external;

function gsk_radial_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):PGskColorStop;cdecl;external;

function gsk_radial_gradient_node_get_center(node:PGskRenderNode):Pgraphene_point_t;cdecl;external;

function gsk_radial_gradient_node_get_hradius(node:PGskRenderNode):single;cdecl;external;

function gsk_radial_gradient_node_get_vradius(node:PGskRenderNode):single;cdecl;external;

function gsk_radial_gradient_node_get_start(node:PGskRenderNode):single;cdecl;external;

function gsk_radial_gradient_node_get_end(node:PGskRenderNode):single;cdecl;external;

function gsk_repeating_radial_gradient_node_get_type:TGType;cdecl;external;

function gsk_repeating_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
           end:single; color_stops:PGskColorStop; n_color_stops:Tgsize):PGskRenderNode;cdecl;external;

function gsk_border_node_get_type:TGType;cdecl;external;

function gsk_border_node_new(outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of TGdkRGBA):PGskRenderNode;cdecl;external;

function gsk_border_node_get_outline(node:PGskRenderNode):PGskRoundedRect;cdecl;external;

function gsk_border_node_get_widths(node:PGskRenderNode):Psingle;cdecl;external;

function gsk_border_node_get_colors(node:PGskRenderNode):PGdkRGBA;cdecl;external;

function gsk_inset_shadow_node_get_type:TGType;cdecl;external;

function gsk_inset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
           blur_radius:single):PGskRenderNode;cdecl;external;

function gsk_inset_shadow_node_get_outline(node:PGskRenderNode):PGskRoundedRect;cdecl;external;

function gsk_inset_shadow_node_get_color(node:PGskRenderNode):PGdkRGBA;cdecl;external;

function gsk_inset_shadow_node_get_dx(node:PGskRenderNode):single;cdecl;external;

function gsk_inset_shadow_node_get_dy(node:PGskRenderNode):single;cdecl;external;

function gsk_inset_shadow_node_get_spread(node:PGskRenderNode):single;cdecl;external;

function gsk_inset_shadow_node_get_blur_radius(node:PGskRenderNode):single;cdecl;external;

function gsk_outset_shadow_node_get_type:TGType;cdecl;external;

function gsk_outset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
           blur_radius:single):PGskRenderNode;cdecl;external;

function gsk_outset_shadow_node_get_outline(node:PGskRenderNode):PGskRoundedRect;cdecl;external;

function gsk_outset_shadow_node_get_color(node:PGskRenderNode):PGdkRGBA;cdecl;external;

function gsk_outset_shadow_node_get_dx(node:PGskRenderNode):single;cdecl;external;

function gsk_outset_shadow_node_get_dy(node:PGskRenderNode):single;cdecl;external;

function gsk_outset_shadow_node_get_spread(node:PGskRenderNode):single;cdecl;external;

function gsk_outset_shadow_node_get_blur_radius(node:PGskRenderNode):single;cdecl;external;

function gsk_cairo_node_get_type:TGType;cdecl;external;

function gsk_cairo_node_new(bounds:Pgraphene_rect_t):PGskRenderNode;cdecl;external;

function gsk_cairo_node_get_draw_context(node:PGskRenderNode):Pcairo_t;cdecl;external;

function gsk_cairo_node_get_surface(node:PGskRenderNode):Pcairo_surface_t;cdecl;external;

function gsk_container_node_get_type:TGType;cdecl;external;

function gsk_container_node_new(children:PPGskRenderNode; n_children:Tguint):PGskRenderNode;cdecl;external;

function gsk_container_node_get_n_children(node:PGskRenderNode):Tguint;cdecl;external;

function gsk_container_node_get_child(node:PGskRenderNode; idx:Tguint):PGskRenderNode;cdecl;external;

function gsk_transform_node_get_type:TGType;cdecl;external;

function gsk_transform_node_new(child:PGskRenderNode; transform:PGskTransform):PGskRenderNode;cdecl;external;

function gsk_transform_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_transform_node_get_transform(node:PGskRenderNode):PGskTransform;cdecl;external;

function gsk_opacity_node_get_type:TGType;cdecl;external;

function gsk_opacity_node_new(child:PGskRenderNode; opacity:single):PGskRenderNode;cdecl;external;

function gsk_opacity_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_opacity_node_get_opacity(node:PGskRenderNode):single;cdecl;external;

function gsk_color_matrix_node_get_type:TGType;cdecl;external;

function gsk_color_matrix_node_new(child:PGskRenderNode; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t):PGskRenderNode;cdecl;external;

function gsk_color_matrix_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_color_matrix_node_get_color_matrix(node:PGskRenderNode):Pgraphene_matrix_t;cdecl;external;

function gsk_color_matrix_node_get_color_offset(node:PGskRenderNode):Pgraphene_vec4_t;cdecl;external;

function gsk_repeat_node_get_type:TGType;cdecl;external;

function gsk_repeat_node_new(bounds:Pgraphene_rect_t; child:PGskRenderNode; child_bounds:Pgraphene_rect_t):PGskRenderNode;cdecl;external;

function gsk_repeat_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_repeat_node_get_child_bounds(node:PGskRenderNode):Pgraphene_rect_t;cdecl;external;

function gsk_clip_node_get_type:TGType;cdecl;external;

function gsk_clip_node_new(child:PGskRenderNode; clip:Pgraphene_rect_t):PGskRenderNode;cdecl;external;

function gsk_clip_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_clip_node_get_clip(node:PGskRenderNode):Pgraphene_rect_t;cdecl;external;

function gsk_rounded_clip_node_get_type:TGType;cdecl;external;

function gsk_rounded_clip_node_new(child:PGskRenderNode; clip:PGskRoundedRect):PGskRenderNode;cdecl;external;

function gsk_rounded_clip_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_rounded_clip_node_get_clip(node:PGskRenderNode):PGskRoundedRect;cdecl;external;

function gsk_shadow_node_get_type:TGType;cdecl;external;

function gsk_shadow_node_new(child:PGskRenderNode; shadows:PGskShadow; n_shadows:Tgsize):PGskRenderNode;cdecl;external;

function gsk_shadow_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_shadow_node_get_shadow(node:PGskRenderNode; i:Tgsize):PGskShadow;cdecl;external;

function gsk_shadow_node_get_n_shadows(node:PGskRenderNode):Tgsize;cdecl;external;

function gsk_blend_node_get_type:TGType;cdecl;external;

function gsk_blend_node_new(bottom:PGskRenderNode; top:PGskRenderNode; blend_mode:TGskBlendMode):PGskRenderNode;cdecl;external;

function gsk_blend_node_get_bottom_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_blend_node_get_top_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_blend_node_get_blend_mode(node:PGskRenderNode):TGskBlendMode;cdecl;external;

function gsk_cross_fade_node_get_type:TGType;cdecl;external;

function gsk_cross_fade_node_new(start:PGskRenderNode; end:PGskRenderNode; progress:single):PGskRenderNode;cdecl;external;

function gsk_cross_fade_node_get_start_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_cross_fade_node_get_end_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_cross_fade_node_get_progress(node:PGskRenderNode):single;cdecl;external;

function gsk_text_node_get_type:TGType;cdecl;external;

function gsk_text_node_new(font:PPangoFont; glyphs:PPangoGlyphString; color:PGdkRGBA; offset:Pgraphene_point_t):PGskRenderNode;cdecl;external;

function gsk_text_node_get_font(node:PGskRenderNode):PPangoFont;cdecl;external;

function gsk_text_node_has_color_glyphs(node:PGskRenderNode):Tgboolean;cdecl;external;

function gsk_text_node_get_num_glyphs(node:PGskRenderNode):Tguint;cdecl;external;

function gsk_text_node_get_glyphs(node:PGskRenderNode; n_glyphs:Pguint):PPangoGlyphInfo;cdecl;external;

function gsk_text_node_get_color(node:PGskRenderNode):PGdkRGBA;cdecl;external;

function gsk_text_node_get_offset(node:PGskRenderNode):Pgraphene_point_t;cdecl;external;

function gsk_blur_node_get_type:TGType;cdecl;external;

function gsk_blur_node_new(child:PGskRenderNode; radius:single):PGskRenderNode;cdecl;external;

function gsk_blur_node_get_child(node:PGskRenderNode):PGskRenderNode;cdecl;external;

function gsk_blur_node_get_radius(node:PGskRenderNode):single;cdecl;external;

function gsk_gl_shader_node_get_type:TGType;cdecl;external;

function gsk_gl_shader_node_new(shader:PGskGLShader; bounds:Pgraphene_rect_t; args:PGBytes; children:PPGskRenderNode; n_children:Tguint):PGskRenderNode;cdecl;external;

function gsk_gl_shader_node_get_n_children(node:PGskRenderNode):Tguint;cdecl;external;

function gsk_gl_shader_node_get_child(node:PGskRenderNode; idx:Tguint):PGskRenderNode;cdecl;external;

function gsk_gl_shader_node_get_args(node:PGskRenderNode):PGBytes;cdecl;external;

function gsk_gl_shader_node_get_shader(node:PGskRenderNode):PGskGLShader;cdecl;external;

function GSK_VALUE_HOLDS_RENDER_NODE(value : longint) : longint;


procedure gsk_value_set_render_node(value:PGValue; node:PGskRenderNode);cdecl;external;

procedure gsk_value_take_render_node(value:PGValue; node:PGskRenderNode);cdecl;external;

function gsk_value_get_render_node(value:PGValue):PGskRenderNode;cdecl;external;

function gsk_value_dup_render_node(value:PGValue):PGskRenderNode;cdecl;external;

{$endif}


implementation

function GSK_TYPE_RENDER_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_RENDER_NODE:=gsk_render_node_get_type;
  end;

function GSK_IS_RENDER_NODE(obj : longint) : longint;
begin
  GSK_IS_RENDER_NODE:=obj<>NULL;
end;

function GSK_SERIALIZATION_ERROR : longint; { return type might be wrong }
  begin
    GSK_SERIALIZATION_ERROR:=gsk_serialization_error_quark;
  end;

function GSK_TYPE_DEBUG_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_DEBUG_NODE:=gsk_debug_node_get_type;
  end;

function GSK_TYPE_COLOR_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_COLOR_NODE:=gsk_color_node_get_type;
  end;

function GSK_TYPE_TEXTURE_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_TEXTURE_NODE:=gsk_texture_node_get_type;
  end;

function GSK_TYPE_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_LINEAR_GRADIENT_NODE:=gsk_linear_gradient_node_get_type;
  end;

function GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE:=gsk_repeating_linear_gradient_node_get_type;
  end;

function GSK_TYPE_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_RADIAL_GRADIENT_NODE:=gsk_radial_gradient_node_get_type;
  end;

function GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE:=gsk_repeating_radial_gradient_node_get_type;
  end;

function GSK_TYPE_CONIC_GRADIENT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_CONIC_GRADIENT_NODE:=gsk_conic_gradient_node_get_type;
  end;

function GSK_TYPE_BORDER_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_BORDER_NODE:=gsk_border_node_get_type;
  end;

function GSK_TYPE_INSET_SHADOW_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_INSET_SHADOW_NODE:=gsk_inset_shadow_node_get_type;
  end;

function GSK_TYPE_OUTSET_SHADOW_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_OUTSET_SHADOW_NODE:=gsk_outset_shadow_node_get_type;
  end;

function GSK_TYPE_CAIRO_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_CAIRO_NODE:=gsk_cairo_node_get_type;
  end;

function GSK_TYPE_CONTAINER_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_CONTAINER_NODE:=gsk_container_node_get_type;
  end;

function GSK_TYPE_TRANSFORM_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_TRANSFORM_NODE:=gsk_transform_node_get_type;
  end;

function GSK_TYPE_OPACITY_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_OPACITY_NODE:=gsk_opacity_node_get_type;
  end;

function GSK_TYPE_COLOR_MATRIX_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_COLOR_MATRIX_NODE:=gsk_color_matrix_node_get_type;
  end;

function GSK_TYPE_REPEAT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_REPEAT_NODE:=gsk_repeat_node_get_type;
  end;

function GSK_TYPE_CLIP_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_CLIP_NODE:=gsk_clip_node_get_type;
  end;

function GSK_TYPE_ROUNDED_CLIP_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_ROUNDED_CLIP_NODE:=gsk_rounded_clip_node_get_type;
  end;

function GSK_TYPE_SHADOW_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_SHADOW_NODE:=gsk_shadow_node_get_type;
  end;

function GSK_TYPE_BLEND_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_BLEND_NODE:=gsk_blend_node_get_type;
  end;

function GSK_TYPE_CROSS_FADE_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_CROSS_FADE_NODE:=gsk_cross_fade_node_get_type;
  end;

function GSK_TYPE_TEXT_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_TEXT_NODE:=gsk_text_node_get_type;
  end;

function GSK_TYPE_BLUR_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_BLUR_NODE:=gsk_blur_node_get_type;
  end;

function GSK_TYPE_GL_SHADER_NODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_GL_SHADER_NODE:=gsk_gl_shader_node_get_type;
  end;

function GSK_VALUE_HOLDS_RENDER_NODE(value : longint) : longint;
begin
  GSK_VALUE_HOLDS_RENDER_NODE:=G_VALUE_HOLDS(value,GSK_TYPE_RENDER_NODE);
end;


end.
