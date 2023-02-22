
    Type
    Pchar  = ^char;
    PGdkToplevel  = ^GdkToplevel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2013 Jan Arne Petersen
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
{$ifndef __GDK_WAYLAND_SURFACE_H__}
{$define __GDK_WAYLAND_SURFACE_H__}  
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}
  { Zeile entfernt  }
{$ifdef GTK_COMPILATION}

  type
    _GdkWaylandSurface = GdkWaylandSurface;
    _GdkWaylandToplevel = GdkWaylandToplevel;
    _GdkWaylandPopup = GdkWaylandPopup;
{$else}

  type
    GdkWaylandSurface = GdkSurface;

    GdkWaylandToplevel = GdkToplevel;

    GdkWaylandPopup = GdkPopup;
{$endif}

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_SURFACE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_SURFACE(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_SURFACE(object : longint) : longint;  

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_TOPLEVEL : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_TOPLEVEL(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_TOPLEVEL(object : longint) : longint;  

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_POPUP : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_POPUP(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_POPUP(object : longint) : longint;  

  { Zeile entfernt  }
  function gdk_wayland_surface_get_type:GType;

  { Zeile entfernt  }
  function gdk_wayland_toplevel_get_type:GType;

  { Zeile entfernt  }
  function gdk_wayland_popup_get_type:GType;

  { Zeile entfernt  }
(* error 
struct wl_surface       *gdk_wayland_surface_get_wl_surface       (GdkSurface *surface);
in declaration at line 63 *)
(* Const before type ignored *)

    type

      GdkWaylandToplevelExported = procedure (toplevel:PGdkToplevel; handle:Pchar; user_data:gpointer);cdecl;
    { Zeile entfernt  }

    function gdk_wayland_toplevel_export_handle(toplevel:PGdkToplevel; callback:GdkWaylandToplevelExported; user_data:gpointer; destroy_func:GDestroyNotify):gboolean;

    { Zeile entfernt  }
    procedure gdk_wayland_toplevel_unexport_handle(toplevel:PGdkToplevel);

    { Zeile entfernt  }
(* Const before type ignored *)
    function gdk_wayland_toplevel_set_transient_for_exported(toplevel:PGdkToplevel; parent_handle_str:Pchar):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gdk_wayland_toplevel_set_application_id(toplevel:PGdkToplevel; application_id:Pchar);

    { Zeile entfernt  }
{$endif}
    { __GDK_WAYLAND_SURFACE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_SURFACE : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_SURFACE:=gdk_wayland_surface_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_SURFACE(object : longint) : longint;
  begin
    GDK_WAYLAND_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_SURFACE,GdkWaylandSurface);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_SURFACE(object : longint) : longint;
  begin
    GDK_IS_WAYLAND_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_SURFACE);
  end;

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_TOPLEVEL : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_TOPLEVEL:=gdk_wayland_toplevel_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_TOPLEVEL(object : longint) : longint;
  begin
    GDK_WAYLAND_TOPLEVEL:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_TOPLEVEL,GdkWaylandToplevel);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_TOPLEVEL(object : longint) : longint;
  begin
    GDK_IS_WAYLAND_TOPLEVEL:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_TOPLEVEL);
  end;

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_POPUP : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_POPUP:=gdk_wayland_popup_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_POPUP(object : longint) : longint;
  begin
    GDK_WAYLAND_POPUP:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_POPUP,GdkWaylandPopup);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_POPUP(object : longint) : longint;
  begin
    GDK_IS_WAYLAND_POPUP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_POPUP);
  end;

  function gdk_wayland_surface_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_wayland_toplevel_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_wayland_popup_get_type:GType;
  begin
    { You must implement this function }
  end;
    function gdk_wayland_toplevel_export_handle(toplevel:PGdkToplevel; callback:GdkWaylandToplevelExported; user_data:gpointer; destroy_func:GDestroyNotify):gboolean;
    begin
      { You must implement this function }
    end;
    procedure gdk_wayland_toplevel_unexport_handle(toplevel:PGdkToplevel);
    begin
      { You must implement this function }
    end;
    function gdk_wayland_toplevel_set_transient_for_exported(toplevel:PGdkToplevel; parent_handle_str:Pchar):gboolean;
    begin
      { You must implement this function }
    end;
    procedure gdk_wayland_toplevel_set_application_id(toplevel:PGdkToplevel; application_id:Pchar);
    begin
      { You must implement this function }
    end;

