
unit gtksnapshot;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksnapshot.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksnapshot.h
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
Pcairo_t  = ^cairo_t;
PGBytes  = ^GBytes;
PGdkPaintable  = ^GdkPaintable;
PGdkRGBA  = ^GdkRGBA;
PGdkTexture  = ^GdkTexture;
Pgraphene_matrix_t  = ^graphene_matrix_t;
Pgraphene_point3d_t  = ^graphene_point3d_t;
Pgraphene_point_t  = ^graphene_point_t;
Pgraphene_rect_t  = ^graphene_rect_t;
Pgraphene_size_t  = ^graphene_size_t;
Pgraphene_vec3_t  = ^graphene_vec3_t;
Pgraphene_vec4_t  = ^graphene_vec4_t;
PGskColorStop  = ^GskColorStop;
PGskGLShader  = ^GskGLShader;
PGskRenderNode  = ^GskRenderNode;
PGskRoundedRect  = ^GskRoundedRect;
PGskShadow  = ^GskShadow;
PGskTransform  = ^GskTransform;
PGtkSnapshot  = ^GtkSnapshot;
PGtkStyleContext  = ^GtkStyleContext;
PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SNAPSHOT_H__}
{$define __GTK_SNAPSHOT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gsk/gsk.h>}
{$include <gtk/gtktypes.h>}

type

function GTK_TYPE_SNAPSHOT : longint; { return type might be wrong }

function GTK_SNAPSHOT(obj : longint) : longint;

function GTK_IS_SNAPSHOT(obj : longint) : longint;



function gtk_snapshot_get_type:TGType;cdecl;external;

function gtk_snapshot_new:PGtkSnapshot;cdecl;external;

function gtk_snapshot_free_to_node(snapshot:PGtkSnapshot):PGskRenderNode;cdecl;external;

function gtk_snapshot_free_to_paintable(snapshot:PGtkSnapshot; size:Pgraphene_size_t):PGdkPaintable;cdecl;external;

function gtk_snapshot_to_node(snapshot:PGtkSnapshot):PGskRenderNode;cdecl;external;

function gtk_snapshot_to_paintable(snapshot:PGtkSnapshot; size:Pgraphene_size_t):PGdkPaintable;cdecl;external;

(* error 
                                                         ...) G_GNUC_PRINTF (2, 3);
(* error 
                                                         ...) G_GNUC_PRINTF (2, 3);
 in declarator_list *)
 in declarator_list *)

procedure gtk_snapshot_push_opacity(snapshot:PGtkSnapshot; opacity:Tdouble);cdecl;external;

procedure gtk_snapshot_push_blur(snapshot:PGtkSnapshot; radius:Tdouble);cdecl;external;

procedure gtk_snapshot_push_color_matrix(snapshot:PGtkSnapshot; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t);cdecl;external;

procedure gtk_snapshot_push_repeat(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; child_bounds:Pgraphene_rect_t);cdecl;external;

procedure gtk_snapshot_push_clip(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t);cdecl;external;

procedure gtk_snapshot_push_rounded_clip(snapshot:PGtkSnapshot; bounds:PGskRoundedRect);cdecl;external;

procedure gtk_snapshot_push_shadow(snapshot:PGtkSnapshot; shadow:PGskShadow; n_shadows:Tgsize);cdecl;external;

procedure gtk_snapshot_push_blend(snapshot:PGtkSnapshot; blend_mode:TGskBlendMode);cdecl;external;

procedure gtk_snapshot_push_cross_fade(snapshot:PGtkSnapshot; progress:Tdouble);cdecl;external;

procedure gtk_snapshot_push_gl_shader(snapshot:PGtkSnapshot; shader:PGskGLShader; bounds:Pgraphene_rect_t; take_args:PGBytes);cdecl;external;

procedure gtk_snapshot_gl_shader_pop_texture(snapshot:PGtkSnapshot);cdecl;external;

procedure gtk_snapshot_pop(snapshot:PGtkSnapshot);cdecl;external;

procedure gtk_snapshot_save(snapshot:PGtkSnapshot);cdecl;external;

