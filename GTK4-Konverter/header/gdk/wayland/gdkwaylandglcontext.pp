
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   *
   * gdkglcontext-wayland.c: Wayland specific OpenGL wrappers
   *
   * Copyright © 2014  Emmanuele Bassi
   * Copyright © 2014  Red Hat, Inc
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GDK_WAYLAND_GL_CONTEXT_H__}
{$define __GDK_WAYLAND_GL_CONTEXT_H__}  
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_GL_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_GL_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_IS_GL_CONTEXT(obj : longint) : longint;  


  type
    _GdkWaylandGLContext = GdkWaylandGLContext;
    _GdkWaylandGLContextClass = GdkWaylandGLContextClass;
  { Zeile entfernt  }

  function gdk_wayland_gl_context_get_type:GType;

  { Zeile entfernt  }
{$endif}
  { __GDK_WAYLAND_GL_CONTEXT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_GL_CONTEXT : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_GL_CONTEXT:=gdk_wayland_gl_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_GL_CONTEXT(obj : longint) : longint;
  begin
    GDK_WAYLAND_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_WAYLAND_GL_CONTEXT,GdkWaylandGLContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_IS_GL_CONTEXT(obj : longint) : longint;
  begin
    GDK_WAYLAND_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_WAYLAND_GL_CONTEXT);
  end;

  function gdk_wayland_gl_context_get_type:GType;
  begin
    { You must implement this function }
  end;

