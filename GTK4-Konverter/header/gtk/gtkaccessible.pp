
  Type
  PGtkAccessible  = ^GtkAccessible;
  PGtkAccessibleProperty  = ^GtkAccessibleProperty;
  PGtkAccessibleRelation  = ^GtkAccessibleRelation;
  PGtkAccessibleState  = ^GtkAccessibleState;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkaccessible.h: Accessible interface
   *
   * Copyright 2020  GNOME Foundation
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
   * License along with this library; if not, see <http://www.gnu.org/licenses/>.
    }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ACCESSIBLE : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_accessible_get_accessible_role(self:PGtkAccessible):GtkAccessibleRole;

  { Zeile entfernt  }
  procedure gtk_accessible_update_state(self:PGtkAccessible; first_state:GtkAccessibleState; args:array of const);

  { Zeile entfernt  }
  procedure gtk_accessible_update_property(self:PGtkAccessible; first_property:GtkAccessibleProperty; args:array of const);

  { Zeile entfernt  }
  procedure gtk_accessible_update_relation(self:PGtkAccessible; first_relation:GtkAccessibleRelation; args:array of const);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_accessible_update_state_value(self:PGtkAccessible; n_states:longint; states:PGtkAccessibleState; values:PGValue);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_accessible_update_property_value(self:PGtkAccessible; n_properties:longint; properties:PGtkAccessibleProperty; values:PGValue);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_accessible_update_relation_value(self:PGtkAccessible; n_relations:longint; relations:PGtkAccessibleRelation; values:PGValue);

  { Zeile entfernt  }
  procedure gtk_accessible_reset_state(self:PGtkAccessible; state:GtkAccessibleState);

  { Zeile entfernt  }
  procedure gtk_accessible_reset_property(self:PGtkAccessible; _property:GtkAccessibleProperty);

  { Zeile entfernt  }
  procedure gtk_accessible_reset_relation(self:PGtkAccessible; relation:GtkAccessibleRelation);

  { Zeile entfernt  }
  procedure gtk_accessible_state_init_value(state:GtkAccessibleState; value:PGValue);

  { Zeile entfernt  }
  procedure gtk_accessible_property_init_value(_property:GtkAccessibleProperty; value:PGValue);

  { Zeile entfernt  }
  procedure gtk_accessible_relation_init_value(relation:GtkAccessibleRelation; value:PGValue);

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_ACCESSIBLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_ACCESSIBLE:=gtk_accessible_get_type;
    end;

  function gtk_accessible_get_accessible_role(self:PGtkAccessible):GtkAccessibleRole;
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_update_state(self:PGtkAccessible; first_state:GtkAccessibleState);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_update_property(self:PGtkAccessible; first_property:GtkAccessibleProperty);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_update_relation(self:PGtkAccessible; first_relation:GtkAccessibleRelation);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_update_state_value(self:PGtkAccessible; n_states:longint; states:PGtkAccessibleState; values:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_update_property_value(self:PGtkAccessible; n_properties:longint; properties:PGtkAccessibleProperty; values:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_update_relation_value(self:PGtkAccessible; n_relations:longint; relations:PGtkAccessibleRelation; values:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_reset_state(self:PGtkAccessible; state:GtkAccessibleState);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_reset_property(self:PGtkAccessible; _property:GtkAccessibleProperty);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_reset_relation(self:PGtkAccessible; relation:GtkAccessibleRelation);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_state_init_value(state:GtkAccessibleState; value:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_property_init_value(_property:GtkAccessibleProperty; value:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_accessible_relation_init_value(relation:GtkAccessibleRelation; value:PGValue);
  begin
    { You must implement this function }
  end;

