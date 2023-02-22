
  Type
  Pchar  = ^char;
  PGtkShortcut  = ^GtkShortcut;
  PGtkShortcutAction  = ^GtkShortcutAction;
  PGtkShortcutTrigger  = ^GtkShortcutTrigger;
  PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Benjamin Otte
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
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_SHORTCUT_H__}
{$define __GTK_SHORTCUT_H__}  
{$include <gtk/gtktypes.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkShortcut, gtk_shortcut, GTK, SHORTCUT, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkShortcut, gtk_shortcut, GTK, SHORTCUT, GObject)
(* error 
                                                                 GtkShortcutAction      *action);
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
  function gtk_shortcut_new_with_arguments(trigger:PGtkShortcutTrigger; action:PGtkShortcutAction; format_string:Pchar; args:array of const):^GtkShortcut;

  function gtk_shortcut_get_trigger(self:PGtkShortcut):^GtkShortcutTrigger;

  procedure gtk_shortcut_set_trigger(self:PGtkShortcut; trigger:PGtkShortcutTrigger);

  function gtk_shortcut_get_action(self:PGtkShortcut):^GtkShortcutAction;

  procedure gtk_shortcut_set_action(self:PGtkShortcut; action:PGtkShortcutAction);

  function gtk_shortcut_get_arguments(self:PGtkShortcut):^GVariant;

  procedure gtk_shortcut_set_arguments(self:PGtkShortcut; args:PGVariant);

{$endif}
  { __GTK_SHORTCUT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUT:=gtk_shortcut_get_type;
    end;

  function gtk_shortcut_new_with_arguments(trigger:PGtkShortcutTrigger; action:PGtkShortcutAction; format_string:Pchar):PGtkShortcut;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_get_trigger(self:PGtkShortcut):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_set_trigger(self:PGtkShortcut; trigger:PGtkShortcutTrigger);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_get_action(self:PGtkShortcut):PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_set_action(self:PGtkShortcut; action:PGtkShortcutAction);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_get_arguments(self:PGtkShortcut):PGVariant;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_set_arguments(self:PGtkShortcut; args:PGVariant);
  begin
    { You must implement this function }
  end;

