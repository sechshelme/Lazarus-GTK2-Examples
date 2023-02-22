
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
{$ifndef __GTK_SHORTCUT_CONTROLLER_H__}
{$define __GTK_SHORTCUT_CONTROLLER_H__}  
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
    _GtkShortcutController = GtkShortcutController;
    _GtkShortcutControllerClass = GtkShortcutControllerClass;
(* error 
GType                   gtk_shortcut_controller_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_shortcut_controller_new:^GtkEventController;

  function gtk_shortcut_controller_new_for_model(model:PGListModel):^GtkEventController;

  procedure gtk_shortcut_controller_set_mnemonics_modifiers(self:PGtkShortcutController; modifiers:GdkModifierType);

  function gtk_shortcut_controller_get_mnemonics_modifiers(self:PGtkShortcutController):GdkModifierType;

  procedure gtk_shortcut_controller_set_scope(self:PGtkShortcutController; scope:GtkShortcutScope);

  function gtk_shortcut_controller_get_scope(self:PGtkShortcutController):GtkShortcutScope;

  procedure gtk_shortcut_controller_add_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);

  procedure gtk_shortcut_controller_remove_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);

{$endif}
  { __GTK_SHORTCUT_CONTROLLER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUT_CONTROLLER:=gtk_shortcut_controller_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUT_CONTROLLER(o : longint) : longint;
  begin
    GTK_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutController);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;
  begin
    GTK_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUT_CONTROLLER(o : longint) : longint;
  begin
    GTK_IS_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_SHORTCUT_CONTROLLER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;
  begin
    GTK_IS_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_SHORTCUT_CONTROLLER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUT_CONTROLLER_GET_CLASS(o : longint) : longint;
  begin
    GTK_SHORTCUT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
  end;

  function gtk_shortcut_controller_new:PGtkEventController;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_controller_new_for_model(model:PGListModel):PGtkEventController;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_controller_set_mnemonics_modifiers(self:PGtkShortcutController; modifiers:GdkModifierType);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_controller_get_mnemonics_modifiers(self:PGtkShortcutController):GdkModifierType;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_controller_set_scope(self:PGtkShortcutController; scope:GtkShortcutScope);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_controller_get_scope(self:PGtkShortcutController):GtkShortcutScope;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_controller_add_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_controller_remove_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);
  begin
    { You must implement this function }
  end;

