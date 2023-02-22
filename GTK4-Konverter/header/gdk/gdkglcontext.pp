
  Type
  PGdkDisplay  = ^GdkDisplay;
  PGdkGLContext  = ^GdkGLContext;
  PGdkSurface  = ^GdkSurface;
  PGError  = ^GError;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   *
   * gdkglcontext.h: GL context abstraction
   * 
   * Copyright © 2014  Emmanuele Bassi
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
{$ifndef __GDK_GL_CONTEXT_H__}
{$define __GDK_GL_CONTEXT_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
  { Zeile entfernt  }
  {*
   * GdkGLAPI:
   * @GDK_GL_API_GL: The OpenGL API
   * @GDK_GL_API_GLES: The OpenGL ES API
   *
   * The list of the different APIs that GdkGLContext can potentially support.
   *
   * Since: 4.6
    }
  {< underscore_name=GDK_GL_API > }

  type
    GdkGLAPI = (GDK_GL_API_GL := 1 shl 0,GDK_GL_API_GLES := 1 shl 1
      );

  { was #define dname def_expr }
  function GDK_TYPE_GL_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_GL_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_GL_CONTEXT(obj : longint) : longint;  

  { was #define dname def_expr }
  function GDK_GL_ERROR : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gdk_gl_error_quark:GQuark;

  { Zeile entfernt  }
  function gdk_gl_context_get_type:GType;

  { Zeile entfernt  }
  function gdk_gl_context_get_display(context:PGdkGLContext):^GdkDisplay;

  { Zeile entfernt  }
  function gdk_gl_context_get_surface(context:PGdkGLContext):^GdkSurface;

(* error 
GdkGLContext *          gdk_gl_context_get_shared_context       (GdkGLContext  *context);
 in declarator_list *)
  { Zeile entfernt  }
  procedure gdk_gl_context_get_version(context:PGdkGLContext; major:Plongint; minor:Plongint);

  { Zeile entfernt  }
  function gdk_gl_context_is_legacy(context:PGdkGLContext):gboolean;

  { Zeile entfernt  }
  function gdk_gl_context_is_shared(self:PGdkGLContext; other:PGdkGLContext):gboolean;

  { Zeile entfernt  }
  procedure gdk_gl_context_set_required_version(context:PGdkGLContext; major:longint; minor:longint);

  { Zeile entfernt  }
  procedure gdk_gl_context_get_required_version(context:PGdkGLContext; major:Plongint; minor:Plongint);

  { Zeile entfernt  }
  procedure gdk_gl_context_set_debug_enabled(context:PGdkGLContext; enabled:gboolean);

  { Zeile entfernt  }
  function gdk_gl_context_get_debug_enabled(context:PGdkGLContext):gboolean;

  { Zeile entfernt  }
  procedure gdk_gl_context_set_forward_compatible(context:PGdkGLContext; compatible:gboolean);

  { Zeile entfernt  }
  function gdk_gl_context_get_forward_compatible(context:PGdkGLContext):gboolean;

  { Zeile entfernt  }
  procedure gdk_gl_context_set_allowed_apis(self:PGdkGLContext; apis:GdkGLAPI);

  { Zeile entfernt  }
  function gdk_gl_context_get_allowed_apis(self:PGdkGLContext):GdkGLAPI;

  { Zeile entfernt  }
  function gdk_gl_context_get_api(self:PGdkGLContext):GdkGLAPI;

(* error 
void                    gdk_gl_context_set_use_es               (GdkGLContext  *context,
(* error 
                                                                 int            use_es);
 in declarator_list *)
 in declarator_list *)
  { Zeile entfernt  }
  function gdk_gl_context_get_use_es(context:PGdkGLContext):gboolean;

  { Zeile entfernt  }
  function gdk_gl_context_realize(context:PGdkGLContext; error:PPGError):gboolean;

  { Zeile entfernt  }
  procedure gdk_gl_context_make_current(context:PGdkGLContext);

  { Zeile entfernt  }
  function gdk_gl_context_get_current:^GdkGLContext;

  { Zeile entfernt  }
  procedure gdk_gl_context_clear_current;

  { Zeile entfernt  }
{$endif}
  { __GDK_GL_CONTEXT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_GL_CONTEXT : longint; { return type might be wrong }
    begin
      GDK_TYPE_GL_CONTEXT:=gdk_gl_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_GL_CONTEXT(obj : longint) : longint;
  begin
    GDK_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_GL_CONTEXT,GdkGLContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_GL_CONTEXT(obj : longint) : longint;
  begin
    GDK_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_GL_CONTEXT);
  end;

  { was #define dname def_expr }
  function GDK_GL_ERROR : longint; { return type might be wrong }
    begin
      GDK_GL_ERROR:=gdk_gl_error_quark;
    end;

  function gdk_gl_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_display(context:PGdkGLContext):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_surface(context:PGdkGLContext):PGdkSurface;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_get_version(context:PGdkGLContext; major:Plongint; minor:Plongint);
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_is_legacy(context:PGdkGLContext):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_is_shared(self:PGdkGLContext; other:PGdkGLContext):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_set_required_version(context:PGdkGLContext; major:longint; minor:longint);
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_get_required_version(context:PGdkGLContext; major:Plongint; minor:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_set_debug_enabled(context:PGdkGLContext; enabled:gboolean);
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_debug_enabled(context:PGdkGLContext):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_set_forward_compatible(context:PGdkGLContext; compatible:gboolean);
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_forward_compatible(context:PGdkGLContext):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_set_allowed_apis(self:PGdkGLContext; apis:GdkGLAPI);
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_allowed_apis(self:PGdkGLContext):GdkGLAPI;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_api(self:PGdkGLContext):GdkGLAPI;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_use_es(context:PGdkGLContext):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_realize(context:PGdkGLContext; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_make_current(context:PGdkGLContext);
  begin
    { You must implement this function }
  end;
  function gdk_gl_context_get_current:PGdkGLContext;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_context_clear_current;
  begin
    { You must implement this function }
  end;

