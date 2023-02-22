
  Type
  PGdkDisplay  = ^GdkDisplay;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   *
   * gdkglcontext-x11.c: X11 specific OpenGL wrappers
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
{$ifndef __GDK_X11_GL_CONTEXT_H__}
{$define __GDK_X11_GL_CONTEXT_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}

  { was #define dname def_expr }
  function GDK_TYPE_X11_GL_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_GL_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_IS_GL_CONTEXT(obj : longint) : longint;  


  type
    _GdkX11GLContext = GdkX11GLContext;
    _GdkX11GLContextClass = GdkX11GLContextClass;
(* error 
GType gdk_x11_gl_context_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gdk_x11_display_get_glx_version(display:PGdkDisplay; major:Plongint; minor:Plongint):gboolean;

(* error 
gboolean        gdk_x11_display_get_egl_version (GdkDisplay *display,
(* error 
                                                 int        *major,
(* error 
                                                 int        *minor);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
gpointer        gdk_x11_display_get_egl_display (GdkDisplay *display);
 in declarator_list *)
{$endif}
  { __GDK_X11_GL_CONTEXT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_GL_CONTEXT : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_GL_CONTEXT:=gdk_x11_gl_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_GL_CONTEXT(obj : longint) : longint;
  begin
    GDK_X11_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_X11_GL_CONTEXT,GdkX11GLContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_IS_GL_CONTEXT(obj : longint) : longint;
  begin
    GDK_X11_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_X11_GL_CONTEXT);
  end;

  function gdk_x11_display_get_glx_version(display:PGdkDisplay; major:Plongint; minor:Plongint):gboolean;
  begin
    { You must implement this function }
  end;

