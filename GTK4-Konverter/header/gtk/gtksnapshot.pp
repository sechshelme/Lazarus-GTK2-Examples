
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


  { GTK - The GIMP Toolkit
   * Copyright (C) 2016 Benjamin Otte <otte@gnome.org>
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
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_SNAPSHOT_H__}
{$define __GTK_SNAPSHOT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gsk/gsk.h>}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  type
    _GtkSnapshotClass = GtkSnapshotClass;

  { was #define dname def_expr }
  function GTK_TYPE_SNAPSHOT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SNAPSHOT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SNAPSHOT(obj : longint) : longint;  

  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_snapshot_get_type:GType;

  { Zeile entfernt  }
  function gtk_snapshot_new:^GtkSnapshot;

  { Zeile entfernt  }
  function gtk_snapshot_free_to_node(snapshot:PGtkSnapshot):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_snapshot_free_to_paintable(snapshot:PGtkSnapshot; size:Pgraphene_size_t):^GdkPaintable;

  { Zeile entfernt  }
  function gtk_snapshot_to_node(snapshot:PGtkSnapshot):^GskRenderNode;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_snapshot_to_paintable(snapshot:PGtkSnapshot; size:Pgraphene_size_t):^GdkPaintable;

  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                         ...) G_GNUC_PRINTF (2, 3);
