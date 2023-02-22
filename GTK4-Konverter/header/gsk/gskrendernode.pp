
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


  { GSK - The GTK Scene Kit
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
    }
{$ifndef __GSK_RENDER_NODE_H__}
{$define __GSK_RENDER_NODE_H__}  
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gskroundedrect.h>}
{$include <gsk/gsktypes.h>}
{$include <gsk/gskglshader.h>}
{$include <gtk/css/gtkcss.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GSK_TYPE_RENDER_NODE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_RENDER_NODE(obj : longint) : longint;  

  { was #define dname def_expr }
  function GSK_SERIALIZATION_ERROR : longint; { return type might be wrong }


  type
    _GskRenderNode = GskRenderNode;
    _GskColorStop = GskColorStop;
    _GskShadow = GskShadow;
  {*
   * GskColorStop:
   * @offset: the offset of the color stop
   * @color: the color at the given offset
   *
   * A color stop in a gradient node.
    }
    _GskColorStop = record
        offset : single;
        color : GdkRGBA;
      end;

  {*
   * GskShadow:
   * @color: the color of the shadow
   * @dx: the horizontal offset of the shadow
   * @dy: the vertical offset of the shadow
   * @radius: the radius of the shadow
   *
   * The shadow parameters in a shadow node.
    }
    _GskShadow = record
        color : GdkRGBA;
        dx : single;
        dy : single;
        radius : single;
      end;

    _GskParseLocation = GskParseLocation;
  {*
   * GskParseLocation:
   * @bytes: the offset of the location in the parse buffer, as bytes
   * @chars: the offset of the location in the parse buffer, as characters
   * @lines: the line of the location in the parse buffer
   * @line_bytes: the position in the line, as bytes
   * @line_chars: the position in the line, as characters
   *
   * A location in a parse buffer.
    }
    _GskParseLocation = record
        bytes : gsize;
        chars : gsize;
        lines : gsize;
        line_bytes : gsize;
        line_chars : gsize;
      end;

  {*
   * GskParseErrorFunc:
   * @start: start of the error location
   * @end: end of the error location
   * @error: the error
   * @user_data: user data
   *
   * Type of callback that is called when an error occurs
   * during node deserialization.
    }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

    GskParseErrorFunc = procedure (start:PGskParseLocation; end:PGskParseLocation; error:PGError; user_data:gpointer);cdecl;
  { Zeile entfernt  }

  function gsk_render_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_serialization_error_quark:GQuark;

  { Zeile entfernt  }
  function gsk_render_node_ref(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
  procedure gsk_render_node_unref(node:PGskRenderNode);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_render_node_get_node_type(node:PGskRenderNode):GskRenderNodeType;

  { Zeile entfernt  }
  procedure gsk_render_node_get_bounds(node:PGskRenderNode; bounds:Pgraphene_rect_t);

  { Zeile entfernt  }
  procedure gsk_render_node_draw(node:PGskRenderNode; cr:Pcairo_t);

  { Zeile entfernt  }
  function gsk_render_node_serialize(node:PGskRenderNode):^GBytes;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_render_node_write_to_file(node:PGskRenderNode; filename:Pchar; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gsk_render_node_deserialize(bytes:PGBytes; error_func:GskParseErrorFunc; user_data:gpointer):^GskRenderNode;

  { was #define dname def_expr }
  function GSK_TYPE_DEBUG_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_COLOR_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_TEXTURE_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_CONIC_GRADIENT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_BORDER_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_INSET_SHADOW_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_OUTSET_SHADOW_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_CAIRO_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_CONTAINER_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_TRANSFORM_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_OPACITY_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_COLOR_MATRIX_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_REPEAT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_CLIP_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_ROUNDED_CLIP_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_SHADOW_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_BLEND_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_CROSS_FADE_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_TEXT_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_BLUR_NODE : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GSK_TYPE_GL_SHADER_NODE : longint; { return type might be wrong }


  type
    _GskDebugNode = GskDebugNode;
    _GskColorNode = GskColorNode;
    _GskTextureNode = GskTextureNode;
    _GskLinearGradientNode = GskLinearGradientNode;
    _GskRepeatingLinearGradientNode = GskRepeatingLinearGradientNode;
    _GskRadialGradientNode = GskRadialGradientNode;
    _GskRepeatingRadialGradientNode = GskRepeatingRadialGradientNode;
    _GskConicGradientNode = GskConicGradientNode;
    _GskBorderNode = GskBorderNode;
    _GskInsetShadowNode = GskInsetShadowNode;
    _GskOutsetShadowNode = GskOutsetShadowNode;
    _GskCairoNode = GskCairoNode;
    _GskContainerNode = GskContainerNode;
    _GskTransformNode = GskTransformNode;
    _GskOpacityNode = GskOpacityNode;
    _GskColorMatrixNode = GskColorMatrixNode;
    _GskRepeatNode = GskRepeatNode;
    _GskClipNode = GskClipNode;
    _GskRoundedClipNode = GskRoundedClipNode;
    _GskShadowNode = GskShadowNode;
    _GskBlendNode = GskBlendNode;
    _GskCrossFadeNode = GskCrossFadeNode;
    _GskTextNode = GskTextNode;
    _GskBlurNode = GskBlurNode;
    _GskGLShaderNode = GskGLShaderNode;
  { Zeile entfernt  }

  function gsk_debug_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_debug_node_new(child:PGskRenderNode; message:Pchar):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_debug_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_debug_node_get_message(node:PGskRenderNode):^char;

  { Zeile entfernt  }
  function gsk_color_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_color_node_new(rgba:PGdkRGBA; bounds:Pgraphene_rect_t):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_color_node_get_color(node:PGskRenderNode):^GdkRGBA;

  { Zeile entfernt  }
  function gsk_texture_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_texture_node_new(texture:PGdkTexture; bounds:Pgraphene_rect_t):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_texture_node_get_texture(node:PGskRenderNode):^GdkTexture;

  { Zeile entfernt  }
  function gsk_linear_gradient_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_linear_gradient_node_get_start(node:PGskRenderNode):^graphene_point_t;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_linear_gradient_node_get_end(node:PGskRenderNode):^graphene_point_t;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_linear_gradient_node_get_n_color_stops(node:PGskRenderNode):gsize;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_linear_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):^GskColorStop;

  { Zeile entfernt  }
  function gsk_repeating_linear_gradient_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_repeating_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

  { Zeile entfernt  }
  function gsk_conic_gradient_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_conic_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_conic_gradient_node_get_center(node:PGskRenderNode):^graphene_point_t;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_conic_gradient_node_get_rotation(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_conic_gradient_node_get_angle(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_conic_gradient_node_get_n_color_stops(node:PGskRenderNode):gsize;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_conic_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):^GskColorStop;

  { Zeile entfernt  }
  function gsk_radial_gradient_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
             end:single; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_n_color_stops(node:PGskRenderNode):gsize;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):^GskColorStop;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_center(node:PGskRenderNode):^graphene_point_t;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_hradius(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_vradius(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_start(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_radial_gradient_node_get_end(node:PGskRenderNode):single;

  { Zeile entfernt  }
  function gsk_repeating_radial_gradient_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_repeating_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
             end:single; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

  { Zeile entfernt  }
  function gsk_border_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_border_node_new(outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of GdkRGBA):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_border_node_get_outline(node:PGskRenderNode):^GskRoundedRect;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_border_node_get_widths(node:PGskRenderNode):^single;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_border_node_get_colors(node:PGskRenderNode):^GdkRGBA;

  { Zeile entfernt  }
  function gsk_inset_shadow_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_inset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
             blur_radius:single):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_inset_shadow_node_get_outline(node:PGskRenderNode):^GskRoundedRect;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_inset_shadow_node_get_color(node:PGskRenderNode):^GdkRGBA;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_inset_shadow_node_get_dx(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_inset_shadow_node_get_dy(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_inset_shadow_node_get_spread(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_inset_shadow_node_get_blur_radius(node:PGskRenderNode):single;

  { Zeile entfernt  }
  function gsk_outset_shadow_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_outset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
             blur_radius:single):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_outset_shadow_node_get_outline(node:PGskRenderNode):^GskRoundedRect;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_outset_shadow_node_get_color(node:PGskRenderNode):^GdkRGBA;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_outset_shadow_node_get_dx(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_outset_shadow_node_get_dy(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_outset_shadow_node_get_spread(node:PGskRenderNode):single;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_outset_shadow_node_get_blur_radius(node:PGskRenderNode):single;

  { Zeile entfernt  }
  function gsk_cairo_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_cairo_node_new(bounds:Pgraphene_rect_t):^GskRenderNode;

  { Zeile entfernt  }
  function gsk_cairo_node_get_draw_context(node:PGskRenderNode):^cairo_t;

  { Zeile entfernt  }
  function gsk_cairo_node_get_surface(node:PGskRenderNode):^cairo_surface_t;

  { Zeile entfernt  }
  function gsk_container_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_container_node_new(children:PPGskRenderNode; n_children:guint):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_container_node_get_n_children(node:PGskRenderNode):guint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_container_node_get_child(node:PGskRenderNode; idx:guint):^GskRenderNode;

  { Zeile entfernt  }
  function gsk_transform_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_transform_node_new(child:PGskRenderNode; transform:PGskTransform):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_transform_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_transform_node_get_transform(node:PGskRenderNode):^GskTransform;

  { Zeile entfernt  }
  function gsk_opacity_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_opacity_node_new(child:PGskRenderNode; opacity:single):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_opacity_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_opacity_node_get_opacity(node:PGskRenderNode):single;

  { Zeile entfernt  }
  function gsk_color_matrix_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_color_matrix_node_new(child:PGskRenderNode; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_color_matrix_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_color_matrix_node_get_color_matrix(node:PGskRenderNode):^graphene_matrix_t;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_color_matrix_node_get_color_offset(node:PGskRenderNode):^graphene_vec4_t;

  { Zeile entfernt  }
  function gsk_repeat_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_repeat_node_new(bounds:Pgraphene_rect_t; child:PGskRenderNode; child_bounds:Pgraphene_rect_t):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_repeat_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_repeat_node_get_child_bounds(node:PGskRenderNode):^graphene_rect_t;

  { Zeile entfernt  }
  function gsk_clip_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_clip_node_new(child:PGskRenderNode; clip:Pgraphene_rect_t):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_clip_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_clip_node_get_clip(node:PGskRenderNode):^graphene_rect_t;

  { Zeile entfernt  }
  function gsk_rounded_clip_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_rounded_clip_node_new(child:PGskRenderNode; clip:PGskRoundedRect):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_rounded_clip_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_rounded_clip_node_get_clip(node:PGskRenderNode):^GskRoundedRect;

  { Zeile entfernt  }
  function gsk_shadow_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_shadow_node_new(child:PGskRenderNode; shadows:PGskShadow; n_shadows:gsize):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_shadow_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_shadow_node_get_shadow(node:PGskRenderNode; i:gsize):^GskShadow;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_shadow_node_get_n_shadows(node:PGskRenderNode):gsize;

  { Zeile entfernt  }
  function gsk_blend_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_blend_node_new(bottom:PGskRenderNode; top:PGskRenderNode; blend_mode:GskBlendMode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_blend_node_get_bottom_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_blend_node_get_top_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_blend_node_get_blend_mode(node:PGskRenderNode):GskBlendMode;

  { Zeile entfernt  }
  function gsk_cross_fade_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_cross_fade_node_new(start:PGskRenderNode; end:PGskRenderNode; progress:single):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_cross_fade_node_get_start_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_cross_fade_node_get_end_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_cross_fade_node_get_progress(node:PGskRenderNode):single;

  { Zeile entfernt  }
  function gsk_text_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_text_node_new(font:PPangoFont; glyphs:PPangoGlyphString; color:PGdkRGBA; offset:Pgraphene_point_t):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_text_node_get_font(node:PGskRenderNode):^PangoFont;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_text_node_has_color_glyphs(node:PGskRenderNode):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_text_node_get_num_glyphs(node:PGskRenderNode):guint;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_text_node_get_glyphs(node:PGskRenderNode; n_glyphs:Pguint):^PangoGlyphInfo;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_text_node_get_color(node:PGskRenderNode):^GdkRGBA;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gsk_text_node_get_offset(node:PGskRenderNode):^graphene_point_t;

  { Zeile entfernt  }
  function gsk_blur_node_get_type:GType;

  { Zeile entfernt  }
  function gsk_blur_node_new(child:PGskRenderNode; radius:single):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_blur_node_get_child(node:PGskRenderNode):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_blur_node_get_radius(node:PGskRenderNode):single;

  { Zeile entfernt  }
  function gsk_gl_shader_node_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_node_new(shader:PGskGLShader; bounds:Pgraphene_rect_t; args:PGBytes; children:PPGskRenderNode; n_children:guint):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_node_get_n_children(node:PGskRenderNode):guint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_node_get_child(node:PGskRenderNode; idx:guint):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_node_get_args(node:PGskRenderNode):^GBytes;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_node_get_shader(node:PGskRenderNode):^GskGLShader;

  {*
   * GSK_VALUE_HOLDS_RENDER_NODE:
   * @value: a `GValue`
   *
   * Evaluates to %TRUE if @value was initialized with %GSK_TYPE_RENDER_NODE.
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_VALUE_HOLDS_RENDER_NODE(value : longint) : longint;  

  { Zeile entfernt  }
  procedure gsk_value_set_render_node(value:PGValue; node:PGskRenderNode);

  { Zeile entfernt  }
  procedure gsk_value_take_render_node(value:PGValue; node:PGskRenderNode);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_value_get_render_node(value:PGValue):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_value_dup_render_node(value:PGValue):^GskRenderNode;

  { Zeile entfernt  }
{$endif}
  { __GSK_RENDER_NODE_H__  }
  { was #define dname def_expr }
  function GSK_TYPE_RENDER_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_RENDER_NODE:=gsk_render_node_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_RENDER_NODE(obj : longint) : longint;
  begin
    GSK_IS_RENDER_NODE:=obj<>NULL;
  end;

  { was #define dname def_expr }
  function GSK_SERIALIZATION_ERROR : longint; { return type might be wrong }
    begin
      GSK_SERIALIZATION_ERROR:=gsk_serialization_error_quark;
    end;

  function gsk_render_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_serialization_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gsk_render_node_ref(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  procedure gsk_render_node_unref(node:PGskRenderNode);
  begin
    { You must implement this function }
  end;
  function gsk_render_node_get_node_type(node:PGskRenderNode):GskRenderNodeType;
  begin
    { You must implement this function }
  end;
  procedure gsk_render_node_get_bounds(node:PGskRenderNode; bounds:Pgraphene_rect_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_render_node_draw(node:PGskRenderNode; cr:Pcairo_t);
  begin
    { You must implement this function }
  end;
  function gsk_render_node_serialize(node:PGskRenderNode):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_render_node_write_to_file(node:PGskRenderNode; filename:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gsk_render_node_deserialize(bytes:PGBytes; error_func:GskParseErrorFunc; user_data:gpointer):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GSK_TYPE_DEBUG_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_DEBUG_NODE:=gsk_debug_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_COLOR_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_COLOR_NODE:=gsk_color_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_TEXTURE_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_TEXTURE_NODE:=gsk_texture_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_LINEAR_GRADIENT_NODE:=gsk_linear_gradient_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE:=gsk_repeating_linear_gradient_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_RADIAL_GRADIENT_NODE:=gsk_radial_gradient_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE:=gsk_repeating_radial_gradient_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_CONIC_GRADIENT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_CONIC_GRADIENT_NODE:=gsk_conic_gradient_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_BORDER_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_BORDER_NODE:=gsk_border_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_INSET_SHADOW_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_INSET_SHADOW_NODE:=gsk_inset_shadow_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_OUTSET_SHADOW_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_OUTSET_SHADOW_NODE:=gsk_outset_shadow_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_CAIRO_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_CAIRO_NODE:=gsk_cairo_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_CONTAINER_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_CONTAINER_NODE:=gsk_container_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_TRANSFORM_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_TRANSFORM_NODE:=gsk_transform_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_OPACITY_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_OPACITY_NODE:=gsk_opacity_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_COLOR_MATRIX_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_COLOR_MATRIX_NODE:=gsk_color_matrix_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_REPEAT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_REPEAT_NODE:=gsk_repeat_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_CLIP_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_CLIP_NODE:=gsk_clip_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_ROUNDED_CLIP_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_ROUNDED_CLIP_NODE:=gsk_rounded_clip_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_SHADOW_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_SHADOW_NODE:=gsk_shadow_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_BLEND_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_BLEND_NODE:=gsk_blend_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_CROSS_FADE_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_CROSS_FADE_NODE:=gsk_cross_fade_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_TEXT_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_TEXT_NODE:=gsk_text_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_BLUR_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_BLUR_NODE:=gsk_blur_node_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_GL_SHADER_NODE : longint; { return type might be wrong }
    begin
      GSK_TYPE_GL_SHADER_NODE:=gsk_gl_shader_node_get_type;
    end;

  function gsk_debug_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_debug_node_new(child:PGskRenderNode; message:Pchar):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_debug_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_debug_node_get_message(node:PGskRenderNode):Pchar;
  begin
    { You must implement this function }
  end;
  function gsk_color_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_color_node_new(rgba:PGdkRGBA; bounds:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_color_node_get_color(node:PGskRenderNode):PGdkRGBA;
  begin
    { You must implement this function }
  end;
  function gsk_texture_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_texture_node_new(texture:PGdkTexture; bounds:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_texture_node_get_texture(node:PGskRenderNode):PGdkTexture;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_get_start(node:PGskRenderNode):Pgraphene_point_t;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_get_end(node:PGskRenderNode):Pgraphene_point_t;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_get_n_color_stops(node:PGskRenderNode):gsize;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):PGskColorStop;
  begin
    { You must implement this function }
  end;
  function gsk_repeating_linear_gradient_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_repeating_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_get_center(node:PGskRenderNode):Pgraphene_point_t;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_get_rotation(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_get_angle(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_get_n_color_stops(node:PGskRenderNode):gsize;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):PGskColorStop;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
             end:single; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_n_color_stops(node:PGskRenderNode):gsize;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_color_stops(node:PGskRenderNode; n_stops:Pgsize):PGskColorStop;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_center(node:PGskRenderNode):Pgraphene_point_t;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_hradius(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_vradius(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_start(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_radial_gradient_node_get_end(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_repeating_radial_gradient_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_repeating_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
             end:single; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_border_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_border_node_new(outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of GdkRGBA):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_border_node_get_outline(node:PGskRenderNode):PGskRoundedRect;
  begin
    { You must implement this function }
  end;
  function gsk_border_node_get_widths(node:PGskRenderNode):Psingle;
  begin
    { You must implement this function }
  end;
  function gsk_border_node_get_colors(node:PGskRenderNode):PGdkRGBA;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
             blur_radius:single):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_outline(node:PGskRenderNode):PGskRoundedRect;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_color(node:PGskRenderNode):PGdkRGBA;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_dx(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_dy(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_spread(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_inset_shadow_node_get_blur_radius(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
             blur_radius:single):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_outline(node:PGskRenderNode):PGskRoundedRect;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_color(node:PGskRenderNode):PGdkRGBA;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_dx(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_dy(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_spread(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_outset_shadow_node_get_blur_radius(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_cairo_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_cairo_node_new(bounds:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_cairo_node_get_draw_context(node:PGskRenderNode):Pcairo_t;
  begin
    { You must implement this function }
  end;
  function gsk_cairo_node_get_surface(node:PGskRenderNode):Pcairo_surface_t;
  begin
    { You must implement this function }
  end;
  function gsk_container_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_container_node_new(children:PPGskRenderNode; n_children:guint):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_container_node_get_n_children(node:PGskRenderNode):guint;
  begin
    { You must implement this function }
  end;
  function gsk_container_node_get_child(node:PGskRenderNode; idx:guint):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_transform_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_transform_node_new(child:PGskRenderNode; transform:PGskTransform):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_transform_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_transform_node_get_transform(node:PGskRenderNode):PGskTransform;
  begin
    { You must implement this function }
  end;
  function gsk_opacity_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_opacity_node_new(child:PGskRenderNode; opacity:single):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_opacity_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_opacity_node_get_opacity(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_color_matrix_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_color_matrix_node_new(child:PGskRenderNode; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_color_matrix_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_color_matrix_node_get_color_matrix(node:PGskRenderNode):Pgraphene_matrix_t;
  begin
    { You must implement this function }
  end;
  function gsk_color_matrix_node_get_color_offset(node:PGskRenderNode):Pgraphene_vec4_t;
  begin
    { You must implement this function }
  end;
  function gsk_repeat_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_repeat_node_new(bounds:Pgraphene_rect_t; child:PGskRenderNode; child_bounds:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_repeat_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_repeat_node_get_child_bounds(node:PGskRenderNode):Pgraphene_rect_t;
  begin
    { You must implement this function }
  end;
  function gsk_clip_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_clip_node_new(child:PGskRenderNode; clip:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_clip_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_clip_node_get_clip(node:PGskRenderNode):Pgraphene_rect_t;
  begin
    { You must implement this function }
  end;
  function gsk_rounded_clip_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_rounded_clip_node_new(child:PGskRenderNode; clip:PGskRoundedRect):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_rounded_clip_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_rounded_clip_node_get_clip(node:PGskRenderNode):PGskRoundedRect;
  begin
    { You must implement this function }
  end;
  function gsk_shadow_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_shadow_node_new(child:PGskRenderNode; shadows:PGskShadow; n_shadows:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_shadow_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_shadow_node_get_shadow(node:PGskRenderNode; i:gsize):PGskShadow;
  begin
    { You must implement this function }
  end;
  function gsk_shadow_node_get_n_shadows(node:PGskRenderNode):gsize;
  begin
    { You must implement this function }
  end;
  function gsk_blend_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_blend_node_new(bottom:PGskRenderNode; top:PGskRenderNode; blend_mode:GskBlendMode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_blend_node_get_bottom_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_blend_node_get_top_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_blend_node_get_blend_mode(node:PGskRenderNode):GskBlendMode;
  begin
    { You must implement this function }
  end;
  function gsk_cross_fade_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_cross_fade_node_new(start:PGskRenderNode; end:PGskRenderNode; progress:single):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_cross_fade_node_get_start_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_cross_fade_node_get_end_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_cross_fade_node_get_progress(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_new(font:PPangoFont; glyphs:PPangoGlyphString; color:PGdkRGBA; offset:Pgraphene_point_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_get_font(node:PGskRenderNode):PPangoFont;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_has_color_glyphs(node:PGskRenderNode):gboolean;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_get_num_glyphs(node:PGskRenderNode):guint;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_get_glyphs(node:PGskRenderNode; n_glyphs:Pguint):PPangoGlyphInfo;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_get_color(node:PGskRenderNode):PGdkRGBA;
  begin
    { You must implement this function }
  end;
  function gsk_text_node_get_offset(node:PGskRenderNode):Pgraphene_point_t;
  begin
    { You must implement this function }
  end;
  function gsk_blur_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_blur_node_new(child:PGskRenderNode; radius:single):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_blur_node_get_child(node:PGskRenderNode):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_blur_node_get_radius(node:PGskRenderNode):single;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_node_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_node_new(shader:PGskGLShader; bounds:Pgraphene_rect_t; args:PGBytes; children:PPGskRenderNode; n_children:guint):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_node_get_n_children(node:PGskRenderNode):guint;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_node_get_child(node:PGskRenderNode; idx:guint):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_node_get_args(node:PGskRenderNode):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_node_get_shader(node:PGskRenderNode):PGskGLShader;
  begin
    { You must implement this function }
  end;
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_VALUE_HOLDS_RENDER_NODE(value : longint) : longint;
  begin
    GSK_VALUE_HOLDS_RENDER_NODE:=G_VALUE_HOLDS(value,GSK_TYPE_RENDER_NODE);
  end;

  procedure gsk_value_set_render_node(value:PGValue; node:PGskRenderNode);
  begin
    { You must implement this function }
  end;
  procedure gsk_value_take_render_node(value:PGValue; node:PGskRenderNode);
  begin
    { You must implement this function }
  end;
  function gsk_value_get_render_node(value:PGValue):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_value_dup_render_node(value:PGValue):PGskRenderNode;
  begin
    { You must implement this function }
  end;

