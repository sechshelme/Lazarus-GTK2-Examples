
  Type
  PGdkGLContext  = ^GdkGLContext;
  PGdkGLTexture  = ^GdkGLTexture;
  PGdkTexture  = ^GdkTexture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gdktexture.h
   *
   * Copyright 2016  Benjamin Otte
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
{$ifndef __GDK_GL_TEXTURE_H__}
{$define __GDK_GL_TEXTURE_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkglcontext.h>}
{$include <gdk/gdktexture.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_GL_TEXTURE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_GL_TEXTURE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_GL_TEXTURE(obj : longint) : longint;  


  type
    _GdkGLTexture = GdkGLTexture;
    _GdkGLTextureClass = GdkGLTextureClass;
  { Zeile entfernt  }
  { Zeile entfernt  }

  function gdk_gl_texture_get_type:GType;

  { Zeile entfernt  }
  function gdk_gl_texture_new(context:PGdkGLContext; id:guint; width:longint; height:longint; destroy:GDestroyNotify; 
             data:gpointer):^GdkTexture;

  { Zeile entfernt  }
  procedure gdk_gl_texture_release(self:PGdkGLTexture);

  { Zeile entfernt  }
{$endif}
  { __GDK_GL_TEXTURE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_GL_TEXTURE : longint; { return type might be wrong }
    begin
      GDK_TYPE_GL_TEXTURE:=gdk_gl_texture_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_GL_TEXTURE(obj : longint) : longint;
  begin
    GDK_GL_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_GL_TEXTURE,GdkGLTexture);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_GL_TEXTURE(obj : longint) : longint;
  begin
    GDK_IS_GL_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_GL_TEXTURE);
  end;

  function gdk_gl_texture_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_gl_texture_new(context:PGdkGLContext; id:guint; width:longint; height:longint; destroy:GDestroyNotify; 
             data:gpointer):PGdkTexture;
  begin
    { You must implement this function }
  end;
  procedure gdk_gl_texture_release(self:PGdkGLTexture);
  begin
    { You must implement this function }
  end;

