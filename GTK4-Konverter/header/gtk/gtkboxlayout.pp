
  Type
  PGtkBoxLayout  = ^GtkBoxLayout;
  PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkboxlayout.h: Box layout manager
   *
   * Copyright 2019  GNOME Foundation
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtklayoutmanager.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_box_layout_new(orientation:GtkOrientation):^GtkLayoutManager;

  { Zeile entfernt  }
  procedure gtk_box_layout_set_homogeneous(box_layout:PGtkBoxLayout; homogeneous:gboolean);

  { Zeile entfernt  }
  function gtk_box_layout_get_homogeneous(box_layout:PGtkBoxLayout):gboolean;

  { Zeile entfernt  }
  procedure gtk_box_layout_set_spacing(box_layout:PGtkBoxLayout; spacing:guint);

  { Zeile entfernt  }
  function gtk_box_layout_get_spacing(box_layout:PGtkBoxLayout):guint;

  { Zeile entfernt  }
  procedure gtk_box_layout_set_baseline_position(box_layout:PGtkBoxLayout; position:GtkBaselinePosition);

  { Zeile entfernt  }
  function gtk_box_layout_get_baseline_position(box_layout:PGtkBoxLayout):GtkBaselinePosition;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_BOX_LAYOUT:=gtk_box_layout_get_type;
    end;

  function gtk_box_layout_new(orientation:GtkOrientation):PGtkLayoutManager;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_layout_set_homogeneous(box_layout:PGtkBoxLayout; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_box_layout_get_homogeneous(box_layout:PGtkBoxLayout):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_layout_set_spacing(box_layout:PGtkBoxLayout; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_box_layout_get_spacing(box_layout:PGtkBoxLayout):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_layout_set_baseline_position(box_layout:PGtkBoxLayout; position:GtkBaselinePosition);
  begin
    { You must implement this function }
  end;
  function gtk_box_layout_get_baseline_position(box_layout:PGtkBoxLayout):GtkBaselinePosition;
  begin
    { You must implement this function }
  end;

