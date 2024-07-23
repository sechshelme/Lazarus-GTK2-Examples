
unit gtkcenterlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkcenterlayout.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkcenterlayout.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGtkCenterLayout  = ^GtkCenterLayout;
PGtkLayoutManager  = ^GtkLayoutManager;
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

{G_DECLARE_FINAL_TYPE (GtkCenterLayout, gtk_center_layout, GTK, CENTER_LAYOUT, GtkLayoutManager) }
function gtk_center_layout_new:PGtkLayoutManager;cdecl;external;
procedure gtk_center_layout_set_orientation(self:PGtkCenterLayout; orientation:TGtkOrientation);cdecl;external;
function gtk_center_layout_get_orientation(self:PGtkCenterLayout):TGtkOrientation;cdecl;external;
procedure gtk_center_layout_set_baseline_position(self:PGtkCenterLayout; baseline_position:TGtkBaselinePosition);cdecl;external;
function gtk_center_layout_get_baseline_position(self:PGtkCenterLayout):TGtkBaselinePosition;cdecl;external;
procedure gtk_center_layout_set_start_widget(self:PGtkCenterLayout; widget:PGtkWidget);cdecl;external;
function gtk_center_layout_get_start_widget(self:PGtkCenterLayout):PGtkWidget;cdecl;external;
procedure gtk_center_layout_set_center_widget(self:PGtkCenterLayout; widget:PGtkWidget);cdecl;external;
function gtk_center_layout_get_center_widget(self:PGtkCenterLayout):PGtkWidget;cdecl;external;
procedure gtk_center_layout_set_end_widget(self:PGtkCenterLayout; widget:PGtkWidget);cdecl;external;
function gtk_center_layout_get_end_widget(self:PGtkCenterLayout):PGtkWidget;cdecl;external;
procedure gtk_center_layout_set_shrink_center_last(self:PGtkCenterLayout; shrink_center_last:Tgboolean);cdecl;external;
function gtk_center_layout_get_shrink_center_last(self:PGtkCenterLayout):Tgboolean;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CENTER_LAYOUT:=gtk_center_layout_get_type;
  end;


end.
