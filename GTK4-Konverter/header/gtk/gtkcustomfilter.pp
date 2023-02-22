
  Type
  PGtkCustomFilter  = ^GtkCustomFilter;
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
{$ifndef __GTK_CUSTOM_FILTER_H__}
{$define __GTK_CUSTOM_FILTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilter.h>}
  { Zeile entfernt  }
  {*
   * GtkCustomFilterFunc:
   * @item: (type GObject): The item to be matched
   * @user_data: user data
   *
   * User function that is called to determine if the @item should be matched.
   *
   * If the filter matches the item, this function must return %TRUE. If the
   * item should be filtered out, %FALSE must be returned.
   *
   * Returns: %TRUE to keep the item around
    }

  type

    GtkCustomFilterFunc = function (item:gpointer; user_data:gpointer):gboolean;cdecl;

  { was #define dname def_expr }
  function GTK_TYPE_CUSTOM_FILTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_custom_filter_new(match_func:GtkCustomFilterFunc; user_data:gpointer; user_destroy:GDestroyNotify):^GtkCustomFilter;

  { Zeile entfernt  }
  procedure gtk_custom_filter_set_filter_func(self:PGtkCustomFilter; match_func:GtkCustomFilterFunc; user_data:gpointer; user_destroy:GDestroyNotify);

  { Zeile entfernt  }
{$endif}
  { __GTK_CUSTOM_FILTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CUSTOM_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_CUSTOM_FILTER:=gtk_custom_filter_get_type;
    end;

  function gtk_custom_filter_new(match_func:GtkCustomFilterFunc; user_data:gpointer; user_destroy:GDestroyNotify):PGtkCustomFilter;
  begin
    { You must implement this function }
  end;
  procedure gtk_custom_filter_set_filter_func(self:PGtkCustomFilter; match_func:GtkCustomFilterFunc; user_data:gpointer; user_destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;

