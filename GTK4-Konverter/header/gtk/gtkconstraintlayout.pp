
  Type
  Pchar  = ^char;
  PGError  = ^GError;
  PGHashTable  = ^GHashTable;
  PGList  = ^GList;
  PGListModel  = ^GListModel;
  PGtkConstraint  = ^GtkConstraint;
  PGtkConstraintGuide  = ^GtkConstraintGuide;
  PGtkConstraintLayout  = ^GtkConstraintLayout;
  PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkconstraintlayout.h: Layout manager using constraints
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
   *
   * Author: Emmanuele Bassi
    }
(** unsupported pragma#pragma once*)
{$include <gtk/gtklayoutmanager.h>}
{$include <gtk/gtkconstraint.h>}
{$include <gtk/gtkconstraintguide.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_constraint_vfl_parser_error_quark:GQuark;

  { Zeile entfernt  }
  function gtk_constraint_layout_new:^GtkLayoutManager;

  { Zeile entfernt  }
  procedure gtk_constraint_layout_add_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);

  { Zeile entfernt  }
  procedure gtk_constraint_layout_remove_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);

  { Zeile entfernt  }
  procedure gtk_constraint_layout_add_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);

  { Zeile entfernt  }
  procedure gtk_constraint_layout_remove_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);

  { Zeile entfernt  }
  procedure gtk_constraint_layout_remove_all_constraints(layout:PGtkConstraintLayout);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
(* Const before type ignored *)
  function gtk_constraint_layout_add_constraints_from_description(layout:PGtkConstraintLayout; lines:PPchar; n_lines:gsize; hspacing:longint; vspacing:longint; 
             error:PPGError; first_view:Pchar; args:array of const):^GList;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gtk_constraint_layout_add_constraints_from_descriptionv(layout:PGtkConstraintLayout; lines:PPchar; n_lines:gsize; hspacing:longint; vspacing:longint; 
             views:PGHashTable; error:PPGError):^GList;

  { Zeile entfernt  }
  function gtk_constraint_layout_observe_constraints(layout:PGtkConstraintLayout):^GListModel;

  { Zeile entfernt  }
  function gtk_constraint_layout_observe_guides(layout:PGtkConstraintLayout):^GListModel;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTRAINT_LAYOUT:=gtk_constraint_layout_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTRAINT_LAYOUT_CHILD:=gtk_constraint_layout_child_get_type;
    end;

  { was #define dname def_expr }
  function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }
    begin
      GTK_CONSTRAINT_VFL_PARSER_ERROR:=gtk_constraint_vfl_parser_error_quark;
    end;

  function gtk_constraint_vfl_parser_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_layout_new:PGtkLayoutManager;
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_layout_add_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_layout_remove_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_layout_add_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_layout_remove_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_layout_remove_all_constraints(layout:PGtkConstraintLayout);
  begin
    { You must implement this function }
  end;
  function gtk_constraint_layout_add_constraints_from_description(layout:PGtkConstraintLayout; lines:PPchar; n_lines:gsize; hspacing:longint; vspacing:longint; 
             error:PPGError; first_view:Pchar):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_layout_add_constraints_from_descriptionv(layout:PGtkConstraintLayout; lines:PPchar; n_lines:gsize; hspacing:longint; vspacing:longint; 
             views:PGHashTable; error:PPGError):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_layout_observe_constraints(layout:PGtkConstraintLayout):PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_layout_observe_guides(layout:PGtkConstraintLayout):PGListModel;
  begin
    { You must implement this function }
  end;

