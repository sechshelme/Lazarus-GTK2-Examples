
    Type
    PGdkBroadwayDisplay  = ^GdkBroadwayDisplay;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2013 Alexander Larsson
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
{$ifndef __GDK_BROADWAY_DISPLAY_H__}
{$define __GDK_BROADWAY_DISPLAY_H__}  
{$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$ifdef GTK_COMPILATION}

  type
    _GdkBroadwayDisplay = GdkBroadwayDisplay;
{$else}

  type
    GdkBroadwayDisplay = GdkDisplay;
{$endif}

  type
    _GdkBroadwayDisplayClass = GdkBroadwayDisplayClass;

  { was #define dname def_expr }
  function GDK_TYPE_BROADWAY_DISPLAY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_DISPLAY(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_DISPLAY_GET_CLASS(obj : longint) : longint;  

  function gdk_broadway_display_get_type:GType;

  procedure gdk_broadway_display_show_keyboard(display:PGdkBroadwayDisplay);

  procedure gdk_broadway_display_hide_keyboard(display:PGdkBroadwayDisplay);

(* error 
int                     gdk_broadway_display_get_surface_scale   (GdkDisplay *display);
in declaration at line 52 *)
(* error 
void                    gdk_broadway_display_set_surface_scale   (GdkDisplay *display,
in declaration at line 55 *)
{$endif}
    { __GDK_BROADWAY_DISPLAY_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_BROADWAY_DISPLAY : longint; { return type might be wrong }
    begin
      GDK_TYPE_BROADWAY_DISPLAY:=gdk_broadway_display_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_DISPLAY(object : longint) : longint;
  begin
    GDK_BROADWAY_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplay);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;
  begin
    GDK_BROADWAY_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplayClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_DISPLAY(object : longint) : longint;
  begin
    GDK_IS_BROADWAY_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_DISPLAY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;
  begin
    GDK_IS_BROADWAY_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_DISPLAY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_DISPLAY_GET_CLASS(obj : longint) : longint;
  begin
    GDK_BROADWAY_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplayClass);
  end;

  function gdk_broadway_display_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gdk_broadway_display_show_keyboard(display:PGdkBroadwayDisplay);
  begin
    { You must implement this function }
  end;
  procedure gdk_broadway_display_hide_keyboard(display:PGdkBroadwayDisplay);
  begin
    { You must implement this function }
  end;

