/* GSK - The GTK Scene Kit
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
 */

#pragma once

#if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gsk/gsk.h> can be included directly."
#endif

#include <gsk/gskroundedrect.h>
#include <gsk/gsktypes.h>
#include <gsk/gskglshader.h>
#include <gtk/css/gtkcss.h>



#define GSK_TYPE_RENDER_NODE (gsk_render_node_get_type ())

#define GSK_IS_RENDER_NODE(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GSK_TYPE_RENDER_NODE))

#define GSK_SERIALIZATION_ERROR       (gsk_serialization_error_quark ())

typedef struct _GskColorStop            GskColorStop;
typedef struct _GskShadow               GskShadow;

/**
 * GskColorStop:
 * @offset: the offset of the color stop
 * @color: the color at the given offset
 *
 * A color stop in a gradient node.
 */
struct _GskColorStop
{
  float offset;
  GdkRGBA color;
};

/**
 * GskShadow:
 * @color: the color of the shadow
 * @dx: the horizontal offset of the shadow
 * @dy: the vertical offset of the shadow
 * @radius: the radius of the shadow
 *
 * The shadow parameters in a shadow node.
 */
struct _GskShadow
{
  GdkRGBA color;
  float dx;
  float dy;
  float radius;
};

typedef struct _GskParseLocation GskParseLocation;

/**
 * GskParseLocation:
 * @bytes: the offset of the location in the parse buffer, as bytes
 * @chars: the offset of the location in the parse buffer, as characters
 * @lines: the line of the location in the parse buffer
 * @line_bytes: the position in the line, as bytes
 * @line_chars: the position in the line, as characters
 *
 * A location in a parse buffer.
 */
struct _GskParseLocation
{
  gsize bytes;
  gsize chars;
  gsize lines;
  gsize line_bytes;
  gsize line_chars;
};

/**
 * GskParseErrorFunc:
 * @start: start of the error location
 * @end: end of the error location
 * @error: the error
 * @user_data: user data
 *
 * Type of callback that is called when an error occurs
 * during node deserialization.
 */
typedef void           (* GskParseErrorFunc)                    (const GskParseLocation *start,
                                                                 const GskParseLocation *end,
                                                                 const GError           *error,
                                                                 gpointer                user_data);


GType                   gsk_render_node_get_type                (void) ;


GQuark                  gsk_serialization_error_quark           (void);


GskRenderNode *         gsk_render_node_ref                     (GskRenderNode *node);

void                    gsk_render_node_unref                   (GskRenderNode *node);


GskRenderNodeType       gsk_render_node_get_node_type           (const GskRenderNode *node);


void                    gsk_render_node_get_bounds              (GskRenderNode   *node,
                                                                 graphene_rect_t *bounds);


void                    gsk_render_node_draw                    (GskRenderNode *node,
                                                                 cairo_t       *cr);


GBytes *                gsk_render_node_serialize               (GskRenderNode *node);

gboolean                gsk_render_node_write_to_file           (GskRenderNode *node,
                                                                 const char    *filename,
                                                                 GError       **error);

GskRenderNode *         gsk_render_node_deserialize             (GBytes            *bytes,
                                                                 GskParseErrorFunc  error_func,
                                                                 gpointer           user_data);