procedure gtk_snapshot_restore(snapshot:PGtkSnapshot);cdecl;external;

procedure gtk_snapshot_transform(snapshot:PGtkSnapshot; transform:PGskTransform);cdecl;external;

procedure gtk_snapshot_transform_matrix(snapshot:PGtkSnapshot; matrix:Pgraphene_matrix_t);cdecl;external;

procedure gtk_snapshot_translate(snapshot:PGtkSnapshot; point:Pgraphene_point_t);cdecl;external;

procedure gtk_snapshot_translate_3d(snapshot:PGtkSnapshot; point:Pgraphene_point3d_t);cdecl;external;

procedure gtk_snapshot_rotate(snapshot:PGtkSnapshot; angle:single);cdecl;external;

procedure gtk_snapshot_rotate_3d(snapshot:PGtkSnapshot; angle:single; axis:Pgraphene_vec3_t);cdecl;external;

procedure gtk_snapshot_scale(snapshot:PGtkSnapshot; factor_x:single; factor_y:single);cdecl;external;

procedure gtk_snapshot_scale_3d(snapshot:PGtkSnapshot; factor_x:single; factor_y:single; factor_z:single);cdecl;external;

procedure gtk_snapshot_perspective(snapshot:PGtkSnapshot; depth:single);cdecl;external;

procedure gtk_snapshot_append_node(snapshot:PGtkSnapshot; node:PGskRenderNode);cdecl;external;

function gtk_snapshot_append_cairo(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t):Pcairo_t;cdecl;external;

procedure gtk_snapshot_append_texture(snapshot:PGtkSnapshot; texture:PGdkTexture; bounds:Pgraphene_rect_t);cdecl;external;

procedure gtk_snapshot_append_color(snapshot:PGtkSnapshot; color:PGdkRGBA; bounds:Pgraphene_rect_t);cdecl;external;

procedure gtk_snapshot_append_linear_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; start_point:Pgraphene_point_t; end_point:Pgraphene_point_t; stops:PGskColorStop; 
            n_stops:Tgsize);cdecl;external;

procedure gtk_snapshot_append_repeating_linear_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; start_point:Pgraphene_point_t; end_point:Pgraphene_point_t; stops:PGskColorStop; 
            n_stops:Tgsize);cdecl;external;

procedure gtk_snapshot_append_radial_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; 
            start:single; end:single; stops:PGskColorStop; n_stops:Tgsize);cdecl;external;

procedure gtk_snapshot_append_repeating_radial_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; 
            start:single; end:single; stops:PGskColorStop; n_stops:Tgsize);cdecl;external;

procedure gtk_snapshot_append_conic_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; stops:PGskColorStop; 
            n_stops:Tgsize);cdecl;external;

procedure gtk_snapshot_append_border(snapshot:PGtkSnapshot; outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of TGdkRGBA);cdecl;external;

procedure gtk_snapshot_append_inset_shadow(snapshot:PGtkSnapshot; outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; 
            spread:single; blur_radius:single);cdecl;external;

procedure gtk_snapshot_append_outset_shadow(snapshot:PGtkSnapshot; outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; 
            spread:single; blur_radius:single);cdecl;external;


procedure gtk_snapshot_append_layout(snapshot:PGtkSnapshot; layout:PPangoLayout; color:PGdkRGBA);cdecl;external;

procedure gtk_snapshot_render_background(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_snapshot_render_frame(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_snapshot_render_focus(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;

procedure gtk_snapshot_render_layout(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:Tdouble; y:Tdouble; layout:PPangoLayout);cdecl;external;

procedure gtk_snapshot_render_insertion_cursor(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:Tdouble; y:Tdouble; layout:PPangoLayout; 
            index:longint; direction:TPangoDirection);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SNAPSHOT : longint; { return type might be wrong }
  begin
    GTK_TYPE_SNAPSHOT:=gtk_snapshot_get_type;
  end;

function GTK_SNAPSHOT(obj : longint) : longint;
begin
  GTK_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SNAPSHOT,GtkSnapshot);
end;

function GTK_IS_SNAPSHOT(obj : longint) : longint;
begin
  GTK_IS_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SNAPSHOT);
end;


end.
