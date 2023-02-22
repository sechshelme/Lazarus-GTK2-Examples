
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
{$ifndef __GDK_BROADWAY_CURSOR_H__}
{$define __GDK_BROADWAY_CURSOR_H__}  
{$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}

  { was #define dname def_expr }
  function GDK_TYPE_BROADWAY_CURSOR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_CURSOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_CURSOR_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_CURSOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_CURSOR_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_CURSOR_GET_CLASS(obj : longint) : longint;  

{$ifdef GTK_COMPILATION}

  type
    _GdkBroadwayCursor = GdkBroadwayCursor;
{$else}

  type
    GdkBroadwayCursor = GdkCursor;
{$endif}

  type
    _GdkBroadwayCursorClass = GdkBroadwayCursorClass;

  function gdk_broadway_cursor_get_type:GType;

{$endif}
  { __GDK_BROADWAY_CURSOR_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_BROADWAY_CURSOR : longint; { return type might be wrong }
    begin
      GDK_TYPE_BROADWAY_CURSOR:=gdk_broadway_cursor_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_CURSOR(object : longint) : longint;
  begin
    GDK_BROADWAY_CURSOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursor);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_CURSOR_CLASS(klass : longint) : longint;
  begin
    GDK_BROADWAY_CURSOR_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursorClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_CURSOR(object : longint) : longint;
  begin
    GDK_IS_BROADWAY_CURSOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_CURSOR);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_BROADWAY_CURSOR_CLASS(klass : longint) : longint;
  begin
    GDK_IS_BROADWAY_CURSOR_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_CURSOR);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_BROADWAY_CURSOR_GET_CLASS(obj : longint) : longint;
  begin
    GDK_BROADWAY_CURSOR_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursorClass);
  end;

  function gdk_broadway_cursor_get_type:GType;
  begin
    { You must implement this function }
  end;

