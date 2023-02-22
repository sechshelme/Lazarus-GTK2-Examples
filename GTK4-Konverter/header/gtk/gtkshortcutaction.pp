
  Type
  Pchar  = ^char;
  PGString  = ^GString;
  PGtkNamedAction  = ^GtkNamedAction;
  PGtkShortcutAction  = ^GtkShortcutAction;
  PGtkSignalAction  = ^GtkSignalAction;
  PGtkWidget  = ^GtkWidget;
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
{$ifndef __GTK_SHORTCUT_ACTION_H__}
{$define __GTK_SHORTCUT_ACTION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_ACTION : longint; { return type might be wrong }

  {*
   * GtkShortcutFunc:
   * @widget: The widget passed to the activation
   * @args: (nullable): The arguments passed to the activation
   * @user_data: (nullable): The user data provided when activating the action
   *
   * Prototype for shortcuts based on user callbacks.
   *
   * Returns: %TRUE if the action was successful.
    }

  type

    GtkShortcutFunc = function (widget:PGtkWidget; args:PGVariant; user_data:gpointer):gboolean;cdecl;
  {*
   * GtkShortcutActionFlags:
   * @GTK_SHORTCUT_ACTION_EXCLUSIVE: The action is the only
   *   action that can be activated. If this flag is not set,
   *   a future activation may select a different action.
   *
   * List of flags that can be passed to action activation.
   *
   * More flags may be added in the future.
   * }

    GtkShortcutActionFlags = (GTK_SHORTCUT_ACTION_EXCLUSIVE := 1 shl 0
      );
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }

  function gtk_shortcut_action_to_string(self:PGtkShortcutAction):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_shortcut_action_parse_string(_string:Pchar):^GtkShortcutAction;

  { Zeile entfernt  }
  procedure gtk_shortcut_action_print(self:PGtkShortcutAction; _string:PGString);

  { Zeile entfernt  }
  function gtk_shortcut_action_activate(self:PGtkShortcutAction; flags:GtkShortcutActionFlags; widget:PGtkWidget; args:PGVariant):gboolean;

  { was #define dname def_expr }
  function GTK_TYPE_NOTHING_ACTION : longint; { return type might be wrong }

  {*
   * GtkNothingAction:
   *
   * A `GtkShortcutAction` that does nothing.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_nothing_action_get:^GtkShortcutAction;

  { was #define dname def_expr }
  function GTK_TYPE_CALLBACK_ACTION : longint; { return type might be wrong }

  {*
   * GtkCallbackAction:
   *
   * A `GtkShortcutAction` that invokes a callback.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_callback_action_new(callback:GtkShortcutFunc; data:gpointer; destroy:GDestroyNotify):^GtkShortcutAction;

  { was #define dname def_expr }
  function GTK_TYPE_MNEMONIC_ACTION : longint; { return type might be wrong }

  {*
   * GtkMnemonicAction:
   *
   * A `GtkShortcutAction` that calls gtk_widget_mnemonic_activate().
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_mnemonic_action_get:^GtkShortcutAction;

  { was #define dname def_expr }
  function GTK_TYPE_ACTIVATE_ACTION : longint; { return type might be wrong }

  {*
   * GtkActivateAction:
   *
   * A `GtkShortcutAction` that calls gtk_widget_activate().
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_activate_action_get:^GtkShortcutAction;

  { was #define dname def_expr }
  function GTK_TYPE_SIGNAL_ACTION : longint; { return type might be wrong }

  {*
   * GtkSignalAction:
   *
   * A `GtkShortcut`Action that emits a signal.
   *
   * Signals that are used in this way are referred to as keybinding signals,
   * and they are expected to be defined with the %G_SIGNAL_ACTION flag.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_signal_action_new(signal_name:Pchar):^GtkShortcutAction;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_signal_action_get_signal_name(self:PGtkSignalAction):^char;

  { was #define dname def_expr }
  function GTK_TYPE_NAMED_ACTION : longint; { return type might be wrong }

  {*
   * GtkNamedAction:
   *
   * A `GtkShortcutAction` that activates an action by name.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_named_action_new(name:Pchar):^GtkShortcutAction;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_named_action_get_action_name(self:PGtkNamedAction):^char;

  { Zeile entfernt  }
{$endif}
  { __GTK_SHORTCUT_ACTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUT_ACTION:=gtk_shortcut_action_get_type;
    end;

  function gtk_shortcut_action_to_string(self:PGtkShortcutAction):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_action_parse_string(_string:Pchar):PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_action_print(self:PGtkShortcutAction; _string:PGString);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_action_activate(self:PGtkShortcutAction; flags:GtkShortcutActionFlags; widget:PGtkWidget; args:PGVariant):gboolean;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_NOTHING_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_NOTHING_ACTION:=gtk_nothing_action_get_type;
    end;

  function gtk_nothing_action_get:PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_CALLBACK_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_CALLBACK_ACTION:=gtk_callback_action_get_type;
    end;

  function gtk_callback_action_new(callback:GtkShortcutFunc; data:gpointer; destroy:GDestroyNotify):PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_MNEMONIC_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_MNEMONIC_ACTION:=gtk_mnemonic_action_get_type;
    end;

  function gtk_mnemonic_action_get:PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_ACTIVATE_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_ACTIVATE_ACTION:=gtk_activate_action_get_type;
    end;

  function gtk_activate_action_get:PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_SIGNAL_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_SIGNAL_ACTION:=gtk_signal_action_get_type;
    end;

  function gtk_signal_action_new(signal_name:Pchar):PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  function gtk_signal_action_get_signal_name(self:PGtkSignalAction):Pchar;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_NAMED_ACTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_NAMED_ACTION:=gtk_named_action_get_type;
    end;

  function gtk_named_action_new(name:Pchar):PGtkShortcutAction;
  begin
    { You must implement this function }
  end;
  function gtk_named_action_get_action_name(self:PGtkNamedAction):Pchar;
  begin
    { You must implement this function }
  end;

