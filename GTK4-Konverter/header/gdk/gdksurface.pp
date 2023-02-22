
  Type
  Pcairo_region_t  = ^cairo_region_t;
  Pcairo_surface_t  = ^cairo_surface_t;
  Pdouble  = ^double;
  PGdkCairoContext  = ^GdkCairoContext;
  PGdkCursor  = ^GdkCursor;
  PGdkDevice  = ^GdkDevice;
  PGdkDisplay  = ^GdkDisplay;
  PGdkFrameClock  = ^GdkFrameClock;
  PGdkGLContext  = ^GdkGLContext;
  PGdkModifierType  = ^GdkModifierType;
  PGdkSurface  = ^GdkSurface;
  PGdkVulkanContext  = ^GdkVulkanContext;
  PGError  = ^GError;
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
{$ifndef __GDK_SURFACE_H__}
{$define __GDK_SURFACE_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdkframeclock.h>}
{$include <gdk/gdkmonitor.h>}
{$include <gdk/gdkpopuplayout.h>}

  type
    _GdkSurfaceClass = GdkSurfaceClass;

  { was #define dname def_expr }
  function GDK_TYPE_SURFACE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_SURFACE(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_SURFACE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_GET_CLASS(obj : longint) : longint;  

(* error 
GType         gdk_surface_get_type              (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gdk_surface_new_toplevel(display:PGdkDisplay):^GdkSurface;

  function gdk_surface_new_popup(parent:PGdkSurface; autohide:gboolean):^GdkSurface;

  procedure gdk_surface_destroy(surface:PGdkSurface);

  function gdk_surface_is_destroyed(surface:PGdkSurface):gboolean;

  function gdk_surface_get_display(surface:PGdkSurface):^GdkDisplay;

  procedure gdk_surface_hide(surface:PGdkSurface);

  procedure gdk_surface_set_input_region(surface:PGdkSurface; region:Pcairo_region_t);

  function gdk_surface_get_mapped(surface:PGdkSurface):gboolean;

  procedure gdk_surface_set_cursor(surface:PGdkSurface; cursor:PGdkCursor);

  function gdk_surface_get_cursor(surface:PGdkSurface):^GdkCursor;

  procedure gdk_surface_set_device_cursor(surface:PGdkSurface; device:PGdkDevice; cursor:PGdkCursor);

  function gdk_surface_get_device_cursor(surface:PGdkSurface; device:PGdkDevice):^GdkCursor;

  function gdk_surface_get_width(surface:PGdkSurface):longint;

  function gdk_surface_get_height(surface:PGdkSurface):longint;

  function gdk_surface_translate_coordinates(from:PGdkSurface; to:PGdkSurface; x:Pdouble; y:Pdouble):gboolean;

  function gdk_surface_get_scale_factor(surface:PGdkSurface):longint;

  function gdk_surface_get_device_position(surface:PGdkSurface; device:PGdkDevice; x:Pdouble; y:Pdouble; mask:PGdkModifierType):gboolean;

  function gdk_surface_create_similar_surface(surface:PGdkSurface; content:cairo_content_t; width:longint; height:longint):^cairo_surface_t;

  procedure gdk_surface_beep(surface:PGdkSurface);

  procedure gdk_surface_queue_render(surface:PGdkSurface);

  procedure gdk_surface_request_layout(surface:PGdkSurface);

  function gdk_surface_get_frame_clock(surface:PGdkSurface):^GdkFrameClock;

  procedure gdk_surface_set_opaque_region(surface:PGdkSurface; region:Pcairo_region_t);

  function gdk_surface_create_cairo_context(surface:PGdkSurface):^GdkCairoContext;

  function gdk_surface_create_gl_context(surface:PGdkSurface; error:PPGError):^GdkGLContext;

  function gdk_surface_create_vulkan_context(surface:PGdkSurface; error:PPGError):^GdkVulkanContext;

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC (GdkSurface, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC (GdkSurface, g_object_unref)
{$endif}
  { __GDK_SURFACE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_SURFACE : longint; { return type might be wrong }
    begin
      GDK_TYPE_SURFACE:=gdk_surface_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE(object : longint) : longint;
  begin
    GDK_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_SURFACE,GdkSurface);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_CLASS(klass : longint) : longint;
  begin
    GDK_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_SURFACE,GdkSurfaceClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_SURFACE(object : longint) : longint;
  begin
    GDK_IS_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_SURFACE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_SURFACE_CLASS(klass : longint) : longint;
  begin
    GDK_IS_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_SURFACE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SURFACE_GET_CLASS(obj : longint) : longint;
  begin
    GDK_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_SURFACE,GdkSurfaceClass);
  end;

  function gdk_surface_new_toplevel(display:PGdkDisplay):PGdkSurface;
  begin
    { You must implement this function }
  end;
  function gdk_surface_new_popup(parent:PGdkSurface; autohide:gboolean):PGdkSurface;
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_destroy(surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  function gdk_surface_is_destroyed(surface:PGdkSurface):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_display(surface:PGdkSurface):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_hide(surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_set_input_region(surface:PGdkSurface; region:Pcairo_region_t);
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_mapped(surface:PGdkSurface):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_set_cursor(surface:PGdkSurface; cursor:PGdkCursor);
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_cursor(surface:PGdkSurface):PGdkCursor;
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_set_device_cursor(surface:PGdkSurface; device:PGdkDevice; cursor:PGdkCursor);
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_device_cursor(surface:PGdkSurface; device:PGdkDevice):PGdkCursor;
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_width(surface:PGdkSurface):longint;
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_height(surface:PGdkSurface):longint;
  begin
    { You must implement this function }
  end;
  function gdk_surface_translate_coordinates(from:PGdkSurface; to:PGdkSurface; x:Pdouble; y:Pdouble):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_scale_factor(surface:PGdkSurface):longint;
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_device_position(surface:PGdkSurface; device:PGdkDevice; x:Pdouble; y:Pdouble; mask:PGdkModifierType):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_surface_create_similar_surface(surface:PGdkSurface; content:cairo_content_t; width:longint; height:longint):Pcairo_surface_t;
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_beep(surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_queue_render(surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_request_layout(surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  function gdk_surface_get_frame_clock(surface:PGdkSurface):PGdkFrameClock;
  begin
    { You must implement this function }
  end;
  procedure gdk_surface_set_opaque_region(surface:PGdkSurface; region:Pcairo_region_t);
  begin
    { You must implement this function }
  end;
  function gdk_surface_create_cairo_context(surface:PGdkSurface):PGdkCairoContext;
  begin
    { You must implement this function }
  end;
  function gdk_surface_create_gl_context(surface:PGdkSurface; error:PPGError):PGdkGLContext;
  begin
    { You must implement this function }
  end;
  function gdk_surface_create_vulkan_context(surface:PGdkSurface; error:PPGError):PGdkVulkanContext;
  begin
    { You must implement this function }
  end;