#define GSK_TYPE_DEBUG_NODE                     (gsk_debug_node_get_type())
#define GSK_TYPE_COLOR_NODE                     (gsk_color_node_get_type())
#define GSK_TYPE_TEXTURE_NODE                   (gsk_texture_node_get_type())
#define GSK_TYPE_TEXTURE_SCALE_NODE             (gsk_texture_scale_node_get_type())
#define GSK_TYPE_LINEAR_GRADIENT_NODE           (gsk_linear_gradient_node_get_type())
#define GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE (gsk_repeating_linear_gradient_node_get_type())
#define GSK_TYPE_RADIAL_GRADIENT_NODE           (gsk_radial_gradient_node_get_type())
#define GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE (gsk_repeating_radial_gradient_node_get_type())
#define GSK_TYPE_CONIC_GRADIENT_NODE            (gsk_conic_gradient_node_get_type())
#define GSK_TYPE_BORDER_NODE                    (gsk_border_node_get_type())
#define GSK_TYPE_INSET_SHADOW_NODE              (gsk_inset_shadow_node_get_type())
#define GSK_TYPE_OUTSET_SHADOW_NODE             (gsk_outset_shadow_node_get_type())
#define GSK_TYPE_CAIRO_NODE                     (gsk_cairo_node_get_type())
#define GSK_TYPE_CONTAINER_NODE                 (gsk_container_node_get_type())
#define GSK_TYPE_TRANSFORM_NODE                 (gsk_transform_node_get_type())
#define GSK_TYPE_OPACITY_NODE                   (gsk_opacity_node_get_type())
#define GSK_TYPE_COLOR_MATRIX_NODE              (gsk_color_matrix_node_get_type())
#define GSK_TYPE_REPEAT_NODE                    (gsk_repeat_node_get_type())
#define GSK_TYPE_CLIP_NODE                      (gsk_clip_node_get_type())
#define GSK_TYPE_ROUNDED_CLIP_NODE              (gsk_rounded_clip_node_get_type())
#define GSK_TYPE_FILL_NODE                      (gsk_fill_node_get_type())
#define GSK_TYPE_STROKE_NODE                    (gsk_stroke_node_get_type())
#define GSK_TYPE_SHADOW_NODE                    (gsk_shadow_node_get_type())
#define GSK_TYPE_BLEND_NODE                     (gsk_blend_node_get_type())
#define GSK_TYPE_CROSS_FADE_NODE                (gsk_cross_fade_node_get_type())
#define GSK_TYPE_TEXT_NODE                      (gsk_text_node_get_type())
#define GSK_TYPE_BLUR_NODE                      (gsk_blur_node_get_type())
#define GSK_TYPE_MASK_NODE                      (gsk_mask_node_get_type())
#define GSK_TYPE_GL_SHADER_NODE                 (gsk_gl_shader_node_get_type())
#define GSK_TYPE_SUBSURFACE_NODE                (gsk_subsurface_node_get_type())

typedef struct _GskDebugNode                    GskDebugNode;
typedef struct _GskColorNode                    GskColorNode;
typedef struct _GskTextureNode                  GskTextureNode;
typedef struct _GskTextureScaleNode             GskTextureScaleNode;
typedef struct _GskLinearGradientNode           GskLinearGradientNode;
typedef struct _GskRepeatingLinearGradientNode  GskRepeatingLinearGradientNode;
typedef struct _GskRadialGradientNode           GskRadialGradientNode;
typedef struct _GskRepeatingRadialGradientNode  GskRepeatingRadialGradientNode;
typedef struct _GskConicGradientNode            GskConicGradientNode;
typedef struct _GskBorderNode                   GskBorderNode;
typedef struct _GskInsetShadowNode              GskInsetShadowNode;
typedef struct _GskOutsetShadowNode             GskOutsetShadowNode;
typedef struct _GskCairoNode                    GskCairoNode;
typedef struct _GskContainerNode                GskContainerNode;
typedef struct _GskTransformNode                GskTransformNode;
typedef struct _GskOpacityNode                  GskOpacityNode;
typedef struct _GskColorMatrixNode              GskColorMatrixNode;
typedef struct _GskRepeatNode                   GskRepeatNode;
typedef struct _GskClipNode                     GskClipNode;
typedef struct _GskRoundedClipNode              GskRoundedClipNode;
typedef struct _GskFillNode                     GskFillNode;
typedef struct _GskStrokeNode                   GskStrokeNode;
typedef struct _GskShadowNode                   GskShadowNode;
typedef struct _GskBlendNode                    GskBlendNode;
typedef struct _GskCrossFadeNode                GskCrossFadeNode;
typedef struct _GskTextNode                     GskTextNode;
typedef struct _GskBlurNode                     GskBlurNode;
typedef struct _GskMaskNode                     GskMaskNode;
typedef struct _GskGLShaderNode                 GskGLShaderNode;
typedef struct _GskSubsurfaceNode               GskSubsurfaceNode;


GType                   gsk_debug_node_get_type                 (void) ;

GskRenderNode *         gsk_debug_node_new                      (GskRenderNode            *child,
                                                                 char                     *message);

GskRenderNode *         gsk_debug_node_get_child                (const GskRenderNode      *node) ;

