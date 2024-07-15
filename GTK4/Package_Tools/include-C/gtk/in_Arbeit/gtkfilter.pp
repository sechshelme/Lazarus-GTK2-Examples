
unit gtkfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkfilter.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkfilter.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGtkFilter  = ^GtkFilter;
PGtkFilterChange  = ^GtkFilterChange;
PGtkFilterClass  = ^GtkFilterClass;
PGtkFilterMatch  = ^GtkFilterMatch;
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
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
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
  PGtkFilterMatch = ^TGtkFilterMatch;
  TGtkFilterMatch =  Longint;
  Const
    GTK_FILTER_MATCH_SOME = 0;
    GTK_FILTER_MATCH_NONE = 1;
    GTK_FILTER_MATCH_ALL = 2;
;
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
type
  PGtkFilterChange = ^TGtkFilterChange;
  TGtkFilterChange =  Longint;
  Const
    GTK_FILTER_CHANGE_DIFFERENT = 0;
    GTK_FILTER_CHANGE_LESS_STRICT = 1;
    GTK_FILTER_CHANGE_MORE_STRICT = 2;
;

{ was #define dname def_expr }
function GTK_TYPE_FILTER : longint; { return type might be wrong }

{G_DECLARE_DERIVABLE_TYPE (GtkFilter, gtk_filter, GTK, FILTER, GObject) }
{ optional  }
{ Padding for future expansion  }
type
  PGtkFilterClass = ^TGtkFilterClass;
  TGtkFilterClass = record
      parent_class : TGObjectClass;
      match : function (self:PGtkFilter; item:Tgpointer):Tgboolean;cdecl;
      get_strictness : function (self:PGtkFilter):TGtkFilterMatch;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;


function gtk_filter_match(self:PGtkFilter; item:Tgpointer):Tgboolean;cdecl;external;
function gtk_filter_get_strictness(self:PGtkFilter):TGtkFilterMatch;cdecl;external;
{ for filter implementations  }
procedure gtk_filter_changed(self:PGtkFilter; change:TGtkFilterChange);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER:=gtk_filter_get_type;
  end;


end.
