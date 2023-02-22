
  Type
  PGtkLayoutManager  = ^GtkLayoutManager;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcustomlayout.h: Simple layout manager
   * Copyright 2019  GNOME Foundation
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
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CUSTOM_LAYOUT : longint; { return type might be wrong }

  {*
   * GtkCustomRequestModeFunc:
   * @widget: the widget to be queried
   *
   * Queries a widget for its preferred size request mode.
   *
   * Returns: the size request mode
    }

  type

    GtkCustomRequestModeFunc = function (widget:PGtkWidget):GtkSizeRequestMode;cdecl;
  {*
   * GtkCustomMeasureFunc:
   * @widget: the widget to be measured
   * @orientation: the direction to be measured
   * @for_size: the size to be measured for
   * @minimum: (out): the measured minimum size of the widget
   * @natural: (out): the measured natural size of the widget
   * @minimum_baseline: (out): the measured minimum baseline of the widget
   * @natural_baseline: (out): the measured natural baseline of the widget
   *
   * A function to be used by `GtkCustomLayout` to measure a widget.
    }

    GtkCustomMeasureFunc = procedure (widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
                  minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;
  {*
   * GtkCustomAllocateFunc:
   * @widget: the widget to allocate
   * @width: the new width of the widget
   * @height: the new height of the widget
   * @baseline: the new baseline of the widget, or -1
   *
   * A function to be used by `GtkCustomLayout` to allocate a widget.
    }

    GtkCustomAllocateFunc = procedure (widget:PGtkWidget; width:longint; height:longint; baseline:longint);cdecl;
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }

  function gtk_custom_layout_new(request_mode:GtkCustomRequestModeFunc; measure:GtkCustomMeasureFunc; allocate:GtkCustomAllocateFunc):^GtkLayoutManager;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_CUSTOM_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CUSTOM_LAYOUT:=gtk_custom_layout_get_type;
    end;

  function gtk_custom_layout_new(request_mode:GtkCustomRequestModeFunc; measure:GtkCustomMeasureFunc; allocate:GtkCustomAllocateFunc):PGtkLayoutManager;
  begin
    { You must implement this function }
  end;

