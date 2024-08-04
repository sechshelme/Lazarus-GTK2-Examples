unit gskrendernode;

interface

uses
  glib2, pango, Cairo, common_GTK, GDK4, gsktypes, gskenums, gsktransform, gskglshader, gskroundedrect, gskpath, gskstroke;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



function GSK_SERIALIZATION_ERROR: TGQuark;

type
  TGskColorStop = record
    offset: single;
    color: TGdkRGBA;
  end;
  PGskColorStop = ^TGskColorStop;

  TGskShadow = record
    color: TGdkRGBA;
    dx: single;
    dy: single;
    radius: single;
  end;
  PGskShadow = ^TGskShadow;

  TGskParseLocation = record
    bytes: Tgsize;
    chars: Tgsize;
    Lines: Tgsize;
    line_bytes: Tgsize;
    line_chars: Tgsize;
  end;
  PGskParseLocation = ^TGskParseLocation;

  TGskParseErrorFunc = procedure(start: PGskParseLocation; _end: PGskParseLocation; error: PGError; user_data: Tgpointer); cdecl;

type
  TGskRenderNode = record
  end;
  PGskRenderNode = ^TGskRenderNode;
  PPGskRenderNode = ^PGskRenderNode;

function gsk_render_node_get_type: TGType; cdecl; external gtklib;
function gsk_serialization_error_quark: TGQuark; cdecl; external gtklib;
function gsk_render_node_ref(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
procedure gsk_render_node_unref(node: PGskRenderNode); cdecl; external gtklib;
function gsk_render_node_get_node_type(node: PGskRenderNode): TGskRenderNodeType; cdecl; external gtklib;
procedure gsk_render_node_get_bounds(node: PGskRenderNode; bounds: Pgraphene_rect_t); cdecl; external gtklib;
procedure gsk_render_node_draw(node: PGskRenderNode; cr: Pcairo_t); cdecl; external gtklib;
function gsk_render_node_serialize(node: PGskRenderNode): PGBytes; cdecl; external gtklib;
function gsk_render_node_write_to_file(node: PGskRenderNode; filename: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gsk_render_node_deserialize(bytes: PGBytes; error_func: TGskParseErrorFunc; user_data: Tgpointer): PGskRenderNode; cdecl; external gtklib;

function GSK_TYPE_DEBUG_NODE: TGType;


function GSK_TYPE_COLOR_NODE: TGType;


function GSK_TYPE_TEXTURE_NODE: TGType;


function GSK_TYPE_TEXTURE_SCALE_NODE: TGType;


function GSK_TYPE_LINEAR_GRADIENT_NODE: TGType;


function GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE: TGType;


function GSK_TYPE_RADIAL_GRADIENT_NODE: TGType;


function GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE: TGType;


function GSK_TYPE_CONIC_GRADIENT_NODE: TGType;


function GSK_TYPE_BORDER_NODE: TGType;


function GSK_TYPE_INSET_SHADOW_NODE: TGType;


function GSK_TYPE_OUTSET_SHADOW_NODE: TGType;


function GSK_TYPE_CAIRO_NODE: TGType;


function GSK_TYPE_CONTAINER_NODE: TGType;


function GSK_TYPE_TRANSFORM_NODE: TGType;


function GSK_TYPE_OPACITY_NODE: TGType;


function GSK_TYPE_COLOR_MATRIX_NODE: TGType;


function GSK_TYPE_REPEAT_NODE: TGType;


function GSK_TYPE_CLIP_NODE: TGType;


function GSK_TYPE_ROUNDED_CLIP_NODE: TGType;


function GSK_TYPE_FILL_NODE: TGType;


function GSK_TYPE_STROKE_NODE: TGType;


function GSK_TYPE_SHADOW_NODE: TGType;


function GSK_TYPE_BLEND_NODE: TGType;


function GSK_TYPE_CROSS_FADE_NODE: TGType;


function GSK_TYPE_TEXT_NODE: TGType;


function GSK_TYPE_BLUR_NODE: TGType;


function GSK_TYPE_MASK_NODE: TGType;


function GSK_TYPE_GL_SHADER_NODE: TGType;


function GSK_TYPE_SUBSURFACE_NODE: TGType;

function gsk_debug_node_get_type: TGType; cdecl; external gtklib;
function gsk_debug_node_new(child: PGskRenderNode; message: PChar): PGskRenderNode; cdecl; external gtklib;
function gsk_debug_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_debug_node_get_message(node: PGskRenderNode): PChar; cdecl; external gtklib;
function gsk_color_node_get_type: TGType; cdecl; external gtklib;
function gsk_color_node_new(rgba: PGdkRGBA; bounds: Pgraphene_rect_t): PGskRenderNode; cdecl; external gtklib;
function gsk_color_node_get_color(node: PGskRenderNode): PGdkRGBA; cdecl; external gtklib;
function gsk_texture_node_get_type: TGType; cdecl; external gtklib;
function gsk_texture_node_new(texture: PGdkTexture; bounds: Pgraphene_rect_t): PGskRenderNode; cdecl; external gtklib;
function gsk_texture_node_get_texture(node: PGskRenderNode): PGdkTexture; cdecl; external gtklib;
function gsk_texture_scale_node_get_type: TGType; cdecl; external gtklib;
function gsk_texture_scale_node_new(texture: PGdkTexture; bounds: Pgraphene_rect_t; filter: TGskScalingFilter): PGskRenderNode; cdecl; external gtklib;
function gsk_texture_scale_node_get_texture(node: PGskRenderNode): PGdkTexture; cdecl; external gtklib;
function gsk_texture_scale_node_get_filter(node: PGskRenderNode): TGskScalingFilter; cdecl; external gtklib;
function gsk_linear_gradient_node_get_type: TGType; cdecl; external gtklib;
function gsk_linear_gradient_node_new(bounds: Pgraphene_rect_t; start: Pgraphene_point_t; _end: Pgraphene_point_t; color_stops: PGskColorStop; n_color_stops: Tgsize): PGskRenderNode; cdecl; external gtklib;
function gsk_linear_gradient_node_get_start(node: PGskRenderNode): Pgraphene_point_t; cdecl; external gtklib;
function gsk_linear_gradient_node_get_end(node: PGskRenderNode): Pgraphene_point_t; cdecl; external gtklib;
function gsk_linear_gradient_node_get_n_color_stops(node: PGskRenderNode): Tgsize; cdecl; external gtklib;
function gsk_linear_gradient_node_get_color_stops(node: PGskRenderNode; n_stops: Pgsize): PGskColorStop; cdecl; external gtklib;
function gsk_repeating_linear_gradient_node_get_type: TGType; cdecl; external gtklib;
function gsk_repeating_linear_gradient_node_new(bounds: Pgraphene_rect_t; start: Pgraphene_point_t; _end: Pgraphene_point_t; color_stops: PGskColorStop; n_color_stops: Tgsize): PGskRenderNode; cdecl; external gtklib;
function gsk_conic_gradient_node_get_type: TGType; cdecl; external gtklib;
function gsk_conic_gradient_node_new(bounds: Pgraphene_rect_t; center: Pgraphene_point_t; rotation: single; color_stops: PGskColorStop; n_color_stops: Tgsize): PGskRenderNode; cdecl; external gtklib;
function gsk_conic_gradient_node_get_center(node: PGskRenderNode): Pgraphene_point_t; cdecl; external gtklib;
function gsk_conic_gradient_node_get_rotation(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_conic_gradient_node_get_angle(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_conic_gradient_node_get_n_color_stops(node: PGskRenderNode): Tgsize; cdecl; external gtklib;
function gsk_conic_gradient_node_get_color_stops(node: PGskRenderNode; n_stops: Pgsize): PGskColorStop; cdecl; external gtklib;
function gsk_radial_gradient_node_get_type: TGType; cdecl; external gtklib;
function gsk_radial_gradient_node_new(bounds: Pgraphene_rect_t; center: Pgraphene_point_t; hradius: single; vradius: single; start: single;
  _end: single; color_stops: PGskColorStop; n_color_stops: Tgsize): PGskRenderNode; cdecl; external gtklib;
function gsk_radial_gradient_node_get_n_color_stops(node: PGskRenderNode): Tgsize; cdecl; external gtklib;
function gsk_radial_gradient_node_get_color_stops(node: PGskRenderNode; n_stops: Pgsize): PGskColorStop; cdecl; external gtklib;
function gsk_radial_gradient_node_get_center(node: PGskRenderNode): Pgraphene_point_t; cdecl; external gtklib;
function gsk_radial_gradient_node_get_hradius(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_radial_gradient_node_get_vradius(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_radial_gradient_node_get_start(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_radial_gradient_node_get_end(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_repeating_radial_gradient_node_get_type: TGType; cdecl; external gtklib;
function gsk_repeating_radial_gradient_node_new(bounds: Pgraphene_rect_t; center: Pgraphene_point_t; hradius: single; vradius: single; start: single;
  _end: single; color_stops: PGskColorStop; n_color_stops: Tgsize): PGskRenderNode; cdecl; external gtklib;
function gsk_border_node_get_type: TGType; cdecl; external gtklib;

type
  TVec4f = array[0..3] of single;
  Tborder_colors = array[0..3] of TGdkRGBA;

function gsk_border_node_new(outline: PGskRoundedRect; border_width: TVec4f; border_color: Tborder_colors): PGskRenderNode; cdecl; external gtklib;
function gsk_border_node_get_outline(node: PGskRenderNode): PGskRoundedRect; cdecl; external gtklib;
function gsk_border_node_get_widths(node: PGskRenderNode): Psingle; cdecl; external gtklib;
function gsk_border_node_get_colors(node: PGskRenderNode): PGdkRGBA; cdecl; external gtklib;
function gsk_inset_shadow_node_get_type: TGType; cdecl; external gtklib;
function gsk_inset_shadow_node_new(outline: PGskRoundedRect; color: PGdkRGBA; dx: single; dy: single; spread: single;
  blur_radius: single): PGskRenderNode; cdecl; external gtklib;
function gsk_inset_shadow_node_get_outline(node: PGskRenderNode): PGskRoundedRect; cdecl; external gtklib;
function gsk_inset_shadow_node_get_color(node: PGskRenderNode): PGdkRGBA; cdecl; external gtklib;
function gsk_inset_shadow_node_get_dx(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_inset_shadow_node_get_dy(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_inset_shadow_node_get_spread(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_inset_shadow_node_get_blur_radius(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_outset_shadow_node_get_type: TGType; cdecl; external gtklib;
function gsk_outset_shadow_node_new(outline: PGskRoundedRect; color: PGdkRGBA; dx: single; dy: single; spread: single;
  blur_radius: single): PGskRenderNode; cdecl; external gtklib;
function gsk_outset_shadow_node_get_outline(node: PGskRenderNode): PGskRoundedRect; cdecl; external gtklib;
function gsk_outset_shadow_node_get_color(node: PGskRenderNode): PGdkRGBA; cdecl; external gtklib;
function gsk_outset_shadow_node_get_dx(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_outset_shadow_node_get_dy(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_outset_shadow_node_get_spread(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_outset_shadow_node_get_blur_radius(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_cairo_node_get_type: TGType; cdecl; external gtklib;
function gsk_cairo_node_new(bounds: Pgraphene_rect_t): PGskRenderNode; cdecl; external gtklib;
function gsk_cairo_node_get_draw_context(node: PGskRenderNode): Pcairo_t; cdecl; external gtklib;
function gsk_cairo_node_get_surface(node: PGskRenderNode): Pcairo_surface_t; cdecl; external gtklib;
function gsk_container_node_get_type: TGType; cdecl; external gtklib;
function gsk_container_node_new(children: PPGskRenderNode; n_children: Tguint): PGskRenderNode; cdecl; external gtklib;
function gsk_container_node_get_n_children(node: PGskRenderNode): Tguint; cdecl; external gtklib;
function gsk_container_node_get_child(node: PGskRenderNode; idx: Tguint): PGskRenderNode; cdecl; external gtklib;
function gsk_transform_node_get_type: TGType; cdecl; external gtklib;
function gsk_transform_node_new(child: PGskRenderNode; transform: PGskTransform): PGskRenderNode; cdecl; external gtklib;
function gsk_transform_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_transform_node_get_transform(node: PGskRenderNode): PGskTransform; cdecl; external gtklib;
function gsk_opacity_node_get_type: TGType; cdecl; external gtklib;
function gsk_opacity_node_new(child: PGskRenderNode; opacity: single): PGskRenderNode; cdecl; external gtklib;
function gsk_opacity_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_opacity_node_get_opacity(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_color_matrix_node_get_type: TGType; cdecl; external gtklib;
function gsk_color_matrix_node_new(child: PGskRenderNode; color_matrix: Pgraphene_matrix_t; color_offset: Pgraphene_vec4_t): PGskRenderNode; cdecl; external gtklib;
function gsk_color_matrix_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_color_matrix_node_get_color_matrix(node: PGskRenderNode): Pgraphene_matrix_t; cdecl; external gtklib;
function gsk_color_matrix_node_get_color_offset(node: PGskRenderNode): Pgraphene_vec4_t; cdecl; external gtklib;
function gsk_repeat_node_get_type: TGType; cdecl; external gtklib;
function gsk_repeat_node_new(bounds: Pgraphene_rect_t; child: PGskRenderNode; child_bounds: Pgraphene_rect_t): PGskRenderNode; cdecl; external gtklib;
function gsk_repeat_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_repeat_node_get_child_bounds(node: PGskRenderNode): Pgraphene_rect_t; cdecl; external gtklib;
function gsk_clip_node_get_type: TGType; cdecl; external gtklib;
function gsk_clip_node_new(child: PGskRenderNode; clip: Pgraphene_rect_t): PGskRenderNode; cdecl; external gtklib;
function gsk_clip_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_clip_node_get_clip(node: PGskRenderNode): Pgraphene_rect_t; cdecl; external gtklib;
function gsk_rounded_clip_node_get_type: TGType; cdecl; external gtklib;
function gsk_rounded_clip_node_new(child: PGskRenderNode; clip: PGskRoundedRect): PGskRenderNode; cdecl; external gtklib;
function gsk_rounded_clip_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_rounded_clip_node_get_clip(node: PGskRenderNode): PGskRoundedRect; cdecl; external gtklib;
function gsk_fill_node_get_type: TGType; cdecl; external gtklib;
function gsk_fill_node_new(child: PGskRenderNode; path: PGskPath; fill_rule: TGskFillRule): PGskRenderNode; cdecl; external gtklib;
function gsk_fill_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_fill_node_get_path(node: PGskRenderNode): PGskPath; cdecl; external gtklib;
function gsk_fill_node_get_fill_rule(node: PGskRenderNode): TGskFillRule; cdecl; external gtklib;
function gsk_stroke_node_get_type: TGType; cdecl; external gtklib;
function gsk_stroke_node_new(child: PGskRenderNode; path: PGskPath; stroke: PGskStroke): PGskRenderNode; cdecl; external gtklib;
function gsk_stroke_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_stroke_node_get_path(node: PGskRenderNode): PGskPath; cdecl; external gtklib;
function gsk_stroke_node_get_stroke(node: PGskRenderNode): PGskStroke; cdecl; external gtklib;
function gsk_shadow_node_get_type: TGType; cdecl; external gtklib;
function gsk_shadow_node_new(child: PGskRenderNode; shadows: PGskShadow; n_shadows: Tgsize): PGskRenderNode; cdecl; external gtklib;
function gsk_shadow_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_shadow_node_get_shadow(node: PGskRenderNode; i: Tgsize): PGskShadow; cdecl; external gtklib;
function gsk_shadow_node_get_n_shadows(node: PGskRenderNode): Tgsize; cdecl; external gtklib;
function gsk_blend_node_get_type: TGType; cdecl; external gtklib;
function gsk_blend_node_new(bottom: PGskRenderNode; top: PGskRenderNode; blend_mode: TGskBlendMode): PGskRenderNode; cdecl; external gtklib;
function gsk_blend_node_get_bottom_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_blend_node_get_top_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_blend_node_get_blend_mode(node: PGskRenderNode): TGskBlendMode; cdecl; external gtklib;
function gsk_cross_fade_node_get_type: TGType; cdecl; external gtklib;
function gsk_cross_fade_node_new(start: PGskRenderNode; _end: PGskRenderNode; progress: single): PGskRenderNode; cdecl; external gtklib;
function gsk_cross_fade_node_get_start_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_cross_fade_node_get_end_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_cross_fade_node_get_progress(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_text_node_get_type: TGType; cdecl; external gtklib;
function gsk_text_node_new(font: PPangoFont; glyphs: PPangoGlyphString; color: PGdkRGBA; offset: Pgraphene_point_t): PGskRenderNode; cdecl; external gtklib;
function gsk_text_node_get_font(node: PGskRenderNode): PPangoFont; cdecl; external gtklib;
function gsk_text_node_has_color_glyphs(node: PGskRenderNode): Tgboolean; cdecl; external gtklib;
function gsk_text_node_get_num_glyphs(node: PGskRenderNode): Tguint; cdecl; external gtklib;
function gsk_text_node_get_glyphs(node: PGskRenderNode; n_glyphs: Pguint): PPangoGlyphInfo; cdecl; external gtklib;
function gsk_text_node_get_color(node: PGskRenderNode): PGdkRGBA; cdecl; external gtklib;
function gsk_text_node_get_offset(node: PGskRenderNode): Pgraphene_point_t; cdecl; external gtklib;
function gsk_blur_node_get_type: TGType; cdecl; external gtklib;
function gsk_blur_node_new(child: PGskRenderNode; radius: single): PGskRenderNode; cdecl; external gtklib;
function gsk_blur_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_blur_node_get_radius(node: PGskRenderNode): single; cdecl; external gtklib;
function gsk_mask_node_get_type: TGType; cdecl; external gtklib;
function gsk_mask_node_new(Source: PGskRenderNode; mask: PGskRenderNode; mask_mode: TGskMaskMode): PGskRenderNode; cdecl; external gtklib;
function gsk_mask_node_get_source(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_mask_node_get_mask(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_mask_node_get_mask_mode(node: PGskRenderNode): TGskMaskMode; cdecl; external gtklib;
function gsk_gl_shader_node_get_type: TGType; cdecl; external gtklib;
function gsk_gl_shader_node_new(shader: PGskGLShader; bounds: Pgraphene_rect_t; args: PGBytes; children: PPGskRenderNode; n_children: Tguint): PGskRenderNode; cdecl; external gtklib;
function gsk_gl_shader_node_get_n_children(node: PGskRenderNode): Tguint; cdecl; external gtklib;
function gsk_gl_shader_node_get_child(node: PGskRenderNode; idx: Tguint): PGskRenderNode; cdecl; external gtklib;
function gsk_gl_shader_node_get_args(node: PGskRenderNode): PGBytes; cdecl; external gtklib;
function gsk_gl_shader_node_get_shader(node: PGskRenderNode): PGskGLShader; cdecl; external gtklib;
function gsk_subsurface_node_get_type: TGType; cdecl; external gtklib;
function gsk_subsurface_node_new(child: PGskRenderNode; subsurface: Tgpointer): PGskRenderNode; cdecl; external gtklib;
function gsk_subsurface_node_get_child(node: PGskRenderNode): PGskRenderNode; cdecl; external gtklib;
function gsk_subsurface_node_get_subsurface(node: PGskRenderNode): Tgpointer; cdecl; external gtklib;

function GSK_VALUE_HOLDS_RENDER_NODE(Value: PGValue): Tgboolean;

procedure gsk_value_set_render_node(Value: PGValue; node: PGskRenderNode); cdecl; external gtklib;
procedure gsk_value_take_render_node(Value: PGValue; node: PGskRenderNode); cdecl; external gtklib;
function gsk_value_get_render_node(Value: PGValue): PGskRenderNode; cdecl; external gtklib;
function gsk_value_dup_render_node(Value: PGValue): PGskRenderNode; cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:35:33 ===

function GSK_TYPE_RENDER_NODE: TGType;
function GSK_IS_RENDER_NODE(obj: Pointer): Tgboolean;

implementation

function GSK_TYPE_RENDER_NODE: TGType;
begin
  GSK_TYPE_RENDER_NODE := gsk_render_node_get_type;
end;

function GSK_IS_RENDER_NODE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_RENDER_NODE);
end;



function GSK_SERIALIZATION_ERROR: TGQuark;
begin
  Result := gsk_serialization_error_quark;
end;


function GSK_TYPE_DEBUG_NODE: TGType;
begin
  GSK_TYPE_DEBUG_NODE := gsk_debug_node_get_type;
end;


function GSK_TYPE_COLOR_NODE: TGType;
begin
  GSK_TYPE_COLOR_NODE := gsk_color_node_get_type;
end;


function GSK_TYPE_TEXTURE_NODE: TGType;
begin
  GSK_TYPE_TEXTURE_NODE := gsk_texture_node_get_type;
end;


function GSK_TYPE_TEXTURE_SCALE_NODE: TGType;
begin
  GSK_TYPE_TEXTURE_SCALE_NODE := gsk_texture_scale_node_get_type;
end;


function GSK_TYPE_LINEAR_GRADIENT_NODE: TGType;
begin
  GSK_TYPE_LINEAR_GRADIENT_NODE := gsk_linear_gradient_node_get_type;
end;


function GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE: TGType;
begin
  GSK_TYPE_REPEATING_LINEAR_GRADIENT_NODE := gsk_repeating_linear_gradient_node_get_type;
end;


function GSK_TYPE_RADIAL_GRADIENT_NODE: TGType;
begin
  GSK_TYPE_RADIAL_GRADIENT_NODE := gsk_radial_gradient_node_get_type;
end;


function GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE: TGType;
begin
  GSK_TYPE_REPEATING_RADIAL_GRADIENT_NODE := gsk_repeating_radial_gradient_node_get_type;
end;


function GSK_TYPE_CONIC_GRADIENT_NODE: TGType;
begin
  GSK_TYPE_CONIC_GRADIENT_NODE := gsk_conic_gradient_node_get_type;
end;


function GSK_TYPE_BORDER_NODE: TGType;
begin
  GSK_TYPE_BORDER_NODE := gsk_border_node_get_type;
end;


function GSK_TYPE_INSET_SHADOW_NODE: TGType;
begin
  GSK_TYPE_INSET_SHADOW_NODE := gsk_inset_shadow_node_get_type;
end;


function GSK_TYPE_OUTSET_SHADOW_NODE: TGType;
begin
  GSK_TYPE_OUTSET_SHADOW_NODE := gsk_outset_shadow_node_get_type;
end;


function GSK_TYPE_CAIRO_NODE: TGType;
begin
  GSK_TYPE_CAIRO_NODE := gsk_cairo_node_get_type;
end;


function GSK_TYPE_CONTAINER_NODE: TGType;
begin
  GSK_TYPE_CONTAINER_NODE := gsk_container_node_get_type;
end;


function GSK_TYPE_TRANSFORM_NODE: TGType;
begin
  GSK_TYPE_TRANSFORM_NODE := gsk_transform_node_get_type;
end;


function GSK_TYPE_OPACITY_NODE: TGType;
begin
  GSK_TYPE_OPACITY_NODE := gsk_opacity_node_get_type;
end;


function GSK_TYPE_COLOR_MATRIX_NODE: TGType;
begin
  GSK_TYPE_COLOR_MATRIX_NODE := gsk_color_matrix_node_get_type;
end;


function GSK_TYPE_REPEAT_NODE: TGType;
begin
  GSK_TYPE_REPEAT_NODE := gsk_repeat_node_get_type;
end;


function GSK_TYPE_CLIP_NODE: TGType;
begin
  GSK_TYPE_CLIP_NODE := gsk_clip_node_get_type;
end;


function GSK_TYPE_ROUNDED_CLIP_NODE: TGType;
begin
  GSK_TYPE_ROUNDED_CLIP_NODE := gsk_rounded_clip_node_get_type;
end;


function GSK_TYPE_FILL_NODE: TGType;
begin
  GSK_TYPE_FILL_NODE := gsk_fill_node_get_type;
end;


function GSK_TYPE_STROKE_NODE: TGType;
begin
  GSK_TYPE_STROKE_NODE := gsk_stroke_node_get_type;
end;


function GSK_TYPE_SHADOW_NODE: TGType;
begin
  GSK_TYPE_SHADOW_NODE := gsk_shadow_node_get_type;
end;


function GSK_TYPE_BLEND_NODE: TGType;
begin
  GSK_TYPE_BLEND_NODE := gsk_blend_node_get_type;
end;


function GSK_TYPE_CROSS_FADE_NODE: TGType;
begin
  GSK_TYPE_CROSS_FADE_NODE := gsk_cross_fade_node_get_type;
end;


function GSK_TYPE_TEXT_NODE: TGType;
begin
  GSK_TYPE_TEXT_NODE := gsk_text_node_get_type;
end;


function GSK_TYPE_BLUR_NODE: TGType;
begin
  GSK_TYPE_BLUR_NODE := gsk_blur_node_get_type;
end;


function GSK_TYPE_MASK_NODE: TGType;
begin
  GSK_TYPE_MASK_NODE := gsk_mask_node_get_type;
end;


function GSK_TYPE_GL_SHADER_NODE: TGType;
begin
  GSK_TYPE_GL_SHADER_NODE := gsk_gl_shader_node_get_type;
end;


function GSK_TYPE_SUBSURFACE_NODE: TGType;
begin
  GSK_TYPE_SUBSURFACE_NODE := gsk_subsurface_node_get_type;
end;


function GSK_VALUE_HOLDS_RENDER_NODE(Value: PGValue): Tgboolean;
begin
  GSK_VALUE_HOLDS_RENDER_NODE := G_VALUE_HOLDS(Value, GSK_TYPE_RENDER_NODE);
end;


end.
