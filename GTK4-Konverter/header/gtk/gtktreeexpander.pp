
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
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_tree_expander_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_tree_expander_get_child(self:PGtkTreeExpander):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_tree_expander_set_child(self:PGtkTreeExpander; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_tree_expander_get_item(self:PGtkTreeExpander):gpointer;

  { Zeile entfernt  }
  function gtk_tree_expander_get_list_row(self:PGtkTreeExpander):^GtkTreeListRow;

  { Zeile entfernt  }
  procedure gtk_tree_expander_set_list_row(self:PGtkTreeExpander; list_row:PGtkTreeListRow);

  { Zeile entfernt  }
  function gtk_tree_expander_get_indent_for_icon(self:PGtkTreeExpander):gboolean;

  { Zeile entfernt  }
  procedure gtk_tree_expander_set_indent_for_icon(self:PGtkTreeExpander; indent_for_icon:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_TREE_EXPANDER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_EXPANDER:=gtk_tree_expander_get_type;
    end;

  function gtk_tree_expander_new:PGtkWidget;
  begin
    { You must implement this function }
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
  function gtk_tree_expander_get_indent_for_icon(self:PGtkTreeExpander):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_expander_set_indent_for_icon(self:PGtkTreeExpander; indent_for_icon:gboolean);
  begin
    { You must implement this function }
  end;

