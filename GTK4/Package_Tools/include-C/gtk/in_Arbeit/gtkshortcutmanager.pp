
unit gtkshortcutmanager;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkshortcutmanager.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkshortcutmanager.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGtkShortcutController  = ^GtkShortcutController;
PGtkShortcutManager  = ^GtkShortcutManager;
PGtkShortcutManagerInterface  = ^GtkShortcutManagerInterface;
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
{$include <gtk/gtkshortcutcontroller.h>}
{$include <gtk/gtkwidget.h>}

{ was #define dname def_expr }
function GTK_TYPE_SHORTCUT_MANAGER : longint; { return type might be wrong }

{G_DECLARE_INTERFACE (GtkShortcutManager, gtk_shortcut_manager, GTK, SHORTCUT_MANAGER, GtkWidget) }
{*
 * GtkShortcutManagerInterface:
 * @add_controller: Add a `GtkShortcutController` to be managed.
 * @remove_controller: Remove a `GtkShortcutController` that had previously
 *   been added
 *
 * The list of functions that can be implemented for the `GtkShortcutManager`
 * interface.
 *
 * Note that no function is mandatory to implement, the default implementation
 * will work fine.
  }
{< private > }
{< public > }
type
  PGtkShortcutManagerInterface = ^TGtkShortcutManagerInterface;
  TGtkShortcutManagerInterface = record
      g_iface : TGTypeInterface;
      add_controller : procedure (self:PGtkShortcutManager; controller:PGtkShortcutController);cdecl;
      remove_controller : procedure (self:PGtkShortcutManager; controller:PGtkShortcutController);cdecl;
    end;


implementation

{ was #define dname def_expr }
function GTK_TYPE_SHORTCUT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_MANAGER:=gtk_shortcut_manager_get_type;
  end;


end.
