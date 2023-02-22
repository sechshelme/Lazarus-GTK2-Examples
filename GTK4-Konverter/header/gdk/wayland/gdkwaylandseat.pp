
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gdkwaylandseat.h: Wayland GdkSeat
   *
   * Copyright 2020  GNOME Foundation
   *
   * SPDX-License-Identifier: LGPL-2.1-or-later
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library; if not, see <http://www.gnu.org/licenses/>.
    }
(** unsupported pragma#pragma once*)
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}
  { Zeile entfernt  }
{$ifdef GTK_COMPILATION}

  type
    _GdkWaylandSeat = GdkWaylandSeat;
{$else}

  type
    GdkWaylandSeat = GdkSeat;
{$endif}

  type
    _GdkWaylandSeatClass = GdkWaylandSeatClass;

  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_SEAT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_SEAT(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_SEAT(o : longint) : longint;  

  { Zeile entfernt  }
  function gdk_wayland_seat_get_type:GType;

  { Zeile entfernt  }
(* error 
struct wl_seat *        gdk_wayland_seat_get_wl_seat    (GdkSeat *seat);
in declaration at line 47 *)
    { Zeile entfernt  }
  { was #define dname def_expr }
  function GDK_TYPE_WAYLAND_SEAT : longint; { return type might be wrong }
    begin
      GDK_TYPE_WAYLAND_SEAT:=gdk_wayland_seat_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_WAYLAND_SEAT(o : longint) : longint;
  begin
    GDK_WAYLAND_SEAT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_WAYLAND_SEAT,GdkWaylandSeat);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_WAYLAND_SEAT(o : longint) : longint;
  begin
    GDK_IS_WAYLAND_SEAT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_WAYLAND_SEAT);
  end;

  function gdk_wayland_seat_get_type:GType;
  begin
    { You must implement this function }
  end;

