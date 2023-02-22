
  Type
  Pchar  = ^char;
  PGtkConstraintGuide  = ^GtkConstraintGuide;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkconstraintguide.h: Flexible space for constraints
   * Copyright 2019 Red Hat, Inc.
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
   * Author: Matthias Clasen
    }
(** unsupported pragma#pragma once*)
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypebuiltins.h>}

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_GUIDE : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkConstraintGuide, gtk_constraint_guide, GTK, CONSTRAINT_GUIDE, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkConstraintGuide, gtk_constraint_guide, GTK, CONSTRAINT_GUIDE, GObject)
 in declarator_list *)
  procedure gtk_constraint_guide_set_min_size(guide:PGtkConstraintGuide; width:longint; height:longint);

  procedure gtk_constraint_guide_get_min_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);

  procedure gtk_constraint_guide_set_nat_size(guide:PGtkConstraintGuide; width:longint; height:longint);

  procedure gtk_constraint_guide_get_nat_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);

  procedure gtk_constraint_guide_set_max_size(guide:PGtkConstraintGuide; width:longint; height:longint);

  procedure gtk_constraint_guide_get_max_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);

  function gtk_constraint_guide_get_strength(guide:PGtkConstraintGuide):GtkConstraintStrength;

  procedure gtk_constraint_guide_set_strength(guide:PGtkConstraintGuide; strength:GtkConstraintStrength);

(* Const before type ignored *)
  procedure gtk_constraint_guide_set_name(guide:PGtkConstraintGuide; name:Pchar);

(* Const before type ignored *)
  function gtk_constraint_guide_get_name(guide:PGtkConstraintGuide):^char;

  { was #define dname def_expr }
  function GTK_TYPE_CONSTRAINT_GUIDE : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTRAINT_GUIDE:=gtk_constraint_guide_get_type;
    end;

  procedure gtk_constraint_guide_set_min_size(guide:PGtkConstraintGuide; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_get_min_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_set_nat_size(guide:PGtkConstraintGuide; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_get_nat_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_set_max_size(guide:PGtkConstraintGuide; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_get_max_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_constraint_guide_get_strength(guide:PGtkConstraintGuide):GtkConstraintStrength;
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_set_strength(guide:PGtkConstraintGuide; strength:GtkConstraintStrength);
  begin
    { You must implement this function }
  end;
  procedure gtk_constraint_guide_set_name(guide:PGtkConstraintGuide; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_constraint_guide_get_name(guide:PGtkConstraintGuide):Pchar;
  begin
    { You must implement this function }
  end;

