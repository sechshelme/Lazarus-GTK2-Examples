
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
    PGskColorStop  = ^GskColorStop;
    PGskGLShader  = ^GskGLShader;
    PGskParseLocation  = ^GskParseLocation;
    PGskRenderNode  = ^GskRenderNode;
    PGskRoundedRect  = ^GskRoundedRect;
    PGskShadow  = ^GskShadow;
    PGskTransform  = ^GskTransform;
    PPangoFont  = ^PangoFont;
    PPangoGlyphString  = ^PangoGlyphString;
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
(* error 
GType                   gsk_render_node_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gsk_serialization_error_quark:GQuark;

  function gsk_render_node_ref(node:PGskRenderNode):^GskRenderNode;

  procedure gsk_render_node_unref(node:PGskRenderNode);

(* Const before type ignored *)
  function gsk_render_node_get_node_type(node:PGskRenderNode):GskRenderNodeType;

  procedure gsk_render_node_get_bounds(node:PGskRenderNode; bounds:Pgraphene_rect_t);

  procedure gsk_render_node_draw(node:PGskRenderNode; cr:Pcairo_t);

  function gsk_render_node_serialize(node:PGskRenderNode):^GBytes;

(* Const before type ignored *)
  function gsk_render_node_write_to_file(node:PGskRenderNode; filename:Pchar; error:PPGError):gboolean;

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
(* error 
GType                   gsk_debug_node_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gsk_debug_node_new(child:PGskRenderNode; message:Pchar):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_debug_node_get_child                (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

    var
 : GskRenderNode;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const char *            gsk_debug_node_get_message              (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : char;
(* error 
GType                   gsk_color_node_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

  function gsk_color_node_new(rgba:PGdkRGBA; bounds:Pgraphene_rect_t):^GskRenderNode;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GdkRGBA *         gsk_color_node_get_color                (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

    var
 : GdkRGBA;
(* error 
GType                   gsk_texture_node_get_type               (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)

  function gsk_texture_node_new(texture:PGdkTexture; bounds:Pgraphene_rect_t):^GskRenderNode;

(* Const before type ignored *)
(* error 
GdkTexture *            gsk_texture_node_get_texture            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

    var
 : GdkTexture;
(* error 
GType                   gsk_linear_gradient_node_get_type           (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

  function gsk_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_point_t * gsk_linear_gradient_node_get_start         (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

    var
 : graphene_point_t;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_point_t * gsk_linear_gradient_node_get_end           (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_point_t;
(* Const before type ignored *)
(* error 
gsize                    gsk_linear_gradient_node_get_n_color_stops (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : gsize;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                                                     gsize                    *n_stops) G_GNUC_PURE;
 in declarator_list *)
 : GskColorStop;
(* error 
GType                   gsk_repeating_linear_gradient_node_get_type (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

  function gsk_repeating_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

(* error 
GType                   gsk_conic_gradient_node_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

  function gsk_conic_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_point_t * gsk_conic_gradient_node_get_center         (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

    var
 : graphene_point_t;
(* Const before type ignored *)
(* error 
float                    gsk_conic_gradient_node_get_rotation       (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
float                    gsk_conic_gradient_node_get_angle          (const GskRenderNode      *node) G_GNUC_PURE;
in declaration at line 260 *)
(* Const before type ignored *)
(* error 
gsize                    gsk_conic_gradient_node_get_n_color_stops  (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : gsize;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                                                     gsize                    *n_stops) G_GNUC_PURE;
 in declarator_list *)
 : GskColorStop;
(* error 
GType                   gsk_radial_gradient_node_get_type (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
               end:single; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

(* Const before type ignored *)
(* error 
gsize                   gsk_radial_gradient_node_get_n_color_stops (const GskRenderNode *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : gsize;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                                                    gsize               *n_stops) G_GNUC_PURE;
 in declarator_list *)
 : GskColorStop;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_point_t *gsk_radial_gradient_node_get_center        (const GskRenderNode *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_point_t;
(* Const before type ignored *)
(* error 
float                   gsk_radial_gradient_node_get_hradius       (const GskRenderNode *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_radial_gradient_node_get_vradius       (const GskRenderNode *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_radial_gradient_node_get_start         (const GskRenderNode *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_radial_gradient_node_get_end           (const GskRenderNode *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
GType                   gsk_repeating_radial_gradient_node_get_type (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_repeating_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
               end:single; color_stops:PGskColorStop; n_color_stops:gsize):^GskRenderNode;

(* error 
GType                   gsk_border_node_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

      var
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_border_node_new(outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of GdkRGBA):^GskRenderNode;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GskRoundedRect *  gsk_border_node_get_outline             (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRoundedRect;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const float *           gsk_border_node_get_widths              (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GdkRGBA *         gsk_border_node_get_colors              (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GdkRGBA;
(* error 
GType                   gsk_inset_shadow_node_get_type          (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_inset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
               blur_radius:single):^GskRenderNode;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GskRoundedRect *  gsk_inset_shadow_node_get_outline       (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRoundedRect;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GdkRGBA *         gsk_inset_shadow_node_get_color         (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GdkRGBA;
(* Const before type ignored *)
(* error 
float                   gsk_inset_shadow_node_get_dx            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_inset_shadow_node_get_dy            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_inset_shadow_node_get_spread        (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_inset_shadow_node_get_blur_radius   (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
GType                   gsk_outset_shadow_node_get_type         (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_outset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
               blur_radius:single):^GskRenderNode;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GskRoundedRect *  gsk_outset_shadow_node_get_outline      (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRoundedRect;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GdkRGBA *         gsk_outset_shadow_node_get_color        (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GdkRGBA;
(* Const before type ignored *)
(* error 
float                   gsk_outset_shadow_node_get_dx           (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_outset_shadow_node_get_dy           (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_outset_shadow_node_get_spread       (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* Const before type ignored *)
(* error 
float                   gsk_outset_shadow_node_get_blur_radius  (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
GType                   gsk_cairo_node_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)

    function gsk_cairo_node_new(bounds:Pgraphene_rect_t):^GskRenderNode;

    function gsk_cairo_node_get_draw_context(node:PGskRenderNode):^cairo_t;

    function gsk_cairo_node_get_surface(node:PGskRenderNode):^cairo_surface_t;

(* error 
GType                   gsk_container_node_get_type             (void) G_GNUC_CONST;
 in declarator_list *)

      var
 : GType;

    function gsk_container_node_new(children:PPGskRenderNode; n_children:guint):^GskRenderNode;

(* Const before type ignored *)
(* error 
guint                   gsk_container_node_get_n_children       (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : guint;
(* Const before type ignored *)
(* error 
                                                                 guint                     idx) G_GNUC_PURE;
 in declarator_list *)
 : GskRenderNode;
(* error 
GType                   gsk_transform_node_get_type             (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;

    function gsk_transform_node_new(child:PGskRenderNode; transform:PGskTransform):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_transform_node_get_child            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* error 
GskTransform *          gsk_transform_node_get_transform        (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GskTransform;
(* error 
GType                   gsk_opacity_node_get_type               (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;

    function gsk_opacity_node_new(child:PGskRenderNode; opacity:single):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_opacity_node_get_child              (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* error 
float                   gsk_opacity_node_get_opacity            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
GType                   gsk_color_matrix_node_get_type          (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_color_matrix_node_new(child:PGskRenderNode; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_color_matrix_node_get_child         (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                        gsk_color_matrix_node_get_color_matrix  (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_matrix_t;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_vec4_t * gsk_color_matrix_node_get_color_offset  (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_vec4_t;
(* error 
GType                   gsk_repeat_node_get_type                (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_repeat_node_new(bounds:Pgraphene_rect_t; child:PGskRenderNode; child_bounds:Pgraphene_rect_t):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_repeat_node_get_child               (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_rect_t * gsk_repeat_node_get_child_bounds        (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_rect_t;
(* error 
GType                   gsk_clip_node_get_type                  (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)

    function gsk_clip_node_new(child:PGskRenderNode; clip:Pgraphene_rect_t):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_clip_node_get_child                 (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_rect_t * gsk_clip_node_get_clip                  (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_rect_t;
(* error 
GType                   gsk_rounded_clip_node_get_type          (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)

    function gsk_rounded_clip_node_new(child:PGskRenderNode; clip:PGskRoundedRect):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_rounded_clip_node_get_child         (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GskRoundedRect *  gsk_rounded_clip_node_get_clip          (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GskRoundedRect;
(* error 
GType                   gsk_shadow_node_get_type                (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)

    function gsk_shadow_node_new(child:PGskRenderNode; shadows:PGskShadow; n_shadows:gsize):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_shadow_node_get_child               (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                                                 gsize                     i) G_GNUC_PURE;
 in declarator_list *)
 : GskShadow;
(* Const before type ignored *)
(* error 
gsize                   gsk_shadow_node_get_n_shadows           (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : gsize;
(* error 
GType                   gsk_blend_node_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;

    function gsk_blend_node_new(bottom:PGskRenderNode; top:PGskRenderNode; blend_mode:GskBlendMode):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_blend_node_get_bottom_child         (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_blend_node_get_top_child            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GskRenderNode;
(* Const before type ignored *)
(* error 
GskBlendMode            gsk_blend_node_get_blend_mode           (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GskBlendMode;
(* error 
GType                   gsk_cross_fade_node_get_type            (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;

    function gsk_cross_fade_node_new(start:PGskRenderNode; end:PGskRenderNode; progress:single):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_cross_fade_node_get_start_child     (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_cross_fade_node_get_end_child       (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GskRenderNode;
(* Const before type ignored *)
(* error 
float                   gsk_cross_fade_node_get_progress        (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
GType                   gsk_text_node_get_type                  (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_text_node_new(font:PPangoFont; glyphs:PPangoGlyphString; color:PGdkRGBA; offset:Pgraphene_point_t):^GskRenderNode;

(* Const before type ignored *)
(* error 
PangoFont *             gsk_text_node_get_font                  (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : PangoFont;
(* error 
gboolean                gsk_text_node_has_color_glyphs          (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
(* Const before type ignored *)
(* error 
guint                   gsk_text_node_get_num_glyphs            (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : guint;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                                                 guint                    *n_glyphs) G_GNUC_PURE;
 in declarator_list *)
 : PangoGlyphInfo;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const GdkRGBA *         gsk_text_node_get_color                 (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GdkRGBA;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
const graphene_point_t *gsk_text_node_get_offset                (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : graphene_point_t;
(* error 
GType                   gsk_blur_node_get_type                  (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;

    function gsk_blur_node_new(child:PGskRenderNode; radius:single):^GskRenderNode;

(* Const before type ignored *)
(* error 
GskRenderNode *         gsk_blur_node_get_child                 (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : GskRenderNode;
(* Const before type ignored *)
(* error 
float                   gsk_blur_node_get_radius                (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : single;
(* error 
GType                   gsk_gl_shader_node_get_type              (void) G_GNUC_CONST;
 in declarator_list *)
 : GType;
(* Const before type ignored *)

    function gsk_gl_shader_node_new(shader:PGskGLShader; bounds:Pgraphene_rect_t; args:PGBytes; children:PPGskRenderNode; n_children:guint):^GskRenderNode;

(* Const before type ignored *)
(* error 
guint                   gsk_gl_shader_node_get_n_children       (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)

      var
 : guint;
(* Const before type ignored *)
(* error 
                                                                 guint                     idx) G_GNUC_PURE;
 in declarator_list *)
 : GskRenderNode;
(* Const before type ignored *)
(* error 
GBytes *                gsk_gl_shader_node_get_args             (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GBytes;
(* Const before type ignored *)
(* error 
GskGLShader *           gsk_gl_shader_node_get_shader           (const GskRenderNode      *node) G_GNUC_PURE;
 in declarator_list *)
 : GskGLShader;
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

(* error 
void                    gsk_value_set_render_node               (GValue                   *value,
in declaration at line 547 *)
(* error 
void                    gsk_value_take_render_node              (GValue                   *value,
in declaration at line 550 *)
(* error 
GskRenderNode *         gsk_value_get_render_node               (const GValue             *value);
 in declarator_list *)
(* error 
GskRenderNode *         gsk_value_dup_render_node               (const GValue             *value);
 in declarator_list *)
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

  function gsk_debug_node_new(child:PGskRenderNode; message:Pchar):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_color_node_new(rgba:PGdkRGBA; bounds:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_texture_node_new(texture:PGdkTexture; bounds:Pgraphene_rect_t):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_repeating_linear_gradient_node_new(bounds:Pgraphene_rect_t; start:Pgraphene_point_t; end:Pgraphene_point_t; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gsk_conic_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
  begin
    { You must implement this function }
  end;
    function gsk_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
               end:single; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_repeating_radial_gradient_node_new(bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; start:single; 
               end:single; color_stops:PGskColorStop; n_color_stops:gsize):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_border_node_new(outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of GdkRGBA):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_inset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
               blur_radius:single):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_outset_shadow_node_new(outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; spread:single; 
               blur_radius:single):PGskRenderNode;
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
    function gsk_container_node_new(children:PPGskRenderNode; n_children:guint):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_transform_node_new(child:PGskRenderNode; transform:PGskTransform):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_opacity_node_new(child:PGskRenderNode; opacity:single):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_color_matrix_node_new(child:PGskRenderNode; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_repeat_node_new(bounds:Pgraphene_rect_t; child:PGskRenderNode; child_bounds:Pgraphene_rect_t):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_clip_node_new(child:PGskRenderNode; clip:Pgraphene_rect_t):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_clip_node_new(child:PGskRenderNode; clip:PGskRoundedRect):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_shadow_node_new(child:PGskRenderNode; shadows:PGskShadow; n_shadows:gsize):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_blend_node_new(bottom:PGskRenderNode; top:PGskRenderNode; blend_mode:GskBlendMode):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_cross_fade_node_new(start:PGskRenderNode; end:PGskRenderNode; progress:single):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_text_node_new(font:PPangoFont; glyphs:PPangoGlyphString; color:PGdkRGBA; offset:Pgraphene_point_t):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_blur_node_new(child:PGskRenderNode; radius:single):PGskRenderNode;
    begin
      { You must implement this function }
    end;
    function gsk_gl_shader_node_new(shader:PGskGLShader; bounds:Pgraphene_rect_t; args:PGBytes; children:PPGskRenderNode; n_children:guint):PGskRenderNode;
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


