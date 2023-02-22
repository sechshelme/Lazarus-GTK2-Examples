
  Type
  PGtkFilter  = ^GtkFilter;
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
{$ifndef __GTK_FILTER_H__}
{$define __GTK_FILTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }
  {*
   * GtkFilterMatch:
   * @GTK_FILTER_MATCH_SOME: The filter matches some items,
   *   gtk_filter_match() may return %TRUE or %FALSE
   * @GTK_FILTER_MATCH_NONE: The filter does not match any item,
   *   gtk_filter_match() will always return %FALSE.
   * @GTK_FILTER_MATCH_ALL: The filter matches all items,
   *   gtk_filter_match() will alays return %TRUE.
   *
   * Describes the known strictness of a filter.
   *
   * Note that for filters where the strictness is not known,
   * %GTK_FILTER_MATCH_SOME is always an acceptable value,
   * even if a filter does match all or no items.
    }

  type
    GtkFilterMatch = (GTK_FILTER_MATCH_SOME := 0,GTK_FILTER_MATCH_NONE,
      GTK_FILTER_MATCH_ALL);
  {*
   * GtkFilterChange:
   * @GTK_FILTER_CHANGE_DIFFERENT: The filter change cannot be
   *   described with any of the other enumeration values.
   * @GTK_FILTER_CHANGE_LESS_STRICT: The filter is less strict than
   *   it was before: All items that it used to return %TRUE for
   *   still return %TRUE, others now may, too.
   * @GTK_FILTER_CHANGE_MORE_STRICT: The filter is more strict than
   *   it was before: All items that it used to return %FALSE for
   *   still return %FALSE, others now may, too.
   *
   * Describes changes in a filter in more detail and allows objects
   * using the filter to optimize refiltering items.
   *
   * If you are writing an implementation and are not sure which
   * value to pass, %GTK_FILTER_CHANGE_DIFFERENT is always a correct
   * choice.
    }

    GtkFilterChange = (GTK_FILTER_CHANGE_DIFFERENT := 0,GTK_FILTER_CHANGE_LESS_STRICT,
      GTK_FILTER_CHANGE_MORE_STRICT);

  { was #define dname def_expr }
  function GTK_TYPE_FILTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { optional  }
  { Padding for future expansion  }

  type
    _GtkFilterClass = record
        parent_class : GObjectClass;
        match : function (self:PGtkFilter; item:gpointer):gboolean;cdecl;
        get_strictness : function (self:PGtkFilter):GtkFilterMatch;cdecl;
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

  function gtk_filter_match(self:PGtkFilter; item:gpointer):gboolean;

  { Zeile entfernt  }
  function gtk_filter_get_strictness(self:PGtkFilter):GtkFilterMatch;

  { for filter implementations  }
  { Zeile entfernt  }
  procedure gtk_filter_changed(self:PGtkFilter; change:GtkFilterChange);

  { Zeile entfernt  }
{$endif}
  { __GTK_FILTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_FILTER:=gtk_filter_get_type;
    end;

  function gtk_filter_match(self:PGtkFilter; item:gpointer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_filter_get_strictness(self:PGtkFilter):GtkFilterMatch;
  begin
    { You must implement this function }
  end;
  procedure gtk_filter_changed(self:PGtkFilter; change:GtkFilterChange);
  begin
    { You must implement this function }
  end;

