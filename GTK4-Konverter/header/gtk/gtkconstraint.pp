
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
  { Zeile entfernt  }

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
  { Zeile entfernt  }
  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_constraint_new(target:gpointer; target_attribute:GtkConstraintAttribute; relation:GtkConstraintRelation; source:gpointer; source_attribute:GtkConstraintAttribute; 
             multiplier:double; constant:double; strength:longint):^GtkConstraint;

  { Zeile entfernt  }
  function gtk_constraint_new_constant(target:gpointer; target_attribute:GtkConstraintAttribute; relation:GtkConstraintRelation; constant:double; strength:longint):^GtkConstraint;

  { Zeile entfernt  }
  function gtk_constraint_get_target(constraint:PGtkConstraint):^GtkConstraintTarget;

  { Zeile entfernt  }
  function gtk_constraint_get_target_attribute(constraint:PGtkConstraint):GtkConstraintAttribute;

  { Zeile entfernt  }
  function gtk_constraint_get_source(constraint:PGtkConstraint):^GtkConstraintTarget;

  { Zeile entfernt  }
  function gtk_constraint_get_source_attribute(constraint:PGtkConstraint):GtkConstraintAttribute;

  { Zeile entfernt  }
  function gtk_constraint_get_relation(constraint:PGtkConstraint):GtkConstraintRelation;

  { Zeile entfernt  }
  function gtk_constraint_get_multiplier(constraint:PGtkConstraint):double;

  { Zeile entfernt  }
  function gtk_constraint_get_constant(constraint:PGtkConstraint):double;

  { Zeile entfernt  }
  function gtk_constraint_get_strength(constraint:PGtkConstraint):longint;

  { Zeile entfernt  }
  function gtk_constraint_is_required(constraint:PGtkConstraint):gboolean;

  { Zeile entfernt  }
  function gtk_constraint_is_attached(constraint:PGtkConstraint):gboolean;

  { Zeile entfernt  }
  function gtk_constraint_is_constant(constraint:PGtkConstraint):gboolean;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTRAINT_TARGET:=gtk_constraint_target_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTRAINT:=gtk_constraint_get_type;
    end;

  function gtk_constraint_new(target:gpointer; target_attribute:GtkConstraintAttribute; relation:GtkConstraintRelation; source:gpointer; source_attribute:GtkConstraintAttribute; 
             multiplier:double; constant:double; strength:longint):PGtkConstraint;
  begin
    { You must implement this function }
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

