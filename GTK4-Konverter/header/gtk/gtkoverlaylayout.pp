
  Type
  PGtkOverlayLayoutChild  = ^GtkOverlayLayoutChild;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkoverlaylayout.h: Overlay layout manager
   *
   * SPDX-License-Identifier: LGPL-2.1-or-later
   *
   * Copyright 2019 Red Hat, Inc.
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
(** unsupported pragma#pragma once*)
{$include <gtk/gtklayoutmanager.h>}

  { was #define dname def_expr }
  function GTK_TYPE_OVERLAY_LAYOUT : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_OVERLAY_LAYOUT_CHILD : longint; { return type might be wrong }

  { GtkOverlayLayout  }
(* error 
G_DECLARE_FINAL_TYPE (GtkOverlayLayout, gtk_overlay_layout, GTK, OVERLAY_LAYOUT, GtkLayoutManager)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkOverlayLayout, gtk_overlay_layout, GTK, OVERLAY_LAYOUT, GtkLayoutManager)
 in declarator_list *)
  { GtkOverlayLayoutChild  }
(* error 
G_DECLARE_FINAL_TYPE (GtkOverlayLayoutChild, gtk_overlay_layout_child, GTK, OVERLAY_LAYOUT_CHILD, GtkLayoutChild)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkOverlayLayoutChild, gtk_overlay_layout_child, GTK, OVERLAY_LAYOUT_CHILD, GtkLayoutChild)
(* error 
                                                      gboolean               measure);
 in declarator_list *)
 in declarator_list *)
  function gtk_overlay_layout_child_get_measure(child:PGtkOverlayLayoutChild):gboolean;

  procedure gtk_overlay_layout_child_set_clip_overlay(child:PGtkOverlayLayoutChild; clip_overlay:gboolean);

  function gtk_overlay_layout_child_get_clip_overlay(child:PGtkOverlayLayoutChild):gboolean;

  { was #define dname def_expr }
  function GTK_TYPE_OVERLAY_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_OVERLAY_LAYOUT:=gtk_overlay_layout_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_OVERLAY_LAYOUT_CHILD : longint; { return type might be wrong }
    begin
      GTK_TYPE_OVERLAY_LAYOUT_CHILD:=gtk_overlay_layout_child_get_type;
    end;

  function gtk_overlay_layout_child_get_measure(child:PGtkOverlayLayoutChild):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_overlay_layout_child_set_clip_overlay(child:PGtkOverlayLayoutChild; clip_overlay:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_overlay_layout_child_get_clip_overlay(child:PGtkOverlayLayoutChild):gboolean;
  begin
    { You must implement this function }
  end;

