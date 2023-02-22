
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2010 Red Hat, Inc.
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
{$ifndef __GDK_X11_APP_LAUNCH_CONTEXT_H__}
{$define __GDK_X11_APP_LAUNCH_CONTEXT_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_X11_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj : longint) : longint;  

{$ifdef GTK_COMPILATION}

  type
    _GdkX11AppLaunchContext = GdkX11AppLaunchContext;
{$else}

  type
    GdkX11AppLaunchContext = GdkAppLaunchContext;
{$endif}

  type
    _GdkX11AppLaunchContextClass = GdkX11AppLaunchContextClass;
  { Zeile entfernt  }

  function gdk_x11_app_launch_context_get_type:GType;

  { Zeile entfernt  }
{$endif}
  { __GDK_X11_APP_LAUNCH_CONTEXT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_APP_LAUNCH_CONTEXT:=gdk_x11_app_launch_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;
  begin
    GDK_X11_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;
  begin
    GDK_X11_APP_LAUNCH_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContextClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;
  begin
    GDK_IS_X11_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;
  begin
    GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj : longint) : longint;
  begin
    GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContextClass);
  end;

  function gdk_x11_app_launch_context_get_type:GType;
  begin
    { You must implement this function }
  end;

