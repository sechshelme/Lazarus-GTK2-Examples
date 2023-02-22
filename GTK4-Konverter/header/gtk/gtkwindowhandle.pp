
  Type
  PGtkWidget  = ^GtkWidget;
  PGtkWindowHandle  = ^GtkWindowHandle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2020 Alexander Mikhaylenko <alexm@gnome.org>
   *
   * This program is free software; you can redistribute it and/or modify
   * it under the terms of the GNU Lesser General Public License as published by
   * the Free Software Foundation; either version 2 of the License, or (at your
   * option) any later version.
   *
   * This program is distributed in the hope that it will be useful, but
   * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
   * License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License
   * along with this program; if not, write to the Free Software Foundation,
   * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
    }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_WINDOW_HANDLE : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkWindowHandle, gtk_window_handle, GTK, WINDOW_HANDLE, GtkWidget)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkWindowHandle, gtk_window_handle, GTK, WINDOW_HANDLE, GtkWidget)
 in declarator_list *)
  function gtk_window_handle_get_child(self:PGtkWindowHandle):^GtkWidget;

  procedure gtk_window_handle_set_child(self:PGtkWindowHandle; child:PGtkWidget);

  { was #define dname def_expr }
  function GTK_TYPE_WINDOW_HANDLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_WINDOW_HANDLE:=gtk_window_handle_get_type;
    end;

  function gtk_window_handle_get_child(self:PGtkWindowHandle):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_handle_set_child(self:PGtkWindowHandle; child:PGtkWidget);
  begin
    { You must implement this function }
  end;