(* error 
                                                         ...) G_GNUC_PRINTF (2, 3);
 in declarator_list *)
 in declarator_list *)
  { Zeile entfernt  }
  procedure gtk_snapshot_push_opacity(snapshot:PGtkSnapshot; opacity:double);

  { Zeile entfernt  }
  procedure gtk_snapshot_push_blur(snapshot:PGtkSnapshot; radius:double);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_push_color_matrix(snapshot:PGtkSnapshot; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_push_repeat(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; child_bounds:Pgraphene_rect_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_push_clip(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_push_rounded_clip(snapshot:PGtkSnapshot; bounds:PGskRoundedRect);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_push_shadow(snapshot:PGtkSnapshot; shadow:PGskShadow; n_shadows:gsize);

  { Zeile entfernt  }
  procedure gtk_snapshot_push_blend(snapshot:PGtkSnapshot; blend_mode:GskBlendMode);

  { Zeile entfernt  }
  procedure gtk_snapshot_push_cross_fade(snapshot:PGtkSnapshot; progress:double);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_push_gl_shader(snapshot:PGtkSnapshot; shader:PGskGLShader; bounds:Pgraphene_rect_t; take_args:PGBytes);

  { Zeile entfernt  }
  procedure gtk_snapshot_gl_shader_pop_texture(snapshot:PGtkSnapshot);

  { Zeile entfernt  }
  procedure gtk_snapshot_pop(snapshot:PGtkSnapshot);

  { Zeile entfernt  }
  procedure gtk_snapshot_save(snapshot:PGtkSnapshot);

  { Zeile entfernt  }
  procedure gtk_snapshot_restore(snapshot:PGtkSnapshot);

  { Zeile entfernt  }
  procedure gtk_snapshot_transform(snapshot:PGtkSnapshot; transform:PGskTransform);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_transform_matrix(snapshot:PGtkSnapshot; matrix:Pgraphene_matrix_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_translate(snapshot:PGtkSnapshot; point:Pgraphene_point_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_translate_3d(snapshot:PGtkSnapshot; point:Pgraphene_point3d_t);

  { Zeile entfernt  }
  procedure gtk_snapshot_rotate(snapshot:PGtkSnapshot; angle:single);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_rotate_3d(snapshot:PGtkSnapshot; angle:single; axis:Pgraphene_vec3_t);

  { Zeile entfernt  }
  procedure gtk_snapshot_scale(snapshot:PGtkSnapshot; factor_x:single; factor_y:single);

  { Zeile entfernt  }
  procedure gtk_snapshot_scale_3d(snapshot:PGtkSnapshot; factor_x:single; factor_y:single; factor_z:single);

  { Zeile entfernt  }
  procedure gtk_snapshot_perspective(snapshot:PGtkSnapshot; depth:single);

  { Zeile entfernt  }
  procedure gtk_snapshot_append_node(snapshot:PGtkSnapshot; node:PGskRenderNode);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_snapshot_append_cairo(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t):^cairo_t;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_append_texture(snapshot:PGtkSnapshot; texture:PGdkTexture; bounds:Pgraphene_rect_t);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_color(snapshot:PGtkSnapshot; color:PGdkRGBA; bounds:Pgraphene_rect_t);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_linear_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; start_point:Pgraphene_point_t; end_point:Pgraphene_point_t; stops:PGskColorStop; 
              n_stops:gsize);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_repeating_linear_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; start_point:Pgraphene_point_t; end_point:Pgraphene_point_t; stops:PGskColorStop; 
              n_stops:gsize);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_radial_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; 
              start:single; end:single; stops:PGskColorStop; n_stops:gsize);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_repeating_radial_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; 
              start:single; end:single; stops:PGskColorStop; n_stops:gsize);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_conic_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; stops:PGskColorStop; 
              n_stops:gsize);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_border(snapshot:PGtkSnapshot; outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of GdkRGBA);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_inset_shadow(snapshot:PGtkSnapshot; outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; 
              spread:single; blur_radius:single);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_snapshot_append_outset_shadow(snapshot:PGtkSnapshot; outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; 
              spread:single; blur_radius:single);

  { next function implemented in gskpango.c  }
  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_snapshot_append_layout(snapshot:PGtkSnapshot; layout:PPangoLayout; color:PGdkRGBA);

  { Zeile entfernt  }
  procedure gtk_snapshot_render_background(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_snapshot_render_frame(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_snapshot_render_focus(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; width:double; 
              height:double);

  { Zeile entfernt  }
  procedure gtk_snapshot_render_layout(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; layout:PPangoLayout);

  { Zeile entfernt  }
  procedure gtk_snapshot_render_insertion_cursor(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; layout:PPangoLayout; 
              index:longint; direction:PangoDirection);

  { Zeile entfernt  }
{$endif}
  { __GTK_SNAPSHOT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SNAPSHOT : longint; { return type might be wrong }
    begin
      GTK_TYPE_SNAPSHOT:=gtk_snapshot_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SNAPSHOT(obj : longint) : longint;
  begin
    GTK_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SNAPSHOT,GtkSnapshot);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SNAPSHOT(obj : longint) : longint;
  begin
    GTK_IS_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SNAPSHOT);
  end;

  function gtk_snapshot_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_snapshot_new:PGtkSnapshot;
  begin
    { You must implement this function }
  end;
  function gtk_snapshot_free_to_node(snapshot:PGtkSnapshot):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gtk_snapshot_free_to_paintable(snapshot:PGtkSnapshot; size:Pgraphene_size_t):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_snapshot_to_node(snapshot:PGtkSnapshot):PGskRenderNode;
  begin
    { You must implement this function }
  end;
  function gtk_snapshot_to_paintable(snapshot:PGtkSnapshot; size:Pgraphene_size_t):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_opacity(snapshot:PGtkSnapshot; opacity:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_blur(snapshot:PGtkSnapshot; radius:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_color_matrix(snapshot:PGtkSnapshot; color_matrix:Pgraphene_matrix_t; color_offset:Pgraphene_vec4_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_repeat(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; child_bounds:Pgraphene_rect_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_clip(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_rounded_clip(snapshot:PGtkSnapshot; bounds:PGskRoundedRect);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_shadow(snapshot:PGtkSnapshot; shadow:PGskShadow; n_shadows:gsize);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_blend(snapshot:PGtkSnapshot; blend_mode:GskBlendMode);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_cross_fade(snapshot:PGtkSnapshot; progress:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_push_gl_shader(snapshot:PGtkSnapshot; shader:PGskGLShader; bounds:Pgraphene_rect_t; take_args:PGBytes);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_gl_shader_pop_texture(snapshot:PGtkSnapshot);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_pop(snapshot:PGtkSnapshot);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_save(snapshot:PGtkSnapshot);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_restore(snapshot:PGtkSnapshot);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_transform(snapshot:PGtkSnapshot; transform:PGskTransform);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_transform_matrix(snapshot:PGtkSnapshot; matrix:Pgraphene_matrix_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_translate(snapshot:PGtkSnapshot; point:Pgraphene_point_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_translate_3d(snapshot:PGtkSnapshot; point:Pgraphene_point3d_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_rotate(snapshot:PGtkSnapshot; angle:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_rotate_3d(snapshot:PGtkSnapshot; angle:single; axis:Pgraphene_vec3_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_scale(snapshot:PGtkSnapshot; factor_x:single; factor_y:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_scale_3d(snapshot:PGtkSnapshot; factor_x:single; factor_y:single; factor_z:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_perspective(snapshot:PGtkSnapshot; depth:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_node(snapshot:PGtkSnapshot; node:PGskRenderNode);
  begin
    { You must implement this function }
  end;
  function gtk_snapshot_append_cairo(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t):Pcairo_t;
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_texture(snapshot:PGtkSnapshot; texture:PGdkTexture; bounds:Pgraphene_rect_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_color(snapshot:PGtkSnapshot; color:PGdkRGBA; bounds:Pgraphene_rect_t);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_linear_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; start_point:Pgraphene_point_t; end_point:Pgraphene_point_t; stops:PGskColorStop; 
              n_stops:gsize);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_repeating_linear_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; start_point:Pgraphene_point_t; end_point:Pgraphene_point_t; stops:PGskColorStop; 
              n_stops:gsize);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_radial_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; 
              start:single; end:single; stops:PGskColorStop; n_stops:gsize);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_repeating_radial_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; hradius:single; vradius:single; 
              start:single; end:single; stops:PGskColorStop; n_stops:gsize);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_conic_gradient(snapshot:PGtkSnapshot; bounds:Pgraphene_rect_t; center:Pgraphene_point_t; rotation:single; stops:PGskColorStop; 
              n_stops:gsize);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_border(snapshot:PGtkSnapshot; outline:PGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of GdkRGBA);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_inset_shadow(snapshot:PGtkSnapshot; outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; 
              spread:single; blur_radius:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_outset_shadow(snapshot:PGtkSnapshot; outline:PGskRoundedRect; color:PGdkRGBA; dx:single; dy:single; 
              spread:single; blur_radius:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_append_layout(snapshot:PGtkSnapshot; layout:PPangoLayout; color:PGdkRGBA);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_render_background(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_render_frame(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_render_focus(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; width:double; 
              height:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_render_layout(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; layout:PPangoLayout);
  begin
    { You must implement this function }
  end;
  procedure gtk_snapshot_render_insertion_cursor(snapshot:PGtkSnapshot; context:PGtkStyleContext; x:double; y:double; layout:PPangoLayout; 
              index:longint; direction:PangoDirection);
  begin
    { You must implement this function }
  end;

