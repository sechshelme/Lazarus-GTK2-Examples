
  Type
  Pchar  = ^char;
  PGError  = ^GError;
  PGFile  = ^GFile;
  PGtkDirectoryList  = ^GtkDirectoryList;
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
{$ifndef __GTK_DIRECTORY_LIST_H__}
{$define __GTK_DIRECTORY_LIST_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
  { for GDK_AVAILABLE_IN_ALL  }
{$include <gdk/gdk.h>}

  { was #define dname def_expr }
  function GTK_TYPE_DIRECTORY_LIST : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkDirectoryList, gtk_directory_list, GTK, DIRECTORY_LIST, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkDirectoryList, gtk_directory_list, GTK, DIRECTORY_LIST, GObject)
(* error 
                                                                 GFile                  *file);
 in declarator_list *)
 in declarator_list *)
  procedure gtk_directory_list_set_file(self:PGtkDirectoryList; file:PGFile);

  function gtk_directory_list_get_file(self:PGtkDirectoryList):^GFile;

(* Const before type ignored *)
  procedure gtk_directory_list_set_attributes(self:PGtkDirectoryList; attributes:Pchar);

(* Const before type ignored *)
  function gtk_directory_list_get_attributes(self:PGtkDirectoryList):^char;

  procedure gtk_directory_list_set_io_priority(self:PGtkDirectoryList; io_priority:longint);

  function gtk_directory_list_get_io_priority(self:PGtkDirectoryList):longint;

  function gtk_directory_list_is_loading(self:PGtkDirectoryList):gboolean;

(* Const before type ignored *)
  function gtk_directory_list_get_error(self:PGtkDirectoryList):^GError;

  procedure gtk_directory_list_set_monitored(self:PGtkDirectoryList; monitored:gboolean);

  function gtk_directory_list_get_monitored(self:PGtkDirectoryList):gboolean;

{$endif}
  { __GTK_DIRECTORY_LIST_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DIRECTORY_LIST : longint; { return type might be wrong }
    begin
      GTK_TYPE_DIRECTORY_LIST:=gtk_directory_list_get_type;
    end;

  procedure gtk_directory_list_set_file(self:PGtkDirectoryList; file:PGFile);
  begin
    { You must implement this function }
  end;
  function gtk_directory_list_get_file(self:PGtkDirectoryList):PGFile;
  begin
    { You must implement this function }
  end;
  procedure gtk_directory_list_set_attributes(self:PGtkDirectoryList; attributes:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_directory_list_get_attributes(self:PGtkDirectoryList):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_directory_list_set_io_priority(self:PGtkDirectoryList; io_priority:longint);
  begin
    { You must implement this function }
  end;
  function gtk_directory_list_get_io_priority(self:PGtkDirectoryList):longint;
  begin
    { You must implement this function }
  end;
  function gtk_directory_list_is_loading(self:PGtkDirectoryList):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_directory_list_get_error(self:PGtkDirectoryList):PGError;
  begin
    { You must implement this function }
  end;
  procedure gtk_directory_list_set_monitored(self:PGtkDirectoryList; monitored:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_directory_list_get_monitored(self:PGtkDirectoryList):gboolean;
  begin
    { You must implement this function }
  end;