const char *            gsk_debug_node_get_message              (const GskRenderNode      *node) ;


GType                   gsk_color_node_get_type                 (void) ;

GskRenderNode *         gsk_color_node_new                      (const GdkRGBA            *rgba,
                                                                 const graphene_rect_t    *bounds);

const GdkRGBA *         gsk_color_node_get_color                (const GskRenderNode      *node) ;


GType                   gsk_texture_node_get_type               (void) ;

GskRenderNode *         gsk_texture_node_new                    (GdkTexture               *texture,
                                                                 const graphene_rect_t    *bounds);

GdkTexture *            gsk_texture_node_get_texture            (const GskRenderNode      *node) ;


GType                   gsk_texture_scale_node_get_type         (void) ;

GskRenderNode *         gsk_texture_scale_node_new              (GdkTexture               *texture,
                                                                 const graphene_rect_t    *bounds,
                                                                 GskScalingFilter          filter);

GdkTexture *            gsk_texture_scale_node_get_texture      (const GskRenderNode      *node) ;

GskScalingFilter        gsk_texture_scale_node_get_filter       (const GskRenderNode      *node) ;


GType                   gsk_linear_gradient_node_get_type           (void) ;

GskRenderNode *         gsk_linear_gradient_node_new                (const graphene_rect_t    *bounds,
                                                                     const graphene_point_t   *start,
                                                                     const graphene_point_t   *end,
                                                                     const GskColorStop       *color_stops,
                                                                     gsize                     n_color_stops);

const graphene_point_t * gsk_linear_gradient_node_get_start         (const GskRenderNode      *node) ;

const graphene_point_t * gsk_linear_gradient_node_get_end           (const GskRenderNode      *node) ;

gsize                    gsk_linear_gradient_node_get_n_color_stops (const GskRenderNode      *node) ;

const GskColorStop *     gsk_linear_gradient_node_get_color_stops   (const GskRenderNode      *node,
                                                                     gsize                    *n_stops);


GType                   gsk_repeating_linear_gradient_node_get_type (void) ;

GskRenderNode *         gsk_repeating_linear_gradient_node_new      (const graphene_rect_t    *bounds,
                                                                     const graphene_point_t   *start,
                                                                     const graphene_point_t   *end,
                                                                     const GskColorStop       *color_stops,
                                                                     gsize                     n_color_stops);


GType                   gsk_conic_gradient_node_get_type            (void) ;

GskRenderNode *         gsk_conic_gradient_node_new                 (const graphene_rect_t    *bounds,
                                                                     const graphene_point_t   *center,
                                                                     float                     rotation,
                                                                     const GskColorStop       *color_stops,
                                                                     gsize                     n_color_stops);

const graphene_point_t * gsk_conic_gradient_node_get_center         (const GskRenderNode      *node) ;

float                    gsk_conic_gradient_node_get_rotation       (const GskRenderNode      *node) ;

float                    gsk_conic_gradient_node_get_angle          (const GskRenderNode      *node) ;

gsize                    gsk_conic_gradient_node_get_n_color_stops  (const GskRenderNode      *node) ;

const GskColorStop *     gsk_conic_gradient_node_get_color_stops    (const GskRenderNode      *node,
                                                                     gsize                    *n_stops);


GType                   gsk_radial_gradient_node_get_type (void) ;

GskRenderNode *         gsk_radial_gradient_node_new      (const graphene_rect_t    *bounds,
                                                           const graphene_point_t   *center,
                                                           float                     hradius,
                                                           float                     vradius,
                                                           float                     start,
                                                           float                     end,
                                                           const GskColorStop       *color_stops,
                                                           gsize                     n_color_stops);

gsize                   gsk_radial_gradient_node_get_n_color_stops (const GskRenderNode *node) ;

const GskColorStop *    gsk_radial_gradient_node_get_color_stops   (const GskRenderNode *node,
                                                                    gsize               *n_stops);

const graphene_point_t *gsk_radial_gradient_node_get_center        (const GskRenderNode *node) ;

float                   gsk_radial_gradient_node_get_hradius       (const GskRenderNode *node) ;

float                   gsk_radial_gradient_node_get_vradius       (const GskRenderNode *node) ;

float                   gsk_radial_gradient_node_get_start         (const GskRenderNode *node) ;

