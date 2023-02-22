
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
{$ifndef __GTK_BOOL_FILTER_H__}
{$define __GTK_BOOL_FILTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtkfilter.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_bool_filter_new(expression:PGtkExpression):^GtkBoolFilter;

  { Zeile entfernt  }
  function gtk_bool_filter_get_expression(self:PGtkBoolFilter):^GtkExpression;

  { Zeile entfernt  }
  procedure gtk_bool_filter_set_expression(self:PGtkBoolFilter; expression:PGtkExpression);

  { Zeile entfernt  }
  function gtk_bool_filter_get_invert(self:PGtkBoolFilter):gboolean;

  { Zeile entfernt  }
  procedure gtk_bool_filter_set_invert(self:PGtkBoolFilter; invert:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_BOOL_FILTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_BOOL_FILTER:=gtk_bool_filter_get_type;
    end;

  function gtk_bool_filter_new(expression:PGtkExpression):PGtkBoolFilter;
  begin
    { You must implement this function }
  end;
  function gtk_bool_filter_get_expression(self:PGtkBoolFilter):PGtkExpression;
  begin
    { You must implement this function }
  end;
  procedure gtk_bool_filter_set_expression(self:PGtkBoolFilter; expression:PGtkExpression);
  begin
    { You must implement this function }
  end;
  function gtk_bool_filter_get_invert(self:PGtkBoolFilter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_bool_filter_set_invert(self:PGtkBoolFilter; invert:gboolean);
  begin
    { You must implement this function }
  end;

