
  Type
  PGtkSorter  = ^GtkSorter;
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
{$ifndef __GTK_SORTER_H__}
{$define __GTK_SORTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
  { Zeile entfernt  }
  {*
   * GtkSorterOrder:
   * @GTK_SORTER_ORDER_PARTIAL: A partial order. Any `GtkOrdering` is possible.
   * @GTK_SORTER_ORDER_NONE: No order, all elements are considered equal.
   *   gtk_sorter_compare() will only return %GTK_ORDERING_EQUAL.
   * @GTK_SORTER_ORDER_TOTAL: A total order. gtk_sorter_compare() will only
   *   return %GTK_ORDERING_EQUAL if an item is compared with itself. Two
   *   different items will never cause this value to be returned.
   *
   * Describes the type of order that a `GtkSorter` may produce.
    }

  type
    GtkSorterOrder = (GTK_SORTER_ORDER_PARTIAL,GTK_SORTER_ORDER_NONE,
      GTK_SORTER_ORDER_TOTAL);
  {*
   * GtkSorterChange:
   * @GTK_SORTER_CHANGE_DIFFERENT: The sorter change cannot be described
   *   by any of the other enumeration values
   * @GTK_SORTER_CHANGE_INVERTED: The sort order was inverted. Comparisons
   *   that returned %GTK_ORDERING_SMALLER now return %GTK_ORDERING_LARGER
   *   and vice versa. Other comparisons return the same values as before.
   * @GTK_SORTER_CHANGE_LESS_STRICT: The sorter is less strict: Comparisons
   *   may now return %GTK_ORDERING_EQUAL that did not do so before.
   * @GTK_SORTER_CHANGE_MORE_STRICT: The sorter is more strict: Comparisons
   *   that did return %GTK_ORDERING_EQUAL may not do so anymore.
   *
   * Describes changes in a sorter in more detail and allows users
   * to optimize resorting.
    }

    GtkSorterChange = (GTK_SORTER_CHANGE_DIFFERENT,GTK_SORTER_CHANGE_INVERTED,
      GTK_SORTER_CHANGE_LESS_STRICT,GTK_SORTER_CHANGE_MORE_STRICT
      );

  { was #define dname def_expr }
  function GTK_TYPE_SORTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  {*
   * GtkSorterClass
   * @compare: Compare two items. See gtk_sorter_compare() for details.
   * @get_order: Get the `GtkSorderOrder` that applies to the current sorter.
   *   If unimplemented, it returns %GTK_SORTER_ORDER_PARTIAL.
   *
   * The virtual table for `GtkSorter`.
    }
  { optional  }
  { Padding for future expansion  }

  type
    _GtkSorterClass = record
        parent_class : GObjectClass;
        compare : function (self:PGtkSorter; item1:gpointer; item2:gpointer):GtkOrdering;cdecl;
        get_order : function (self:PGtkSorter):GtkSorterOrder;cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
        _gtk_reserved5 : procedure ;cdecl;
        _gtk_reserved6 : procedure ;cdecl;
        _gtk_reserved7 : procedure ;cdecl;
        _gtk_reserved8 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  function gtk_sorter_compare(self:PGtkSorter; item1:gpointer; item2:gpointer):GtkOrdering;

  { Zeile entfernt  }
  function gtk_sorter_get_order(self:PGtkSorter):GtkSorterOrder;

  { for sorter implementations  }
  { Zeile entfernt  }
  procedure gtk_sorter_changed(self:PGtkSorter; change:GtkSorterChange);

  { Zeile entfernt  }
{$endif}
  { __GTK_SORTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SORTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_SORTER:=gtk_sorter_get_type;
    end;

  function gtk_sorter_compare(self:PGtkSorter; item1:gpointer; item2:gpointer):GtkOrdering;
  begin
    { You must implement this function }
  end;
  function gtk_sorter_get_order(self:PGtkSorter):GtkSorterOrder;
  begin
    { You must implement this function }
  end;
  procedure gtk_sorter_changed(self:PGtkSorter; change:GtkSorterChange);
  begin
    { You must implement this function }
  end;

