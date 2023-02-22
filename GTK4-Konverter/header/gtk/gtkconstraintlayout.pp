
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

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkConstraintLayoutChild, gtk_constraint_layout_child, GTK, CONSTRAINT_LAYOUT_CHILD, GtkLayoutChild)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkConstraintLayoutChild, gtk_constraint_layout_child, GTK, CONSTRAINT_LAYOUT_CHILD, GtkLayoutChild)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkConstraintLayout, gtk_constraint_layout, GTK, CONSTRAINT_LAYOUT, GtkLayoutManager)
 in declarator_list *)
  function gtk_constraint_layout_new:^GtkLayoutManager;

  procedure gtk_constraint_layout_add_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);

  procedure gtk_constraint_layout_remove_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);

  procedure gtk_constraint_layout_add_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);

  procedure gtk_constraint_layout_remove_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);

  procedure gtk_constraint_layout_remove_all_constraints(layout:PGtkConstraintLayout);

(* Const before type ignored *)
(* Const before declarator ignored *)
(* Const before type ignored *)
(* error 
                                                                                 ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : GList;
(* Const before type ignored *)
(* Const before declarator ignored *)

  function gtk_constraint_layout_add_constraints_from_descriptionv(layout:PGtkConstraintLayout; lines:PPchar; n_lines:gsize; hspacing:longint; vspacing:longint; 
             views:PGHashTable; error:PPGError):^GList;

  function gtk_constraint_layout_observe_constraints(layout:PGtkConstraintLayout):^GListModel;

  function gtk_constraint_layout_observe_guides(layout:PGtkConstraintLayout):^GListModel;

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

