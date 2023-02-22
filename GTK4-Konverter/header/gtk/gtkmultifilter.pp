
  Type
  PGtkAnyFilter  = ^GtkAnyFilter;
  PGtkEveryFilter  = ^GtkEveryFilter;
  PGtkFilter  = ^GtkFilter;
  PGtkMultiFilter  = ^GtkMultiFilter;
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
{$ifndef __GTK_MULTI_FILTER_H__}
{$define __GTK_MULTI_FILTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilter.h>}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_MULTI_FILTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  procedure gtk_multi_filter_append(self:PGtkMultiFilter; filter:PGtkFilter);

  { Zeile entfernt  }
  procedure gtk_multi_filter_remove(self:PGtkMultiFilter; position:guint);

  { was #define dname def_expr }
  function GTK_TYPE_ANY_FILTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_any_filter_new:^GtkAnyFilter;

  { was #define dname def_expr }
  function GTK_TYPE_EVERY_FILTER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_every_filter_new:^GtkEveryFilter;

  { Zeile entfernt  }
{$endif}
  { __GTK_MULTI_FILTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MULTI_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_MULTI_FILTER:=gtk_multi_filter_get_type;
    end;

  procedure gtk_multi_filter_append(self:PGtkMultiFilter; filter:PGtkFilter);
  begin
    { You must implement this function }
  end;
  procedure gtk_multi_filter_remove(self:PGtkMultiFilter; position:guint);
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_ANY_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_ANY_FILTER:=gtk_any_filter_get_type;
    end;

  function gtk_any_filter_new:PGtkAnyFilter;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_EVERY_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_EVERY_FILTER:=gtk_every_filter_get_type;
    end;

  function gtk_every_filter_new:PGtkEveryFilter;
  begin
    { You must implement this function }
  end;

