
  Type
  PGtkGridLayout  = ^GtkGridLayout;
  PGtkGridLayoutChild  = ^GtkGridLayoutChild;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkgridlayout.h: Layout manager for grid-like widgets
   * Copyright 2019  GNOME Foundation
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
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
(** unsupported pragma#pragma once*)
{$include <gtk/gtklayoutmanager.h>}

  { was #define dname def_expr }
  function GTK_TYPE_GRID_LAYOUT : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_GRID_LAYOUT_CHILD : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkGridLayout, gtk_grid_layout, GTK, GRID_LAYOUT, GtkLayoutManager)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkGridLayout, gtk_grid_layout, GTK, GRID_LAYOUT, GtkLayoutManager)
 in declarator_list *)
  procedure gtk_grid_layout_set_row_homogeneous(grid:PGtkGridLayout; homogeneous:gboolean);

  function gtk_grid_layout_get_row_homogeneous(grid:PGtkGridLayout):gboolean;

  procedure gtk_grid_layout_set_row_spacing(grid:PGtkGridLayout; spacing:guint);

  function gtk_grid_layout_get_row_spacing(grid:PGtkGridLayout):guint;

  procedure gtk_grid_layout_set_column_homogeneous(grid:PGtkGridLayout; homogeneous:gboolean);

  function gtk_grid_layout_get_column_homogeneous(grid:PGtkGridLayout):gboolean;

  procedure gtk_grid_layout_set_column_spacing(grid:PGtkGridLayout; spacing:guint);

  function gtk_grid_layout_get_column_spacing(grid:PGtkGridLayout):guint;

  procedure gtk_grid_layout_set_row_baseline_position(grid:PGtkGridLayout; row:longint; pos:GtkBaselinePosition);

  function gtk_grid_layout_get_row_baseline_position(grid:PGtkGridLayout; row:longint):GtkBaselinePosition;

  procedure gtk_grid_layout_set_baseline_row(grid:PGtkGridLayout; row:longint);

  function gtk_grid_layout_get_baseline_row(grid:PGtkGridLayout):longint;

(* error 
G_DECLARE_FINAL_TYPE (GtkGridLayoutChild, gtk_grid_layout_child, GTK, GRID_LAYOUT_CHILD, GtkLayoutChild)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkGridLayoutChild, gtk_grid_layout_child, GTK, GRID_LAYOUT_CHILD, GtkLayoutChild)
(* error 
                                                                         int                  row);
 in declarator_list *)
 in declarator_list *)
  function gtk_grid_layout_child_get_row(child:PGtkGridLayoutChild):longint;

  procedure gtk_grid_layout_child_set_column(child:PGtkGridLayoutChild; column:longint);

  function gtk_grid_layout_child_get_column(child:PGtkGridLayoutChild):longint;

  procedure gtk_grid_layout_child_set_column_span(child:PGtkGridLayoutChild; span:longint);

  function gtk_grid_layout_child_get_column_span(child:PGtkGridLayoutChild):longint;

  procedure gtk_grid_layout_child_set_row_span(child:PGtkGridLayoutChild; span:longint);

  function gtk_grid_layout_child_get_row_span(child:PGtkGridLayoutChild):longint;

  { was #define dname def_expr }
  function GTK_TYPE_GRID_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_GRID_LAYOUT:=gtk_grid_layout_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_GRID_LAYOUT_CHILD : longint; { return type might be wrong }
    begin
      GTK_TYPE_GRID_LAYOUT_CHILD:=gtk_grid_layout_child_get_type;
    end;

  procedure gtk_grid_layout_set_row_homogeneous(grid:PGtkGridLayout; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_get_row_homogeneous(grid:PGtkGridLayout):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_set_row_spacing(grid:PGtkGridLayout; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_get_row_spacing(grid:PGtkGridLayout):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_set_column_homogeneous(grid:PGtkGridLayout; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_get_column_homogeneous(grid:PGtkGridLayout):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_set_column_spacing(grid:PGtkGridLayout; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_get_column_spacing(grid:PGtkGridLayout):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_set_row_baseline_position(grid:PGtkGridLayout; row:longint; pos:GtkBaselinePosition);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_get_row_baseline_position(grid:PGtkGridLayout; row:longint):GtkBaselinePosition;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_set_baseline_row(grid:PGtkGridLayout; row:longint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_get_baseline_row(grid:PGtkGridLayout):longint;
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_child_get_row(child:PGtkGridLayoutChild):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_child_set_column(child:PGtkGridLayoutChild; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_child_get_column(child:PGtkGridLayoutChild):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_child_set_column_span(child:PGtkGridLayoutChild; span:longint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_child_get_column_span(child:PGtkGridLayoutChild):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_layout_child_set_row_span(child:PGtkGridLayoutChild; span:longint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_layout_child_get_row_span(child:PGtkGridLayoutChild):longint;
  begin
    { You must implement this function }
  end;

