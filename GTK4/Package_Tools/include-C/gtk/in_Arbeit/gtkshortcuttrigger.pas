unit gtkshortcuttrigger;

interface

uses
  glib2, common_GTK;

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
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}

{*
 * GtkAlternativeTrigger:
 *
 * A `GtkShortcutTrigger` that combines two triggers.
 *
 * The `GtkAlternativeTrigger` triggers when either of two trigger.
 *
 * This can be cascaded to combine more than two triggers.
  }
{GDK_DECLARE_INTERNAL_TYPE (GtkAlternativeTrigger, gtk_alternative_trigger, GTK, ALTERNATIVE_TRIGGER, GtkShortcutTrigger) }
function gtk_alternative_trigger_new(first:PGtkShortcutTrigger; second:PGtkShortcutTrigger):PGtkShortcutTrigger;cdecl;external gtklib;
function gtk_alternative_trigger_get_first(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;cdecl;external gtklib;
function gtk_alternative_trigger_get_second(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;cdecl;external gtklib;

// === Konventiert am: 16-7-24 19:59:39 ===


implementation

function GTK_TYPE_ALTERNATIVE_TRIGGER: TGType;
begin
  Result := gtk_alternative_trigger_get_type;
end;

function GTK_ALTERNATIVE_TRIGGER(obj: Pointer): PGtkAlternativeTrigger;
begin
  Result := PGtkAlternativeTrigger(g_type_check_instance_cast(obj, GTK_TYPE_ALTERNATIVE_TRIGGER));
end;

function GTK_IS_ALTERNATIVE_TRIGGER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ALTERNATIVE_TRIGGER);
end;

function GTK_ALTERNATIVE_TRIGGER_CLASS(klass: Pointer): PGtkAlternativeTriggerClass;
begin
  Result := PGtkAlternativeTriggerClass(g_type_check_class_cast(klass, GTK_TYPE_ALTERNATIVE_TRIGGER));
end;

function GTK_IS_ALTERNATIVE_TRIGGER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ALTERNATIVE_TRIGGER);
end;

function GTK_ALTERNATIVE_TRIGGER_GET_CLASS(obj: Pointer): PGtkAlternativeTriggerClass;
begin
  Result := PGtkAlternativeTriggerClass(PGTypeInstance(obj)^.g_class);
end;

type 
  TGtkAlternativeTrigger = record
  end;
  PGtkAlternativeTrigger = ^TGtkAlternativeTrigger;

  TGtkAlternativeTriggerClass = record
  end;
  PGtkAlternativeTriggerClass = ^TGtkAlternativeTriggerClass;

function gtk_alternative_trigger_get_type: TGType; cdecl; external gtklib;


{ was #define dname def_expr }
function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_KEYVAL_TRIGGER:=gtk_keyval_trigger_get_type;
  end;

{ was #define dname def_expr }
function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MNEMONIC_TRIGGER:=gtk_mnemonic_trigger_get_type;
  end;

{ was #define dname def_expr }
function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ALTERNATIVE_TRIGGER:=gtk_alternative_trigger_get_type;
  end;


end.
