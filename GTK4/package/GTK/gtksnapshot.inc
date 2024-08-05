/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  // Ausgelagert wegen gtkwidget
  //    TGtkSnapshot = TGdkSnapshot;
  //  PGtkSnapshot = ^TGtkSnapshot;

  TGtkSnapshotClass = record // _GtkSnapshotClass
  end;
  PGtkSnapshotClass = ^TGtkSnapshotClass;


function gtk_snapshot_get_type: TGType; cdecl; external gtklib;
function gtk_snapshot_new: PGtkSnapshot; cdecl; external gtklib;
function gtk_snapshot_free_to_node(snapshot: PGtkSnapshot): PGskRenderNode; cdecl; external gtklib;
function gtk_snapshot_free_to_paintable(snapshot: PGtkSnapshot; size: Pgraphene_size_t): PGdkPaintable; cdecl; external gtklib;
function gtk_snapshot_to_node(snapshot: PGtkSnapshot): PGskRenderNode; cdecl; external gtklib;
function gtk_snapshot_to_paintable(snapshot: PGtkSnapshot; size: Pgraphene_size_t): PGdkPaintable; cdecl; external gtklib;
procedure gtk_snapshot_push_debug(snapshot: PGtkSnapshot; message: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_snapshot_push_debug(snapshot: PGtkSnapshot; message: PChar); cdecl; external gtklib;
procedure gtk_snapshot_push_opacity(snapshot: PGtkSnapshot; opacity: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_push_blur(snapshot: PGtkSnapshot; radius: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_push_color_matrix(snapshot: PGtkSnapshot; color_matrix: Pgraphene_matrix_t; color_offset: Pgraphene_vec4_t); cdecl; external gtklib;
procedure gtk_snapshot_push_repeat(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t; child_bounds: Pgraphene_rect_t); cdecl; external gtklib;
procedure gtk_snapshot_push_clip(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t); cdecl; external gtklib;
procedure gtk_snapshot_push_rounded_clip(snapshot: PGtkSnapshot; bounds: PGskRoundedRect); cdecl; external gtklib;
procedure gtk_snapshot_push_fill(snapshot: PGtkSnapshot; path: PGskPath; fill_rule: TGskFillRule); cdecl; external gtklib;
procedure gtk_snapshot_push_stroke(snapshot: PGtkSnapshot; path: PGskPath; stroke: PGskStroke); cdecl; external gtklib;
procedure gtk_snapshot_push_shadow(snapshot: PGtkSnapshot; shadow: PGskShadow; n_shadows: Tgsize); cdecl; external gtklib;
procedure gtk_snapshot_push_blend(snapshot: PGtkSnapshot; blend_mode: TGskBlendMode); cdecl; external gtklib;
procedure gtk_snapshot_push_mask(snapshot: PGtkSnapshot; mask_mode: TGskMaskMode); cdecl; external gtklib;
procedure gtk_snapshot_push_cross_fade(snapshot: PGtkSnapshot; progress: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_push_gl_shader(snapshot: PGtkSnapshot; shader: PGskGLShader; bounds: Pgraphene_rect_t; take_args: PGBytes); cdecl; external gtklib;
procedure gtk_snapshot_gl_shader_pop_texture(snapshot: PGtkSnapshot); cdecl; external gtklib;
procedure gtk_snapshot_pop(snapshot: PGtkSnapshot); cdecl; external gtklib;
procedure gtk_snapshot_save(snapshot: PGtkSnapshot); cdecl; external gtklib;
procedure gtk_snapshot_restore(snapshot: PGtkSnapshot); cdecl; external gtklib;
procedure gtk_snapshot_transform(snapshot: PGtkSnapshot; transform: PGskTransform); cdecl; external gtklib;
procedure gtk_snapshot_transform_matrix(snapshot: PGtkSnapshot; matrix: Pgraphene_matrix_t); cdecl; external gtklib;
procedure gtk_snapshot_translate(snapshot: PGtkSnapshot; point: Pgraphene_point_t); cdecl; external gtklib;
procedure gtk_snapshot_translate_3d(snapshot: PGtkSnapshot; point: Pgraphene_point3d_t); cdecl; external gtklib;
procedure gtk_snapshot_rotate(snapshot: PGtkSnapshot; angle: single); cdecl; external gtklib;
procedure gtk_snapshot_rotate_3d(snapshot: PGtkSnapshot; angle: single; axis: Pgraphene_vec3_t); cdecl; external gtklib;
procedure gtk_snapshot_scale(snapshot: PGtkSnapshot; factor_x: single; factor_y: single); cdecl; external gtklib;
procedure gtk_snapshot_scale_3d(snapshot: PGtkSnapshot; factor_x: single; factor_y: single; factor_z: single); cdecl; external gtklib;
procedure gtk_snapshot_perspective(snapshot: PGtkSnapshot; depth: single); cdecl; external gtklib;
procedure gtk_snapshot_append_node(snapshot: PGtkSnapshot; node: PGskRenderNode); cdecl; external gtklib;
function gtk_snapshot_append_cairo(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t): Pcairo_t; cdecl; external gtklib;
procedure gtk_snapshot_append_texture(snapshot: PGtkSnapshot; texture: PGdkTexture; bounds: Pgraphene_rect_t); cdecl; external gtklib;
procedure gtk_snapshot_append_scaled_texture(snapshot: PGtkSnapshot; texture: PGdkTexture; filter: TGskScalingFilter; bounds: Pgraphene_rect_t); cdecl; external gtklib;
procedure gtk_snapshot_append_color(snapshot: PGtkSnapshot; color: PGdkRGBA; bounds: Pgraphene_rect_t); cdecl; external gtklib;
procedure gtk_snapshot_append_linear_gradient(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t; start_point: Pgraphene_point_t; end_point: Pgraphene_point_t; stops: PGskColorStop;
  n_stops: Tgsize); cdecl; external gtklib;
procedure gtk_snapshot_append_repeating_linear_gradient(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t; start_point: Pgraphene_point_t; end_point: Pgraphene_point_t; stops: PGskColorStop;
  n_stops: Tgsize); cdecl; external gtklib;
procedure gtk_snapshot_append_radial_gradient(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t; center: Pgraphene_point_t; hradius: single; vradius: single;
  start: single; _end: single; stops: PGskColorStop; n_stops: Tgsize); cdecl; external gtklib;
procedure gtk_snapshot_append_repeating_radial_gradient(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t; center: Pgraphene_point_t; hradius: single; vradius: single;
  start: single; _end: single; stops: PGskColorStop; n_stops: Tgsize); cdecl; external gtklib;
procedure gtk_snapshot_append_conic_gradient(snapshot: PGtkSnapshot; bounds: Pgraphene_rect_t; center: Pgraphene_point_t; rotation: single; stops: PGskColorStop;
  n_stops: Tgsize); cdecl; external gtklib;

type
  TVector4f = array[0..3] of single;
  Tborder_colors = array[0..3] of TGdkRGBA;

procedure gtk_snapshot_append_border(snapshot: PGtkSnapshot; outline: PGskRoundedRect; border_width: TVector4f; border_color: Tborder_colors); cdecl; external gtklib;
procedure gtk_snapshot_append_inset_shadow(snapshot: PGtkSnapshot; outline: PGskRoundedRect; color: PGdkRGBA; dx: single; dy: single;
  spread: single; blur_radius: single); cdecl; external gtklib;
procedure gtk_snapshot_append_outset_shadow(snapshot: PGtkSnapshot; outline: PGskRoundedRect; color: PGdkRGBA; dx: single; dy: single;
  spread: single; blur_radius: single); cdecl; external gtklib;
procedure gtk_snapshot_append_layout(snapshot: PGtkSnapshot; layout: PPangoLayout; color: PGdkRGBA); cdecl; external gtklib;
procedure gtk_snapshot_append_fill(snapshot: PGtkSnapshot; path: PGskPath; fill_rule: TGskFillRule; color: PGdkRGBA); cdecl; external gtklib;
procedure gtk_snapshot_append_stroke(snapshot: PGtkSnapshot; path: PGskPath; stroke: PGskStroke; color: PGdkRGBA); cdecl; external gtklib;

// === Konventiert am: 20-7-24 15:11:54 ===

function GTK_TYPE_SNAPSHOT: TGType;
function GTK_SNAPSHOT(obj: Pointer): PGtkSnapshot;
function GTK_IS_SNAPSHOT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SNAPSHOT: TGType;
begin
  GTK_TYPE_SNAPSHOT := gtk_snapshot_get_type;
end;

function GTK_SNAPSHOT(obj: Pointer): PGtkSnapshot;
begin
  Result := PGtkSnapshot(g_type_check_instance_cast(obj, GTK_TYPE_SNAPSHOT));
end;

function GTK_IS_SNAPSHOT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SNAPSHOT);
end;



{$ENDIF read_implementation}
