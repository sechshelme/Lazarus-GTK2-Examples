
  Type
  Pchar  = ^char;
  PGdkX11Screen  = ^GdkX11Screen;
  PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
{$ifndef __GDK_X11_SCREEN_H__}
{$define __GDK_X11_SCREEN_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_X11_SCREEN : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SCREEN(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SCREEN_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SCREEN(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SCREEN_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SCREEN_GET_CLASS(obj : longint) : longint;  


  type
    _GdkX11Screen = GdkX11Screen;
    _GdkX11ScreenClass = GdkX11ScreenClass;
  { Zeile entfernt  }

  function gdk_x11_screen_get_type:GType;

  { Zeile entfernt  }
  function gdk_x11_screen_get_xscreen(screen:PGdkX11Screen):^Screen;

  { Zeile entfernt  }
  function gdk_x11_screen_get_screen_number(screen:PGdkX11Screen):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_x11_screen_get_window_manager_name(screen:PGdkX11Screen):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_x11_screen_supports_net_wm_hint(screen:PGdkX11Screen; property_name:Pchar):gboolean;

  { Zeile entfernt  }
  function gdk_x11_screen_get_monitor_output(screen:PGdkX11Screen; monitor_num:longint):XID;

  { Zeile entfernt  }
  function gdk_x11_screen_get_number_of_desktops(screen:PGdkX11Screen):guint32;

  { Zeile entfernt  }
  function gdk_x11_screen_get_current_desktop(screen:PGdkX11Screen):guint32;

  { Zeile entfernt  }
{$endif}
  { __GDK_X11_SCREEN_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_SCREEN : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_SCREEN:=gdk_x11_screen_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SCREEN(object : longint) : longint;
  begin
    GDK_X11_SCREEN:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_SCREEN,GdkX11Screen);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SCREEN_CLASS(klass : longint) : longint;
  begin
    GDK_X11_SCREEN_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_SCREEN,GdkX11ScreenClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SCREEN(object : longint) : longint;
  begin
    GDK_IS_X11_SCREEN:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_SCREEN);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_SCREEN_CLASS(klass : longint) : longint;
  begin
    GDK_IS_X11_SCREEN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_SCREEN);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_SCREEN_GET_CLASS(obj : longint) : longint;
  begin
    GDK_X11_SCREEN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_SCREEN,GdkX11ScreenClass);
  end;

  function gdk_x11_screen_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_get_xscreen(screen:PGdkX11Screen):PScreen;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_get_screen_number(screen:PGdkX11Screen):longint;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_get_window_manager_name(screen:PGdkX11Screen):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_supports_net_wm_hint(screen:PGdkX11Screen; property_name:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_get_monitor_output(screen:PGdkX11Screen; monitor_num:longint):XID;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_get_number_of_desktops(screen:PGdkX11Screen):guint32;
  begin
    { You must implement this function }
  end;
  function gdk_x11_screen_get_current_desktop(screen:PGdkX11Screen):guint32;
  begin
    { You must implement this function }
  end;

