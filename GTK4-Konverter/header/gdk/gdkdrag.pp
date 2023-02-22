
  Type
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkContentProvider  = ^GdkContentProvider;
  PGdkDevice  = ^GdkDevice;
  PGdkDisplay  = ^GdkDisplay;
  PGdkDrag  = ^GdkDrag;
  PGdkSurface  = ^GdkSurface;
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
{$ifndef __GDK_DND_H__}
{$define __GDK_DND_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkdevice.h>}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdktypes.h>}

  { was #define dname def_expr }
  function GDK_TYPE_DRAG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DRAG(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DRAG(object : longint) : longint;  

  {*
   * GdkDragCancelReason:
   * @GDK_DRAG_CANCEL_NO_TARGET: There is no suitable drop target.
   * @GDK_DRAG_CANCEL_USER_CANCELLED: Drag cancelled by the user
   * @GDK_DRAG_CANCEL_ERROR: Unspecified error.
   *
   * Used in `GdkDrag` to the reason of a cancelled DND operation.
    }

  type
    GdkDragCancelReason = (GDK_DRAG_CANCEL_NO_TARGET,GDK_DRAG_CANCEL_USER_CANCELLED,
      GDK_DRAG_CANCEL_ERROR);
(* error 
GType            gdk_drag_get_type             (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gdk_drag_get_display(drag:PGdkDrag):^GdkDisplay;

  function gdk_drag_get_device(drag:PGdkDrag):^GdkDevice;

  function gdk_drag_get_formats(drag:PGdkDrag):^GdkContentFormats;

  function gdk_drag_get_actions(drag:PGdkDrag):GdkDragAction;

  function gdk_drag_get_selected_action(drag:PGdkDrag):GdkDragAction;

(* error 
gboolean         gdk_drag_action_is_unique     (GdkDragAction   action) G_GNUC_CONST;
 in declarator_list *)

    var
 : gboolean;

  function gdk_drag_begin(surface:PGdkSurface; device:PGdkDevice; content:PGdkContentProvider; actions:GdkDragAction; dx:double; 
             dy:double):^GdkDrag;

  procedure gdk_drag_drop_done(drag:PGdkDrag; success:gboolean);

  function gdk_drag_get_drag_surface(drag:PGdkDrag):^GdkSurface;

  procedure gdk_drag_set_hotspot(drag:PGdkDrag; hot_x:longint; hot_y:longint);

  function gdk_drag_get_content(drag:PGdkDrag):^GdkContentProvider;

  function gdk_drag_get_surface(drag:PGdkDrag):^GdkSurface;

{$endif}
  { __GDK_DND_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_DRAG : longint; { return type might be wrong }
    begin
      GDK_TYPE_DRAG:=gdk_drag_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DRAG(object : longint) : longint;
  begin
    GDK_DRAG:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DRAG,GdkDrag);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DRAG(object : longint) : longint;
  begin
    GDK_IS_DRAG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DRAG);
  end;

  function gdk_drag_get_display(drag:PGdkDrag):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_device(drag:PGdkDrag):PGdkDevice;
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_formats(drag:PGdkDrag):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_actions(drag:PGdkDrag):GdkDragAction;
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_selected_action(drag:PGdkDrag):GdkDragAction;
  begin
    { You must implement this function }
  end;
  function gdk_drag_begin(surface:PGdkSurface; device:PGdkDevice; content:PGdkContentProvider; actions:GdkDragAction; dx:double; 
             dy:double):PGdkDrag;
  begin
    { You must implement this function }
  end;
  procedure gdk_drag_drop_done(drag:PGdkDrag; success:gboolean);
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_drag_surface(drag:PGdkDrag):PGdkSurface;
  begin
    { You must implement this function }
  end;
  procedure gdk_drag_set_hotspot(drag:PGdkDrag; hot_x:longint; hot_y:longint);
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_content(drag:PGdkDrag):PGdkContentProvider;
  begin
    { You must implement this function }
  end;
  function gdk_drag_get_surface(drag:PGdkDrag):PGdkSurface;
  begin
    { You must implement this function }
  end;

