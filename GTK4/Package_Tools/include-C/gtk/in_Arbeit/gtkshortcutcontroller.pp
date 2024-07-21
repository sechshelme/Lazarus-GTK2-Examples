
unit gtkshortcutcontroller;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkshortcutcontroller.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkshortcutcontroller.h
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
PGListModel  = ^GListModel;
PGtkEventController  = ^GtkEventController;
PGtkShortcut  = ^GtkShortcut;
PGtkShortcutController  = ^GtkShortcutController;
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
{$include <gtk/gtkeventcontroller.h>}

{ was #define dname def_expr }
function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUT_CONTROLLER(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_SHORTCUT_CONTROLLER(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUT_CONTROLLER_GET_CLASS(o : longint) : longint;

type

function gtk_shortcut_controller_get_type:TGType;cdecl;external;
function gtk_shortcut_controller_new:PGtkEventController;cdecl;external;
function gtk_shortcut_controller_new_for_model(model:PGListModel):PGtkEventController;cdecl;external;
procedure gtk_shortcut_controller_set_mnemonics_modifiers(self:PGtkShortcutController; modifiers:TGdkModifierType);cdecl;external;
function gtk_shortcut_controller_get_mnemonics_modifiers(self:PGtkShortcutController):TGdkModifierType;cdecl;external;
procedure gtk_shortcut_controller_set_scope(self:PGtkShortcutController; scope:TGtkShortcutScope);cdecl;external;
function gtk_shortcut_controller_get_scope(self:PGtkShortcutController):TGtkShortcutScope;cdecl;external;
procedure gtk_shortcut_controller_add_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);cdecl;external;
procedure gtk_shortcut_controller_remove_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_CONTROLLER:=gtk_shortcut_controller_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUT_CONTROLLER(obj : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutController);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUT_CONTROLLER_CLASS(klass : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_SHORTCUT_CONTROLLER(obj : longint) : longint;
begin
  GTK_IS_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_SHORTCUT_CONTROLLER);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_SHORTCUT_CONTROLLER_CLASS(klass : longint) : longint;
begin
  GTK_IS_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_SHORTCUT_CONTROLLER);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUT_CONTROLLER_GET_CLASS(obj : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
end;


end.
