
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGdkEvent  = ^GdkEvent;
  PGString  = ^GString;
  PGtkAlternativeTrigger  = ^GtkAlternativeTrigger;
  PGtkKeyvalTrigger  = ^GtkKeyvalTrigger;
  PGtkMnemonicTrigger  = ^GtkMnemonicTrigger;
  PGtkShortcutTrigger  = ^GtkShortcutTrigger;
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
{$ifndef __GTK_SHORTCUT_TRIGGER_H__}
{$define __GTK_SHORTCUT_TRIGGER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_shortcut_trigger_parse_string(_string:Pchar):^GtkShortcutTrigger;

  { Zeile entfernt  }
  function gtk_shortcut_trigger_to_string(self:PGtkShortcutTrigger):^char;

  { Zeile entfernt  }
  procedure gtk_shortcut_trigger_print(self:PGtkShortcutTrigger; _string:PGString);

  { Zeile entfernt  }
  function gtk_shortcut_trigger_to_label(self:PGtkShortcutTrigger; display:PGdkDisplay):^char;

  { Zeile entfernt  }
  function gtk_shortcut_trigger_print_label(self:PGtkShortcutTrigger; display:PGdkDisplay; _string:PGString):gboolean;

  { Zeile entfernt  }
  function gtk_shortcut_trigger_hash(trigger:gconstpointer):guint;

  { Zeile entfernt  }
  function gtk_shortcut_trigger_equal(trigger1:gconstpointer; trigger2:gconstpointer):gboolean;

  { Zeile entfernt  }
  function gtk_shortcut_trigger_compare(trigger1:gconstpointer; trigger2:gconstpointer):longint;

  { Zeile entfernt  }
  function gtk_shortcut_trigger_trigger(self:PGtkShortcutTrigger; event:PGdkEvent; enable_mnemonics:gboolean):GdkKeyMatch;

  { was #define dname def_expr }
  function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }

  {*
   * GtkNeverTrigger:
   *
   * A `GtkShortcutTrigger` that never triggers.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_never_trigger_get:^GtkShortcutTrigger;

  { was #define dname def_expr }
  function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }

  {*
   * GtkKeyvalTrigger:
   *
   * A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_keyval_trigger_new(keyval:guint; modifiers:GdkModifierType):^GtkShortcutTrigger;

  { Zeile entfernt  }
  function gtk_keyval_trigger_get_modifiers(self:PGtkKeyvalTrigger):GdkModifierType;

  { Zeile entfernt  }
  function gtk_keyval_trigger_get_keyval(self:PGtkKeyvalTrigger):guint;

  { was #define dname def_expr }
  function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }

  {*
   * GtkMnemonicTrigger:
   *
   * A `GtkShortcutTrigger` that triggers when a specific mnemonic is pressed.
   *
   * Mnemonics require a *mnemonic modifier* (typically <kbd>Alt</kbd>) to be
   * pressed together with the mnemonic key.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_mnemonic_trigger_new(keyval:guint):^GtkShortcutTrigger;

  { Zeile entfernt  }
  function gtk_mnemonic_trigger_get_keyval(self:PGtkMnemonicTrigger):guint;

  { was #define dname def_expr }
  function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }

  {*
   * GtkAlternativeTrigger:
   *
   * A `GtkShortcutTrigger` that combines two triggers.
   *
   * The `GtkAlternativeTrigger` triggers when either of two trigger.
   *
   * This can be cascaded to combine more than two triggers.
    }
  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_alternative_trigger_new(first:PGtkShortcutTrigger; second:PGtkShortcutTrigger):^GtkShortcutTrigger;

  { Zeile entfernt  }
  function gtk_alternative_trigger_get_first(self:PGtkAlternativeTrigger):^GtkShortcutTrigger;

  { Zeile entfernt  }
  function gtk_alternative_trigger_get_second(self:PGtkAlternativeTrigger):^GtkShortcutTrigger;

  { Zeile entfernt  }
{$endif}
  { __GTK_SHORTCUT_TRIGGER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUT_TRIGGER:=gtk_shortcut_trigger_get_type;
    end;

  function gtk_shortcut_trigger_parse_string(_string:Pchar):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_to_string(self:PGtkShortcutTrigger):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_trigger_print(self:PGtkShortcutTrigger; _string:PGString);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_to_label(self:PGtkShortcutTrigger; display:PGdkDisplay):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_print_label(self:PGtkShortcutTrigger; display:PGdkDisplay; _string:PGString):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_hash(trigger:gconstpointer):guint;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_equal(trigger1:gconstpointer; trigger2:gconstpointer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_compare(trigger1:gconstpointer; trigger2:gconstpointer):longint;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_trigger_trigger(self:PGtkShortcutTrigger; event:PGdkEvent; enable_mnemonics:gboolean):GdkKeyMatch;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_NEVER_TRIGGER:=gtk_never_trigger_get_type;
    end;

  function gtk_never_trigger_get:PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_KEYVAL_TRIGGER:=gtk_keyval_trigger_get_type;
    end;

  function gtk_keyval_trigger_new(keyval:guint; modifiers:GdkModifierType):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  function gtk_keyval_trigger_get_modifiers(self:PGtkKeyvalTrigger):GdkModifierType;
  begin
    { You must implement this function }
  end;
  function gtk_keyval_trigger_get_keyval(self:PGtkKeyvalTrigger):guint;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_MNEMONIC_TRIGGER:=gtk_mnemonic_trigger_get_type;
    end;

  function gtk_mnemonic_trigger_new(keyval:guint):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  function gtk_mnemonic_trigger_get_keyval(self:PGtkMnemonicTrigger):guint;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_ALTERNATIVE_TRIGGER:=gtk_alternative_trigger_get_type;
    end;

  function gtk_alternative_trigger_new(first:PGtkShortcutTrigger; second:PGtkShortcutTrigger):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  function gtk_alternative_trigger_get_first(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  function gtk_alternative_trigger_get_second(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;