float                   gsk_radial_gradient_node_get_end           (const GskRenderNode *node) ;


GType                   gsk_repeating_radial_gradient_node_get_type (void) ;

GskRenderNode *         gsk_repeating_radial_gradient_node_new      (const graphene_rect_t    *bounds,
                                                                     const graphene_point_t   *center,
                                                                     float                     hradius,
                                                                     float                     vradius,
                                                                     float                     start,
                                                                     float                     end,
                                                                     const GskColorStop       *color_stops,
                                                                     gsize                     n_color_stops);


GType                   gsk_border_node_get_type                (void) ;

GskRenderNode *         gsk_border_node_new                     (const GskRoundedRect     *outline,
                                                                 const float               border_width[4],
                                                                 const GdkRGBA             border_color[4]);

const GskRoundedRect *  gsk_border_node_get_outline             (const GskRenderNode      *node) ;

const float *           gsk_border_node_get_widths              (const GskRenderNode      *node) ;

const GdkRGBA *         gsk_border_node_get_colors              (const GskRenderNode      *node) ;


GType                   gsk_inset_shadow_node_get_type          (void) ;

GskRenderNode *         gsk_inset_shadow_node_new               (const GskRoundedRect     *outline,
                                                                 const GdkRGBA            *color,
                                                                 float                     dx,
                                                                 float                     dy,
                                                                 float                     spread,
                                                                 float                     blur_radius);

const GskRoundedRect *  gsk_inset_shadow_node_get_outline       (const GskRenderNode      *node) ;

const GdkRGBA *         gsk_inset_shadow_node_get_color         (const GskRenderNode      *node) ;

float                   gsk_inset_shadow_node_get_dx            (const GskRenderNode      *node) ;

float                   gsk_inset_shadow_node_get_dy            (const GskRenderNode      *node) ;

float                   gsk_inset_shadow_node_get_spread        (const GskRenderNode      *node) ;

float                   gsk_inset_shadow_node_get_blur_radius   (const GskRenderNode      *node) ;


GType                   gsk_outset_shadow_node_get_type         (void) ;

GskRenderNode *         gsk_outset_shadow_node_new              (const GskRoundedRect     *outline,
                                                                 const GdkRGBA            *color,
                                                                 float                     dx,
                                                                 float                     dy,
                                                                 float                     spread,
                                                                 float                     blur_radius);

const GskRoundedRect *  gsk_outset_shadow_node_get_outline      (const GskRenderNode      *node) ;

const GdkRGBA *         gsk_outset_shadow_node_get_color        (const GskRenderNode      *node) ;

float                   gsk_outset_shadow_node_get_dx           (const GskRenderNode      *node) ;

float                   gsk_outset_shadow_node_get_dy           (const GskRenderNode      *node) ;

float                   gsk_outset_shadow_node_get_spread       (const GskRenderNode      *node) ;

float                   gsk_outset_shadow_node_get_blur_radius  (const GskRenderNode      *node) ;


GType                   gsk_cairo_node_get_type                 (void) ;

GskRenderNode *         gsk_cairo_node_new                      (const graphene_rect_t    *bounds);

cairo_t *               gsk_cairo_node_get_draw_context         (GskRenderNode            *node);

cairo_surface_t *       gsk_cairo_node_get_surface              (GskRenderNode            *node);


GType                   gsk_container_node_get_type             (void) ;

GskRenderNode *         gsk_container_node_new                  (GskRenderNode           **children,
                                                                 guint                     n_children);

guint                   gsk_container_node_get_n_children       (const GskRenderNode      *node) ;

GskRenderNode *         gsk_container_node_get_child            (const GskRenderNode      *node,
                                                                 guint                     idx) ;


GType                   gsk_transform_node_get_type             (void) ;

GskRenderNode *         gsk_transform_node_new                  (GskRenderNode            *child,
                                                                 GskTransform             *transform);

GskRenderNode *         gsk_transform_node_get_child            (const GskRenderNode      *node) ;

GskTransform *          gsk_transform_node_get_transform        (const GskRenderNode      *node) ;


GType                   gsk_opacity_node_get_type               (void) ;

GskRenderNode *         gsk_opacity_node_new                    (GskRenderNode            *child,
                                                                 float                     opacity);

