
  Type
  Pchar  = ^char;
  PGtkWidget  = ^GtkWidget;
  PGType  = ^GType;
  Pguint  = ^guint;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { Gtk+ testing utilities
   * Copyright (C) 2007 Imendio AB
   * Authors: Tim Janik
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_TEST_UTILS_H__}
{$define __GTK_TEST_UTILS_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkspinbutton.h>}
  { --- Gtk+ Test Utility API ---  }

  procedure gtk_test_init(argcp:Plongint; argvp:PPPchar; args:array of const);

  procedure gtk_test_register_all_types;

(* Const before type ignored *)
  function gtk_test_list_all_types(n_types:Pguint):^GType;

  procedure gtk_test_widget_wait_for_draw(widget:PGtkWidget);

{$endif}
  { __GTK_TEST_UTILS_H__  }
  procedure gtk_test_init(argcp:Plongint; argvp:PPPchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_test_register_all_types;
  begin
    { You must implement this function }
  end;
  function gtk_test_list_all_types(n_types:Pguint):PGType;
  begin
    { You must implement this function }
  end;
  procedure gtk_test_widget_wait_for_draw(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;

