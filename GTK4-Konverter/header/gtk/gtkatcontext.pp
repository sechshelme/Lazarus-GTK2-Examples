
  Type
  PGdkDisplay  = ^GdkDisplay;
  PGtkAccessible  = ^GtkAccessible;
  PGtkATContext  = ^GtkATContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkatcontext.h: Assistive technology context
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
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtkaccessible.h>}

  { was #define dname def_expr }
  function GTK_TYPE_AT_CONTEXT : longint; { return type might be wrong }

(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkATContext, gtk_at_context, GTK, AT_CONTEXT, GObject)
 in declarator_list *)
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkATContext, gtk_at_context, GTK, AT_CONTEXT, GObject)
 in declarator_list *)
  function gtk_at_context_get_accessible_role(self:PGtkATContext):GtkAccessibleRole;

  function gtk_at_context_create(accessible_role:GtkAccessibleRole; accessible:PGtkAccessible; display:PGdkDisplay):^GtkATContext;

  { was #define dname def_expr }
  function GTK_TYPE_AT_CONTEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_AT_CONTEXT:=gtk_at_context_get_type;
    end;

  function gtk_at_context_get_accessible_role(self:PGtkATContext):GtkAccessibleRole;
  begin
    { You must implement this function }
  end;
  function gtk_at_context_create(accessible_role:GtkAccessibleRole; accessible:PGtkAccessible; display:PGdkDisplay):PGtkATContext;
  begin
    { You must implement this function }
  end;