GskRenderNode *         gsk_opacity_node_get_child              (const GskRenderNode      *node) ;

float                   gsk_opacity_node_get_opacity            (const GskRenderNode      *node) ;


GType                   gsk_color_matrix_node_get_type          (void) ;

GskRenderNode *         gsk_color_matrix_node_new               (GskRenderNode            *child,
                                                                 const graphene_matrix_t  *color_matrix,
                                                                 const graphene_vec4_t    *color_offset);

GskRenderNode *         gsk_color_matrix_node_get_child         (const GskRenderNode      *node) ;

const graphene_matrix_t *
                        gsk_color_matrix_node_get_color_matrix  (const GskRenderNode      *node) ;

const graphene_vec4_t * gsk_color_matrix_node_get_color_offset  (const GskRenderNode      *node) ;


GType                   gsk_repeat_node_get_type                (void) ;

GskRenderNode *         gsk_repeat_node_new                     (const graphene_rect_t    *bounds,
                                                                 GskRenderNode            *child,
                                                                 const graphene_rect_t    *child_bounds);

GskRenderNode *         gsk_repeat_node_get_child               (const GskRenderNode      *node) ;

const graphene_rect_t * gsk_repeat_node_get_child_bounds        (const GskRenderNode      *node) ;


GType                   gsk_clip_node_get_type                  (void) ;

GskRenderNode *         gsk_clip_node_new                       (GskRenderNode            *child,
                                                                 const graphene_rect_t    *clip);

GskRenderNode *         gsk_clip_node_get_child                 (const GskRenderNode      *node) ;

const graphene_rect_t * gsk_clip_node_get_clip                  (const GskRenderNode      *node) ;


GType                   gsk_rounded_clip_node_get_type          (void) ;

GskRenderNode *         gsk_rounded_clip_node_new               (GskRenderNode            *child,
                                                                 const GskRoundedRect     *clip);

GskRenderNode *         gsk_rounded_clip_node_get_child         (const GskRenderNode      *node) ;

const GskRoundedRect *  gsk_rounded_clip_node_get_clip          (const GskRenderNode      *node) ;


GType                   gsk_fill_node_get_type                  (void) ;

GskRenderNode *         gsk_fill_node_new                       (GskRenderNode            *child,
                                                                 GskPath                  *path,
                                                                 GskFillRule               fill_rule);

GskRenderNode *         gsk_fill_node_get_child                 (const GskRenderNode      *node);

GskPath *               gsk_fill_node_get_path                  (const GskRenderNode      *node);

GskFillRule             gsk_fill_node_get_fill_rule             (const GskRenderNode      *node);


GType                   gsk_stroke_node_get_type                (void) ;

GskRenderNode *         gsk_stroke_node_new                     (GskRenderNode            *child,
                                                                 GskPath                  *path,
                                                                 const GskStroke          *stroke);

GskRenderNode *         gsk_stroke_node_get_child               (const GskRenderNode      *node);

GskPath *               gsk_stroke_node_get_path                (const GskRenderNode      *node);

const GskStroke *       gsk_stroke_node_get_stroke              (const GskRenderNode      *node);


GType                   gsk_shadow_node_get_type                (void) ;

GskRenderNode *         gsk_shadow_node_new                     (GskRenderNode            *child,
                                                                 const GskShadow          *shadows,
                                                                 gsize                     n_shadows);

GskRenderNode *         gsk_shadow_node_get_child               (const GskRenderNode      *node) ;

const GskShadow *       gsk_shadow_node_get_shadow              (const GskRenderNode      *node,
                                                                 gsize                     i) ;

gsize                   gsk_shadow_node_get_n_shadows           (const GskRenderNode      *node) ;


GType                   gsk_blend_node_get_type                 (void) ;

GskRenderNode *         gsk_blend_node_new                      (GskRenderNode            *bottom,
                                                                 GskRenderNode            *top,
                                                                 GskBlendMode              blend_mode);

GskRenderNode *         gsk_blend_node_get_bottom_child         (const GskRenderNode      *node) ;

GskRenderNode *         gsk_blend_node_get_top_child            (const GskRenderNode      *node) ;

GskBlendMode            gsk_blend_node_get_blend_mode           (const GskRenderNode      *node) ;


