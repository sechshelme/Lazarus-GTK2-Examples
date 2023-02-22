
  Type
  PGtkExpression  = ^GtkExpression;
  PGtkNumericSorter  = ^GtkNumericSorter;
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
{$ifndef __GTK_NUMERIC_SORTER_H__}
{$define __GTK_NUMERIC_SORTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_NUMERIC_SORTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_numeric_sorter_new(expression:PGtkExpression):^GtkNumericSorter;

  { Zeile entfernt  }
  function gtk_numeric_sorter_get_expression(self:PGtkNumericSorter):^GtkExpression;

  { Zeile entfernt  }
  procedure gtk_numeric_sorter_set_expression(self:PGtkNumericSorter; expression:PGtkExpression);

  { Zeile entfernt  }
  function gtk_numeric_sorter_get_sort_order(self:PGtkNumericSorter):GtkSortType;

  { Zeile entfernt  }
  procedure gtk_numeric_sorter_set_sort_order(self:PGtkNumericSorter; sort_order:GtkSortType);

  { Zeile entfernt  }
{$endif}
  { __GTK_NUMERIC_SORTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_NUMERIC_SORTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_NUMERIC_SORTER:=gtk_numeric_sorter_get_type;
    end;

  function gtk_numeric_sorter_new(expression:PGtkExpression):PGtkNumericSorter;
  begin
    { You must implement this function }
  end;
  function gtk_numeric_sorter_get_expression(self:PGtkNumericSorter):PGtkExpression;
  begin
    { You must implement this function }
  end;
  procedure gtk_numeric_sorter_set_expression(self:PGtkNumericSorter; expression:PGtkExpression);
  begin
    { You must implement this function }
  end;
  function gtk_numeric_sorter_get_sort_order(self:PGtkNumericSorter):GtkSortType;
  begin
    { You must implement this function }
  end;
  procedure gtk_numeric_sorter_set_sort_order(self:PGtkNumericSorter; sort_order:GtkSortType);
  begin
    { You must implement this function }
  end;

