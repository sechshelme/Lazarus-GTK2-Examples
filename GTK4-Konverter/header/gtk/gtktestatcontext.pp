
    Type
    Pchar  = ^char;
    PGtkAccessible  = ^GtkAccessible;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktestatcontext.h: Test AT context
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
{$include <gtk/gtkatcontext.h>}
  {*
   * gtk_test_accessible_assert_role:
   * @accessible: a `GtkAccessible`
   * @role: a `GtkAccessibleRole`
   *
   * Checks whether a `GtkAccessible` implementation has the given @role,
   * and raises an assertion if the condition is failed.
    }
(* error 
G_STMT_START { \
in declaration at line 41 *)
(* error 
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
(* error 
  GtkAccessibleRole __r1 = (role); \
in declaration at line 42 *)
(* error 
  GtkAccessibleRole __r1 = (role); \
(* error 
  GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
in declaration at line 43 *)
(* error 
  GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
(* error 
  if (__r1 == __r2) ; else { \
in declaration at line 44 *)
(* error 
  if (__r1 == __r2) ; else { \
in declaration at line 47 *)
(* error 
                                                __a, __r1, __r2); \
(* error 
  } \
    {*
     * gtk_test_accessible_assert_property:
     * @accessible: a `GtkAccessible`
     * @property: a `GtkAccessibleProperty`
     * @...: the value of @property
     *
     * Checks whether a `GtkAccessible` implementation has its accessible
     * property set to the expected value, and raises an assertion if the
     * condition is not satisfied.
      }
in declaration at line 63 *)
(* error 
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
(* error 
  GtkAccessibleProperty __p = (property); \
in declaration at line 64 *)
(* error 
  GtkAccessibleProperty __p = (property); \
(* error 
  char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
in declaration at line 65 *)
(* error 
  char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
(* error 
  if (value__ == NULL) ; else { \
in declaration at line 66 *)
(* error 
  if (value__ == NULL) ; else { \
in declaration at line 67 *)
(* error 
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-property(" #property ") == " # __VA_ARGS__ "): value = '%s'", value__); \
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 68 *)
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
(* error 
    g_free (msg__); \
in declaration at line 69 *)
(* error 
    g_free (msg__); \
(* error 
  } \
    {*
     * gtk_test_accessible_assert_relation:
     * @accessible: a `GtkAccessible`
     * @relation: a `GtkAccessibleRelation`
     * @...: the expected value of @relation
     *
     * Checks whether a `GtkAccessible` implementation has its accessible
     * relation set to the expected value, and raises an assertion if the
     * condition is not satisfied.
      }
in declaration at line 85 *)
(* error 
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
(* error 
  GtkAccessibleRelation __r = (relation); \
in declaration at line 86 *)
(* error 
  GtkAccessibleRelation __r = (relation); \
(* error 
  char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
in declaration at line 87 *)
(* error 
  char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
(* error 
  if (value__ == NULL); else { \
in declaration at line 88 *)
(* error 
  if (value__ == NULL); else { \
in declaration at line 89 *)
(* error 
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-relation(" #relation ") == " # __VA_ARGS__ "): value = '%s'", value__); \
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 90 *)
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
(* error 
    g_free (msg__); \
in declaration at line 91 *)
(* error 
    g_free (msg__); \
(* error 
  } \
    {*
     * gtk_test_accessible_assert_state:
     * @accessible: a `GtkAccessible`
     * @state: a `GtkAccessibleRelation`
     * @...: the expected value of @state
     *
     * Checks whether a `GtkAccessible` implementation has its accessible
     * state set to the expected value, and raises an assertion if the
     * condition is not satisfied.
      }
in declaration at line 107 *)
(* error 
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
(* error 
  GtkAccessibleState __s = (state); \
in declaration at line 108 *)
(* error 
  GtkAccessibleState __s = (state); \
(* error 
  char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
in declaration at line 109 *)
(* error 
  char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
(* error 
  if (value__ == NULL); else { \
in declaration at line 110 *)
(* error 
  if (value__ == NULL); else { \
in declaration at line 111 *)
(* error 
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-state(" #state ") == " # __VA_ARGS__ "): value = '%s'", value__); \
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 112 *)
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
(* error 
    g_free (msg__); \
in declaration at line 113 *)
(* error 
    g_free (msg__); \
(* error 
  } \
in declaration at line 119 *)

    function gtk_test_accessible_has_property(accessible:PGtkAccessible; _property:GtkAccessibleProperty):gboolean;

    function gtk_test_accessible_has_relation(accessible:PGtkAccessible; relation:GtkAccessibleRelation):gboolean;

    function gtk_test_accessible_has_state(accessible:PGtkAccessible; state:GtkAccessibleState):gboolean;

    function gtk_test_accessible_check_property(accessible:PGtkAccessible; _property:GtkAccessibleProperty; args:array of const):^char;

    function gtk_test_accessible_check_relation(accessible:PGtkAccessible; relation:GtkAccessibleRelation; args:array of const):^char;

    function gtk_test_accessible_check_state(accessible:PGtkAccessible; state:GtkAccessibleState; args:array of const):^char;

(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
    procedure gtk_test_accessible_assertion_message_role(domain:Pchar; file:Pchar; line:longint; func:Pchar; expr:Pchar; 
                accessible:PGtkAccessible; expected_role:GtkAccessibleRole; actual_role:GtkAccessibleRole);

    function gtk_test_accessible_has_property(accessible:PGtkAccessible; _property:GtkAccessibleProperty):gboolean;
    begin
      { You must implement this function }
    end;
    function gtk_test_accessible_has_relation(accessible:PGtkAccessible; relation:GtkAccessibleRelation):gboolean;
    begin
      { You must implement this function }
    end;
    function gtk_test_accessible_has_state(accessible:PGtkAccessible; state:GtkAccessibleState):gboolean;
    begin
      { You must implement this function }
    end;
    function gtk_test_accessible_check_property(accessible:PGtkAccessible; _property:GtkAccessibleProperty):Pchar;
    begin
      { You must implement this function }
    end;
    function gtk_test_accessible_check_relation(accessible:PGtkAccessible; relation:GtkAccessibleRelation):Pchar;
    begin
      { You must implement this function }
    end;
    function gtk_test_accessible_check_state(accessible:PGtkAccessible; state:GtkAccessibleState):Pchar;
    begin
      { You must implement this function }
    end;
    procedure gtk_test_accessible_assertion_message_role(domain:Pchar; file:Pchar; line:longint; func:Pchar; expr:Pchar; 
                accessible:PGtkAccessible; expected_role:GtkAccessibleRole; actual_role:GtkAccessibleRole);
    begin
      { You must implement this function }
    end;

