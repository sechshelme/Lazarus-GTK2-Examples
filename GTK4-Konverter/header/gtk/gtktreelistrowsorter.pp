
  Type
  PGtkSorter  = ^GtkSorter;
  PGtkTreeListRowSorter  = ^GtkTreeListRowSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019 Matthias Clasen
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
   * Authors: Matthias Clasen <mclasen@redhat.com>
    }
{$ifndef __GTK_TREE_LIST_ROW_SORTER_H__}
{$define __GTK_TREE_LIST_ROW_SORTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_tree_list_row_sorter_new(sorter:PGtkSorter):^GtkTreeListRowSorter;

  { Zeile entfernt  }
  function gtk_tree_list_row_sorter_get_sorter(self:PGtkTreeListRowSorter):^GtkSorter;

  { Zeile entfernt  }
  procedure gtk_tree_list_row_sorter_set_sorter(self:PGtkTreeListRowSorter; sorter:PGtkSorter);

  { Zeile entfernt  }
{$endif}
  { __GTK_TREE_LIST_ROW_SORTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_LIST_ROW_SORTER:=gtk_tree_list_row_sorter_get_type;
    end;

  function gtk_tree_list_row_sorter_new(sorter:PGtkSorter):PGtkTreeListRowSorter;
  begin
    { You must implement this function }
  end;
  function gtk_tree_list_row_sorter_get_sorter(self:PGtkTreeListRowSorter):PGtkSorter;
  begin
    { You must implement this function }
  end;
  procedure gtk_tree_list_row_sorter_set_sorter(self:PGtkTreeListRowSorter; sorter:PGtkSorter);
  begin
    { You must implement this function }
  end;

