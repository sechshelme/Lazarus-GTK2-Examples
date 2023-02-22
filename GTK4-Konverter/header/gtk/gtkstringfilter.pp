
  Type
  Pchar  = ^char;
  PGtkExpression  = ^GtkExpression;
  PGtkStringFilter  = ^GtkStringFilter;
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
{$ifndef __GTK_STRING_FILTER_H__}
{$define __GTK_STRING_FILTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtkfilter.h>}
  {*
   * GtkStringFilterMatchMode:
   * @GTK_STRING_FILTER_MATCH_MODE_EXACT: The search string and
   *   text must match exactly.
   * @GTK_STRING_FILTER_MATCH_MODE_SUBSTRING: The search string
   *   must be contained as a substring inside the text.
   * @GTK_STRING_FILTER_MATCH_MODE_PREFIX: The text must begin
   *   with the search string.
   *
   * Specifies how search strings are matched inside text.
    }

  type
    GtkStringFilterMatchMode = (GTK_STRING_FILTER_MATCH_MODE_EXACT,GTK_STRING_FILTER_MATCH_MODE_SUBSTRING,
      GTK_STRING_FILTER_MATCH_MODE_PREFIX
      );

  { was #define dname def_expr }
  function GTK_TYPE_STRING_FILTER : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkStringFilter, gtk_string_filter, GTK, STRING_FILTER, GtkFilter)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkStringFilter, gtk_string_filter, GTK, STRING_FILTER, GtkFilter)
 in declarator_list *)
(* Const before type ignored *)
  function gtk_string_filter_get_search(self:PGtkStringFilter):^char;

(* Const before type ignored *)
  procedure gtk_string_filter_set_search(self:PGtkStringFilter; search:Pchar);

  function gtk_string_filter_get_expression(self:PGtkStringFilter):^GtkExpression;

  procedure gtk_string_filter_set_expression(self:PGtkStringFilter; expression:PGtkExpression);

  function gtk_string_filter_get_ignore_case(self:PGtkStringFilter):gboolean;

  procedure gtk_string_filter_set_ignore_case(self:PGtkStringFilter; ignore_case:gboolean);

  function gtk_string_filter_get_match_mode(self:PGtkStringFilter):GtkStringFilterMatchMode;

  procedure gtk_string_filter_set_match_mode(self:PGtkStringFilter; mode:GtkStringFilterMatchMode);

{$endif}
  { __GTK_STRING_FILTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_STRING_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_STRING_FILTER:=gtk_string_filter_get_type;
    end;

  function gtk_string_filter_get_search(self:PGtkStringFilter):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_string_filter_set_search(self:PGtkStringFilter; search:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_string_filter_get_expression(self:PGtkStringFilter):PGtkExpression;
  begin
    { You must implement this function }
  end;
  procedure gtk_string_filter_set_expression(self:PGtkStringFilter; expression:PGtkExpression);
  begin
    { You must implement this function }
  end;
  function gtk_string_filter_get_ignore_case(self:PGtkStringFilter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_string_filter_set_ignore_case(self:PGtkStringFilter; ignore_case:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_string_filter_get_match_mode(self:PGtkStringFilter):GtkStringFilterMatchMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_string_filter_set_match_mode(self:PGtkStringFilter; mode:GtkStringFilterMatchMode);
  begin
    { You must implement this function }
  end;