GType                   gsk_cross_fade_node_get_type            (void) ;

GskRenderNode *         gsk_cross_fade_node_new                 (GskRenderNode            *start,
                                                                 GskRenderNode            *end,
                                                                 float                     progress);

GskRenderNode *         gsk_cross_fade_node_get_start_child     (const GskRenderNode      *node) ;

GskRenderNode *         gsk_cross_fade_node_get_end_child       (const GskRenderNode      *node) ;

float                   gsk_cross_fade_node_get_progress        (const GskRenderNode      *node) ;


GType                   gsk_text_node_get_type                  (void) ;

GskRenderNode *         gsk_text_node_new                       (PangoFont                *font,
                                                                 PangoGlyphString         *glyphs,
                                                                 const GdkRGBA            *color,
                                                                 const graphene_point_t   *offset);

PangoFont *             gsk_text_node_get_font                  (const GskRenderNode      *node) ;

gboolean                gsk_text_node_has_color_glyphs          (const GskRenderNode      *node) ;

guint                   gsk_text_node_get_num_glyphs            (const GskRenderNode      *node) ;

const PangoGlyphInfo   *gsk_text_node_get_glyphs                (const GskRenderNode      *node,
                                                                 guint                    *n_glyphs);

const GdkRGBA *         gsk_text_node_get_color                 (const GskRenderNode      *node) ;

const graphene_point_t *gsk_text_node_get_offset                (const GskRenderNode      *node) ;


GType                   gsk_blur_node_get_type                  (void) ;

GskRenderNode *         gsk_blur_node_new                       (GskRenderNode            *child,
                                                                 float                     radius);

GskRenderNode *         gsk_blur_node_get_child                 (const GskRenderNode      *node) ;

float                   gsk_blur_node_get_radius                (const GskRenderNode      *node) ;


GType                  gsk_mask_node_get_type                   (void) ;

GskRenderNode *        gsk_mask_node_new                        (GskRenderNode            *source,
                                                                 GskRenderNode            *mask,
                                                                 GskMaskMode               mask_mode);

GskRenderNode *        gsk_mask_node_get_source                 (const GskRenderNode      *node);

GskRenderNode *        gsk_mask_node_get_mask                   (const GskRenderNode      *node);

GskMaskMode            gsk_mask_node_get_mask_mode              (const GskRenderNode      *node);


GType                   gsk_gl_shader_node_get_type             (void) ;

GskRenderNode *         gsk_gl_shader_node_new                  (GskGLShader              *shader,
                                                                 const graphene_rect_t    *bounds,
                                                                 GBytes                   *args,
                                                                 GskRenderNode           **children,
                                                                 guint                     n_children);

guint                   gsk_gl_shader_node_get_n_children       (const GskRenderNode      *node) ;

GskRenderNode *         gsk_gl_shader_node_get_child            (const GskRenderNode      *node,
                                                                 guint                     idx) ;

GBytes *                gsk_gl_shader_node_get_args             (const GskRenderNode      *node) ;

GskGLShader *           gsk_gl_shader_node_get_shader           (const GskRenderNode      *node) ;


GType                   gsk_subsurface_node_get_type            (void) ;

GskRenderNode *         gsk_subsurface_node_new                 (GskRenderNode            *child,
                                                                 gpointer                  subsurface);

GskRenderNode *         gsk_subsurface_node_get_child           (const GskRenderNode      *node) ;

gpointer                gsk_subsurface_node_get_subsurface      (const GskRenderNode      *node);

/**
 * GSK_VALUE_HOLDS_RENDER_NODE:
 * @value: a `GValue`
 *
 * Evaluates to %TRUE if @value was initialized with %GSK_TYPE_RENDER_NODE.
 */
#define GSK_VALUE_HOLDS_RENDER_NODE(value)       (G_VALUE_HOLDS ((value), GSK_TYPE_RENDER_NODE))


void                    gsk_value_set_render_node               (GValue                   *value,
                                                                 GskRenderNode            *node);

void                    gsk_value_take_render_node              (GValue                   *value,
                                                                 GskRenderNode            *node);

GskRenderNode *         gsk_value_get_render_node               (const GValue             *value);

GskRenderNode *         gsk_value_dup_render_node               (const GValue             *value);





