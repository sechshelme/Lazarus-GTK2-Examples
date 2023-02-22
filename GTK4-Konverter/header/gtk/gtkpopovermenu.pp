
  Type
  Pchar  = ^char;
  PGMenuModel  = ^GMenuModel;
  PGtkPopoverMenu  = ^GtkPopoverMenu;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright © 2014 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_POPOVER_MENU_H__}
{$define __GTK_POPOVER_MENU_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpopover.h>}

  { was #define dname def_expr }
  function GTK_TYPE_POPOVER_MENU : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_MENU(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER_MENU(o : longint) : longint;  


  type
    _GtkPopoverMenu = GtkPopoverMenu;
(* error 
GType       gtk_popover_menu_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_popover_menu_new_from_model(model:PGMenuModel):^GtkWidget;

  {*
   * GtkPopoverMenuFlags:
   * @GTK_POPOVER_MENU_NESTED: Create submenus as nested
   *    popovers. Without this flag, submenus are created as
   *    sliding pages that replace the main menu.
   *
   * Flags that affect how popover menus are created from
   * a menu model.
    }

  type
    GtkPopoverMenuFlags = (GTK_POPOVER_MENU_NESTED := 1 shl 0);

  function gtk_popover_menu_new_from_model_full(model:PGMenuModel; flags:GtkPopoverMenuFlags):^GtkWidget;

  procedure gtk_popover_menu_set_menu_model(popover:PGtkPopoverMenu; model:PGMenuModel);

  function gtk_popover_menu_get_menu_model(popover:PGtkPopoverMenu):^GMenuModel;

(* Const before type ignored *)
  function gtk_popover_menu_add_child(popover:PGtkPopoverMenu; child:PGtkWidget; id:Pchar):gboolean;

  function gtk_popover_menu_remove_child(popover:PGtkPopoverMenu; child:PGtkWidget):gboolean;

{$endif}
  { __GTK_POPOVER_MENU_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_POPOVER_MENU : longint; { return type might be wrong }
    begin
      GTK_TYPE_POPOVER_MENU:=gtk_popover_menu_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_MENU(o : longint) : longint;
  begin
    GTK_POPOVER_MENU:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_POPOVER_MENU,GtkPopoverMenu);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER_MENU(o : longint) : longint;
  begin
    GTK_IS_POPOVER_MENU:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_POPOVER_MENU);
  end;

  function gtk_popover_menu_new_from_model(model:PGMenuModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_new_from_model_full(model:PGMenuModel; flags:GtkPopoverMenuFlags):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_menu_set_menu_model(popover:PGtkPopoverMenu; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_get_menu_model(popover:PGtkPopoverMenu):PGMenuModel;
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_add_child(popover:PGtkPopoverMenu; child:PGtkWidget; id:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_remove_child(popover:PGtkPopoverMenu; child:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;

