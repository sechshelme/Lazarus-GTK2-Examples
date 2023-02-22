
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

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }

(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkShortcutTrigger, gtk_shortcut_trigger, GTK, SHORTCUT_TRIGGER, GObject)
 in declarator_list *)
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkShortcutTrigger, gtk_shortcut_trigger, GTK, SHORTCUT_TRIGGER, GObject)
 in declarator_list *)
  function gtk_shortcut_trigger_to_string(self:PGtkShortcutTrigger):^char;

  procedure gtk_shortcut_trigger_print(self:PGtkShortcutTrigger; _string:PGString);

  function gtk_shortcut_trigger_to_label(self:PGtkShortcutTrigger; display:PGdkDisplay):^char;

  function gtk_shortcut_trigger_print_label(self:PGtkShortcutTrigger; display:PGdkDisplay; _string:PGString):gboolean;

  function gtk_shortcut_trigger_hash(trigger:gconstpointer):guint;

  function gtk_shortcut_trigger_equal(trigger1:gconstpointer; trigger2:gconstpointer):gboolean;

  function gtk_shortcut_trigger_compare(trigger1:gconstpointer; trigger2:gconstpointer):longint;

  function gtk_shortcut_trigger_trigger(self:PGtkShortcutTrigger; event:PGdkEvent; enable_mnemonics:gboolean):GdkKeyMatch;

  { was #define dname def_expr }
  function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }

  {*
   * GtkNeverTrigger:
   *
   * A `GtkShortcutTrigger` that never triggers.
    }
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkNeverTrigger, gtk_never_trigger, GTK, NEVER_TRIGGER, GtkShortcutTrigger)
 in declarator_list *)
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkNeverTrigger, gtk_never_trigger, GTK, NEVER_TRIGGER, GtkShortcutTrigger)
 in declarator_list *)
  { was #define dname def_expr }
  function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }

  {*
   * GtkKeyvalTrigger:
   *
   * A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
    }
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkKeyvalTrigger, gtk_keyval_trigger, GTK, KEYVAL_TRIGGER, GtkShortcutTrigger)
 in declarator_list *)
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkKeyvalTrigger, gtk_keyval_trigger, GTK, KEYVAL_TRIGGER, GtkShortcutTrigger)
(* error 
                                                                 GdkModifierType   modifiers);
 in declarator_list *)
 in declarator_list *)
  function gtk_keyval_trigger_get_modifiers(self:PGtkKeyvalTrigger):GdkModifierType;

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
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkMnemonicTrigger, gtk_mnemonic_trigger, GTK, MNEMONIC_TRIGGER, GtkShortcutTrigger)
 in declarator_list *)
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkMnemonicTrigger, gtk_mnemonic_trigger, GTK, MNEMONIC_TRIGGER, GtkShortcutTrigger)
 in declarator_list *)
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
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkAlternativeTrigger, gtk_alternative_trigger, GTK, ALTERNATIVE_TRIGGER, GtkShortcutTrigger)
 in declarator_list *)
(* error 
GDK_DECLARE_INTERNAL_TYPE (GtkAlternativeTrigger, gtk_alternative_trigger, GTK, ALTERNATIVE_TRIGGER, GtkShortcutTrigger)
(* error 
                                                                 GtkShortcutTrigger    *second);
 in declarator_list *)
 in declarator_list *)
  function gtk_alternative_trigger_get_first(self:PGtkAlternativeTrigger):^GtkShortcutTrigger;

  function gtk_alternative_trigger_get_second(self:PGtkAlternativeTrigger):^GtkShortcutTrigger;

{$endif}
  { __GTK_SHORTCUT_TRIGGER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUT_TRIGGER:=gtk_shortcut_trigger_get_type;
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

  { was #define dname def_expr }
  function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_KEYVAL_TRIGGER:=gtk_keyval_trigger_get_type;
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

  function gtk_mnemonic_trigger_get_keyval(self:PGtkMnemonicTrigger):guint;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_ALTERNATIVE_TRIGGER:=gtk_alternative_trigger_get_type;
    end;

  function gtk_alternative_trigger_get_first(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;
  function gtk_alternative_trigger_get_second(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;
  begin
    { You must implement this function }
  end;

