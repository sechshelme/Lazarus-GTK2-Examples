
  Type
  PGtkConstraint  = ^GtkConstraint;
  PGtkConstraintTarget  = ^GtkConstraintTarget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkconstraint.h: Constraint between two widgets
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
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}

  type
    _GtkConstraintTarget = GtkConstraintTarget;

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }

  {*
   * GtkConstraintTarget:
   *
   * The `GtkConstraintTarget` interface is implemented by objects that
   * can be used as source or target in `GtkConstraint`s.
   *
   * Besides `GtkWidget`, it is also implemented by `GtkConstraintGuide`.
    }
(* error 
G_DECLARE_INTERFACE (GtkConstraintTarget, gtk_constraint_target, GTK, CONSTRAINT_TARGET, GObject)
 in declarator_list *)
(* error 
G_DECLARE_INTERFACE (GtkConstraintTarget, gtk_constraint_target, GTK, CONSTRAINT_TARGET, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkConstraint, gtk_constraint, GTK, CONSTRAINT, GObject)
(* error 
                                                                 GtkConstraintAttribute  target_attribute,
(* error 
                                                                 GtkConstraintRelation   relation,
(* error 
                                                                 gpointer                source,
(* error 
                                                                 GtkConstraintAttribute  source_attribute,
(* error 
                                                                 double                  multiplier,
(* error 
                                                                 double                  constant,
(* error 
                                                                 int                     strength);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
  function gtk_constraint_new_constant(target:gpointer; target_attribute:GtkConstraintAttribute; relation:GtkConstraintRelation; constant:double; strength:longint):^GtkConstraint;

  function gtk_constraint_get_target(constraint:PGtkConstraint):^GtkConstraintTarget;

  function gtk_constraint_get_target_attribute(constraint:PGtkConstraint):GtkConstraintAttribute;

  function gtk_constraint_get_source(constraint:PGtkConstraint):^GtkConstraintTarget;

  function gtk_constraint_get_source_attribute(constraint:PGtkConstraint):GtkConstraintAttribute;

  function gtk_constraint_get_relation(constraint:PGtkConstraint):GtkConstraintRelation;

  function gtk_constraint_get_multiplier(constraint:PGtkConstraint):double;

  function gtk_constraint_get_constant(constraint:PGtkConstraint):double;

  function gtk_constraint_get_strength(constraint:PGtkConstraint):longint;

  function gtk_constraint_is_required(constraint:PGtkConstraint):gboolean;

  function gtk_constraint_is_attached(constraint:PGtkConstraint):gboolean;

  function gtk_constraint_is_constant(constraint:PGtkConstraint):gboolean;

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTRAINT_TARGET:=gtk_constraint_target_get_type;
    end;

  function gtk_constraint_new_constant(target:gpointer; target_attribute:GtkConstraintAttribute; relation:GtkConstraintRelation; constant:double; strength:longint):PGtkConstraint;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_target(constraint:PGtkConstraint):PGtkConstraintTarget;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_target_attribute(constraint:PGtkConstraint):GtkConstraintAttribute;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_source(constraint:PGtkConstraint):PGtkConstraintTarget;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_source_attribute(constraint:PGtkConstraint):GtkConstraintAttribute;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_relation(constraint:PGtkConstraint):GtkConstraintRelation;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_multiplier(constraint:PGtkConstraint):double;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_constant(constraint:PGtkConstraint):double;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_get_strength(constraint:PGtkConstraint):longint;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_is_required(constraint:PGtkConstraint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_is_attached(constraint:PGtkConstraint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_constraint_is_constant(constraint:PGtkConstraint):gboolean;
  begin
    { You must implement this function }
  end;

