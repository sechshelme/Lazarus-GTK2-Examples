
    Type
    Pchar  = ^char;
    PGListModel  = ^GListModel;
    PGtkDropDown  = ^GtkDropDown;
    PGtkExpression  = ^GtkExpression;
    PGtkListItemFactory  = ^GtkListItemFactory;
    PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Red Hat, Inc.
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
   * Authors: Matthias Clasen
    }
{$ifndef __GTK_DROP_DOWN_H__}
{$define __GTK_DROP_DOWN_H__}  
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkexpression.h>}

  { was #define dname def_expr }
  function GTK_TYPE_DROP_DOWN : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkDropDown, gtk_drop_down, GTK, DROP_DOWN, GtkWidget)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkDropDown, gtk_drop_down, GTK, DROP_DOWN, GtkWidget)
(* error 
                                                                 GtkExpression          *expression);
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gtk_drop_down_new_from_strings(strings:PPchar):^GtkWidget;

  procedure gtk_drop_down_set_model(self:PGtkDropDown; model:PGListModel);

  function gtk_drop_down_get_model(self:PGtkDropDown):^GListModel;

  procedure gtk_drop_down_set_selected(self:PGtkDropDown; position:guint);

  function gtk_drop_down_get_selected(self:PGtkDropDown):guint;

  function gtk_drop_down_get_selected_item(self:PGtkDropDown):gpointer;

  procedure gtk_drop_down_set_factory(self:PGtkDropDown; factory:PGtkListItemFactory);

  function gtk_drop_down_get_factory(self:PGtkDropDown):^GtkListItemFactory;

  procedure gtk_drop_down_set_list_factory(self:PGtkDropDown; factory:PGtkListItemFactory);

  function gtk_drop_down_get_list_factory(self:PGtkDropDown):^GtkListItemFactory;

  procedure gtk_drop_down_set_expression(self:PGtkDropDown; expression:PGtkExpression);

  function gtk_drop_down_get_expression(self:PGtkDropDown):^GtkExpression;

  procedure gtk_drop_down_set_enable_search(self:PGtkDropDown; enable_search:gboolean);

  function gtk_drop_down_get_enable_search(self:PGtkDropDown):gboolean;

(* error 
void            gtk_drop_down_set_show_arrow                    (GtkDropDown            *self,
in declaration at line 82 *)
(* error 
gboolean        gtk_drop_down_get_show_arrow                    (GtkDropDown            *self);
 in declarator_list *)
{$endif}
    { __GTK_DROP_DOWN_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DROP_DOWN : longint; { return type might be wrong }
    begin
      GTK_TYPE_DROP_DOWN:=gtk_drop_down_get_type;
    end;

  function gtk_drop_down_new_from_strings(strings:PPchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_down_set_model(self:PGtkDropDown; model:PGListModel);
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_model(self:PGtkDropDown):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_down_set_selected(self:PGtkDropDown; position:guint);
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_selected(self:PGtkDropDown):guint;
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_selected_item(self:PGtkDropDown):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_down_set_factory(self:PGtkDropDown; factory:PGtkListItemFactory);
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_factory(self:PGtkDropDown):PGtkListItemFactory;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_down_set_list_factory(self:PGtkDropDown; factory:PGtkListItemFactory);
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_list_factory(self:PGtkDropDown):PGtkListItemFactory;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_down_set_expression(self:PGtkDropDown; expression:PGtkExpression);
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_expression(self:PGtkDropDown):PGtkExpression;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_down_set_enable_search(self:PGtkDropDown; enable_search:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_drop_down_get_enable_search(self:PGtkDropDown):gboolean;
  begin
    { You must implement this function }
  end;

