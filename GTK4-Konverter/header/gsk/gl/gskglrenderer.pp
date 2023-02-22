
  Type
  PGskRenderer  = ^GskRenderer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gskglrenderer.h
   *
   * Copyright 2020 Christian Hergert <chergert@redhat.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this program.  If not, see <http://www.gnu.org/licenses/>.
   *
   * SPDX-License-Identifier: LGPL-2.1-or-later
    }
{$ifndef __GSK_GL_RENDERER_H__}
{$define __GSK_GL_RENDERER_H__}  
{$include <gsk/gskrenderer.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GSK_TYPE_GL_RENDERER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_GL_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_GL_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_GL_RENDERER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_GL_RENDERER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_GL_RENDERER_GET_CLASS(obj : longint) : longint;  


  type
    _GskGLRenderer = GskGLRenderer;
    _GskGLRendererClass = GskGLRendererClass;
  { Zeile entfernt  }

  function gsk_gl_renderer_get_type:GType;

  { Zeile entfernt  }
  function gsk_gl_renderer_new:^GskRenderer;

(* error 
GType        gsk_ngl_renderer_get_type (void) ;
 in declarator_list *)
(* error 
GskRenderer *gsk_ngl_renderer_new      (void);
 in declarator_list *)
  { Zeile entfernt  }
{$endif}
  { __GSK_GL_RENDERER__  }
  { was #define dname def_expr }
  function GSK_TYPE_GL_RENDERER : longint; { return type might be wrong }
    begin
      GSK_TYPE_GL_RENDERER:=gsk_gl_renderer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_GL_RENDERER(obj : longint) : longint;
  begin
    GSK_GL_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_GL_RENDERER,GskGLRenderer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_GL_RENDERER(obj : longint) : longint;
  begin
    GSK_IS_GL_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_GL_RENDERER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_GL_RENDERER_CLASS(klass : longint) : longint;
  begin
    GSK_GL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GSK_TYPE_GL_RENDERER,GskGLRendererClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_GL_RENDERER_CLASS(klass : longint) : longint;
  begin
    GSK_IS_GL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GSK_TYPE_GL_RENDERER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_GL_RENDERER_GET_CLASS(obj : longint) : longint;
  begin
    GSK_GL_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GSK_TYPE_GL_RENDERER,GskGLRendererClass);
  end;

  function gsk_gl_renderer_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_gl_renderer_new:PGskRenderer;
  begin
    { You must implement this function }
  end;

