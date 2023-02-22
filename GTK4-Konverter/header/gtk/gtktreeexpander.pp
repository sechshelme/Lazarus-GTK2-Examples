
    Type
    PGtkTreeExpander  = ^GtkTreeExpander;
    PGtkTreeListRow  = ^GtkTreeListRow;
    PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019 Benjamin Otte
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
{$ifndef __GTK_TREE_EXPANDER_H__}
{$define __GTK_TREE_EXPANDER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreelistmodel.h>}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkTreeExpander, gtk_tree_expander, GTK, TREE_EXPANDER, GtkWidget)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkTreeExpander, gtk_tree_expander, GTK, TREE_EXPANDER, GtkWidget)
 in declarator_list *)
  function gtk_tree_expander_get_child(self:PGtkTreeExpander):^GtkWidget;

  procedure gtk_tree_expander_set_child(self:PGtkTreeExpander; child:PGtkWidget);

  function gtk_tree_expander_get_item(self:PGtkTreeExpander):gpointer;

  function gtk_tree_expander_get_list_row(self:PGtkTreeExpander):^GtkTreeListRow;

  procedure gtk_tree_expander_set_list_row(self:PGtkTreeExpander; list_row:PGtkTreeListRow);

(* error 
gboolean                gtk_tree_expander_get_indent_for_icon (GtkTreeExpander        *self);
 in declarator_list *)
(* error 
void                    gtk_tree_expander_set_indent_for_icon (GtkTreeExpander        *self,
in declaration at line 57 *)
{$endif}
    { __GTK_TREE_EXPANDER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_EXPANDER:=gtk_tree_expander_get_type;
    end;

  function gtk_tree_expander_get_child(self:PGtkTreeExpander):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_expander_set_child(self:PGtkTreeExpander; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_tree_expander_get_item(self:PGtkTreeExpander):gpointer;
  begin
    { You must implement this function }
  end;
  function gtk_tree_expander_get_list_row(self:PGtkTreeExpander):PGtkTreeListRow;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_expander_set_list_row(self:PGtkTreeExpander; list_row:PGtkTreeListRow);
  begin
    { You must implement this function }
  end;

