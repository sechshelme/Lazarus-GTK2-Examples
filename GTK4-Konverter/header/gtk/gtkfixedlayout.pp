
  Type
  PGskTransform  = ^GskTransform;
  PGtkFixedLayoutChild  = ^GtkFixedLayoutChild;
  PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkfixedlayout.h: Fixed positioning layout manager
   *
   * SPDX-License-Identifier: LGPL-2.1-or-later
   *
   * Copyright 2019 GNOME Foundation
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
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_FIXED_LAYOUT : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_FIXED_LAYOUT_CHILD : longint; { return type might be wrong }

  { GtkFixedLayout  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_fixed_layout_new:^GtkLayoutManager;

  { GtkFixedLayoutChild  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  procedure gtk_fixed_layout_child_set_transform(child:PGtkFixedLayoutChild; transform:PGskTransform);

  { Zeile entfernt  }
  function gtk_fixed_layout_child_get_transform(child:PGtkFixedLayoutChild):^GskTransform;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_FIXED_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_FIXED_LAYOUT:=gtk_fixed_layout_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_FIXED_LAYOUT_CHILD : longint; { return type might be wrong }
    begin
      GTK_TYPE_FIXED_LAYOUT_CHILD:=gtk_fixed_layout_child_get_type;
    end;

  function gtk_fixed_layout_new:PGtkLayoutManager;
  begin
    { You must implement this function }
  end;
  procedure gtk_fixed_layout_child_set_transform(child:PGtkFixedLayoutChild; transform:PGskTransform);
  begin
    { You must implement this function }
  end;
  function gtk_fixed_layout_child_get_transform(child:PGtkFixedLayoutChild):PGskTransform;
  begin
    { You must implement this function }
  end;

