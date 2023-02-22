
  Type
  Pcairo_region_t  = ^cairo_region_t;
  PGdkSurface  = ^GdkSurface;
  PGdkTexture  = ^GdkTexture;
  PGError  = ^GError;
  Pgraphene_rect_t  = ^graphene_rect_t;
  PGskRenderer  = ^GskRenderer;
  PGskRenderNode  = ^GskRenderNode;
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
{$ifndef __GSK_RENDERER_H__}
{$define __GSK_RENDERER_H__}  
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gsktypes.h>}
{$include <gsk/gskrendernode.h>}

  { was #define dname def_expr }
  function GSK_TYPE_RENDERER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_RENDERER(obj : longint) : longint;  


  type
    _GskRendererClass = GskRendererClass;
(* error 
GType gsk_renderer_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gsk_renderer_new_for_surface(surface:PGdkSurface):^GskRenderer;

  function gsk_renderer_get_surface(renderer:PGskRenderer):^GdkSurface;

  function gsk_renderer_realize(renderer:PGskRenderer; surface:PGdkSurface; error:PPGError):gboolean;

  procedure gsk_renderer_unrealize(renderer:PGskRenderer);

  function gsk_renderer_is_realized(renderer:PGskRenderer):gboolean;

(* Const before type ignored *)
  function gsk_renderer_render_texture(renderer:PGskRenderer; root:PGskRenderNode; viewport:Pgraphene_rect_t):^GdkTexture;

(* Const before type ignored *)
  procedure gsk_renderer_render(renderer:PGskRenderer; root:PGskRenderNode; region:Pcairo_region_t);

{$endif}
  { __GSK_RENDERER_H__  }
  { was #define dname def_expr }
  function GSK_TYPE_RENDERER : longint; { return type might be wrong }
    begin
      GSK_TYPE_RENDERER:=gsk_renderer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_RENDERER(obj : longint) : longint;
  begin
    GSK_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_RENDERER,GskRenderer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_RENDERER(obj : longint) : longint;
  begin
    GSK_IS_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_RENDERER);
  end;

  function gsk_renderer_new_for_surface(surface:PGdkSurface):PGskRenderer;
  begin
    { You must implement this function }
  end;
  function gsk_renderer_get_surface(renderer:PGskRenderer):PGdkSurface;
  begin
    { You must implement this function }
  end;
  function gsk_renderer_realize(renderer:PGskRenderer; surface:PGdkSurface; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gsk_renderer_unrealize(renderer:PGskRenderer);
  begin
    { You must implement this function }
  end;
  function gsk_renderer_is_realized(renderer:PGskRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  function gsk_renderer_render_texture(renderer:PGskRenderer; root:PGskRenderNode; viewport:Pgraphene_rect_t):PGdkTexture;
  begin
    { You must implement this function }
  end;
  procedure gsk_renderer_render(renderer:PGskRenderer; root:PGskRenderNode; region:Pcairo_region_t);
  begin
    { You must implement this function }
  end;

