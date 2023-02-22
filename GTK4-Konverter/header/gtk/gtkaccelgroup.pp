
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGdkModifierType  = ^GdkModifierType;
  Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1998, 2001 Tim Janik
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_ACCEL_GROUP_H__}
{$define __GTK_ACCEL_GROUP_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
  { --- Accelerators---  }
(* error 
					       GdkModifierType  modifiers) G_GNUC_CONST;
 in declarator_list *)

    var
 : gboolean;
(* Const before type ignored *)

  function gtk_accelerator_parse(accelerator:Pchar; accelerator_key:Pguint; accelerator_mods:PGdkModifierType):gboolean;

(* Const before type ignored *)
  function gtk_accelerator_parse_with_keycode(accelerator:Pchar; display:PGdkDisplay; accelerator_key:Pguint; accelerator_codes:PPguint; accelerator_mods:PGdkModifierType):gboolean;

  function gtk_accelerator_name(accelerator_key:guint; accelerator_mods:GdkModifierType):^char;

  function gtk_accelerator_name_with_keycode(display:PGdkDisplay; accelerator_key:guint; keycode:guint; accelerator_mods:GdkModifierType):^char;

  function gtk_accelerator_get_label(accelerator_key:guint; accelerator_mods:GdkModifierType):^char;

  function gtk_accelerator_get_label_with_keycode(display:PGdkDisplay; accelerator_key:guint; keycode:guint; accelerator_mods:GdkModifierType):^char;

(* error 
GdkModifierType gtk_accelerator_get_default_mod_mask (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GdkModifierType;
{$endif}
  { __GTK_ACCEL_GROUP_H__  }
  function gtk_accelerator_parse(accelerator:Pchar; accelerator_key:Pguint; accelerator_mods:PGdkModifierType):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_accelerator_parse_with_keycode(accelerator:Pchar; display:PGdkDisplay; accelerator_key:Pguint; accelerator_codes:PPguint; accelerator_mods:PGdkModifierType):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_accelerator_name(accelerator_key:guint; accelerator_mods:GdkModifierType):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_accelerator_name_with_keycode(display:PGdkDisplay; accelerator_key:guint; keycode:guint; accelerator_mods:GdkModifierType):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_accelerator_get_label(accelerator_key:guint; accelerator_mods:GdkModifierType):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_accelerator_get_label_with_keycode(display:PGdkDisplay; accelerator_key:guint; keycode:guint; accelerator_mods:GdkModifierType):Pchar;
  begin
    { You must implement this function }
  end;

