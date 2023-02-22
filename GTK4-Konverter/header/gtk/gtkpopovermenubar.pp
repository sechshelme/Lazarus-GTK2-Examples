
  Type
  Pchar  = ^char;
  PGMenuModel  = ^GMenuModel;
  PGtkPopoverMenuBar  = ^GtkPopoverMenuBar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2019 Red Hat, Inc.
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
{$ifndef __GTK_POPOVER_MENU_BAR_H__}
{$define __GTK_POPOVER_MENU_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpopover.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_POPOVER_MENU_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_MENU_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER_MENU_BAR(obj : longint) : longint;  


  type
    _GtkPopoverMenuBar = GtkPopoverMenuBar;
  { Zeile entfernt  }

  function gtk_popover_menu_bar_get_type:GType;

  { Zeile entfernt  }
  function gtk_popover_menu_bar_new_from_model(model:PGMenuModel):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_popover_menu_bar_set_menu_model(bar:PGtkPopoverMenuBar; model:PGMenuModel);

  { Zeile entfernt  }
  function gtk_popover_menu_bar_get_menu_model(bar:PGtkPopoverMenuBar):^GMenuModel;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_popover_menu_bar_add_child(bar:PGtkPopoverMenuBar; child:PGtkWidget; id:Pchar):gboolean;

  { Zeile entfernt  }
  function gtk_popover_menu_bar_remove_child(bar:PGtkPopoverMenuBar; child:PGtkWidget):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_POPOVER_MENU_BAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_POPOVER_MENU_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_POPOVER_MENU_BAR:=gtk_popover_menu_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_MENU_BAR(obj : longint) : longint;
  begin
    GTK_POPOVER_MENU_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_POPOVER_MENU_BAR,GtkPopoverMenuBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER_MENU_BAR(obj : longint) : longint;
  begin
    GTK_IS_POPOVER_MENU_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_POPOVER_MENU_BAR);
  end;

  function gtk_popover_menu_bar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_bar_new_from_model(model:PGMenuModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_menu_bar_set_menu_model(bar:PGtkPopoverMenuBar; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_bar_get_menu_model(bar:PGtkPopoverMenuBar):PGMenuModel;
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_bar_add_child(bar:PGtkPopoverMenuBar; child:PGtkWidget; id:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_popover_menu_bar_remove_child(bar:PGtkPopoverMenuBar; child:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;

