
  Type
  PGtkCenterLayout  = ^GtkCenterLayout;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * SPDX-License-Identifier: LGPL-2.1-or-later
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
  function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkCenterLayout, gtk_center_layout, GTK, CENTER_LAYOUT, GtkLayoutManager)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkCenterLayout, gtk_center_layout, GTK, CENTER_LAYOUT, GtkLayoutManager)
 in declarator_list *)
  procedure gtk_center_layout_set_orientation(self:PGtkCenterLayout; orientation:GtkOrientation);

  function gtk_center_layout_get_orientation(self:PGtkCenterLayout):GtkOrientation;

  procedure gtk_center_layout_set_baseline_position(self:PGtkCenterLayout; baseline_position:GtkBaselinePosition);

  function gtk_center_layout_get_baseline_position(self:PGtkCenterLayout):GtkBaselinePosition;

  procedure gtk_center_layout_set_start_widget(self:PGtkCenterLayout; widget:PGtkWidget);

  function gtk_center_layout_get_start_widget(self:PGtkCenterLayout):^GtkWidget;

  procedure gtk_center_layout_set_center_widget(self:PGtkCenterLayout; widget:PGtkWidget);

  function gtk_center_layout_get_center_widget(self:PGtkCenterLayout):^GtkWidget;

  procedure gtk_center_layout_set_end_widget(self:PGtkCenterLayout; widget:PGtkWidget);

  function gtk_center_layout_get_end_widget(self:PGtkCenterLayout):^GtkWidget;

  { was #define dname def_expr }
  function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CENTER_LAYOUT:=gtk_center_layout_get_type;
    end;

  procedure gtk_center_layout_set_orientation(self:PGtkCenterLayout; orientation:GtkOrientation);
  begin
    { You must implement this function }
  end;
  function gtk_center_layout_get_orientation(self:PGtkCenterLayout):GtkOrientation;
  begin
    { You must implement this function }
  end;
  procedure gtk_center_layout_set_baseline_position(self:PGtkCenterLayout; baseline_position:GtkBaselinePosition);
  begin
    { You must implement this function }
  end;
  function gtk_center_layout_get_baseline_position(self:PGtkCenterLayout):GtkBaselinePosition;
  begin
    { You must implement this function }
  end;
  procedure gtk_center_layout_set_start_widget(self:PGtkCenterLayout; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_center_layout_get_start_widget(self:PGtkCenterLayout):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_center_layout_set_center_widget(self:PGtkCenterLayout; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_center_layout_get_center_widget(self:PGtkCenterLayout):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_center_layout_set_end_widget(self:PGtkCenterLayout; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_center_layout_get_end_widget(self:PGtkCenterLayout):PGtkWidget;
  begin
    { You must implement this function }
  end;

