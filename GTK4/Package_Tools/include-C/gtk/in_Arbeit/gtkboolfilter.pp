
unit gtkboolfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkboolfilter.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkboolfilter.h
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
PGtkBoolFilter  = ^GtkBoolFilter;
PGtkExpression  = ^GtkExpression;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2020 Benjamin Otte
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
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtkfilter.h>}

{ was #define dname def_expr }
function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }

{G_DECLARE_FINAL_TYPE (GtkBoolFilter, gtk_bool_filter, GTK, BOOL_FILTER, GtkFilter) }
function gtk_bool_filter_new(expression:PGtkExpression):PGtkBoolFilter;cdecl;external;
function gtk_bool_filter_get_expression(self:PGtkBoolFilter):PGtkExpression;cdecl;external;
procedure gtk_bool_filter_set_expression(self:PGtkBoolFilter; expression:PGtkExpression);cdecl;external;
function gtk_bool_filter_get_invert(self:PGtkBoolFilter):Tgboolean;cdecl;external;
procedure gtk_bool_filter_set_invert(self:PGtkBoolFilter; invert:Tgboolean);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOOL_FILTER:=gtk_bool_filter_get_type;
  end;


end.
