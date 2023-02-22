
  Type
  PGMenuModel  = ^GMenuModel;
  PGtkPasswordEntry  = ^GtkPasswordEntry;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2019 Red Hat, Inc.
   *
   * Authors:
   * - MAtthias Clasen <mclasen@redhat.com>
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
{$ifndef __GTK_PASSWORD_ENTRY_H__}
{$define __GTK_PASSWORD_ENTRY_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkentry.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_PASSWORD_ENTRY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PASSWORD_ENTRY(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PASSWORD_ENTRY(obj : longint) : longint;  


  type
    _GtkPasswordEntry = GtkPasswordEntry;
    _GtkPasswordEntryClass = GtkPasswordEntryClass;
  { Zeile entfernt  }

  function gtk_password_entry_get_type:GType;

  { Zeile entfernt  }
  function gtk_password_entry_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_password_entry_set_show_peek_icon(entry:PGtkPasswordEntry; show_peek_icon:gboolean);

  { Zeile entfernt  }
  function gtk_password_entry_get_show_peek_icon(entry:PGtkPasswordEntry):gboolean;

  { Zeile entfernt  }
  procedure gtk_password_entry_set_extra_menu(entry:PGtkPasswordEntry; model:PGMenuModel);

  { Zeile entfernt  }
  function gtk_password_entry_get_extra_menu(entry:PGtkPasswordEntry):^GMenuModel;

  { Zeile entfernt  }
{$endif}
  { __GTK_PASSWORD_ENTRY_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PASSWORD_ENTRY : longint; { return type might be wrong }
    begin
      GTK_TYPE_PASSWORD_ENTRY:=gtk_password_entry_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PASSWORD_ENTRY(obj : longint) : longint;
  begin
    GTK_PASSWORD_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PASSWORD_ENTRY,GtkPasswordEntry);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PASSWORD_ENTRY(obj : longint) : longint;
  begin
    GTK_IS_PASSWORD_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PASSWORD_ENTRY);
  end;

  function gtk_password_entry_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_password_entry_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_password_entry_set_show_peek_icon(entry:PGtkPasswordEntry; show_peek_icon:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_password_entry_get_show_peek_icon(entry:PGtkPasswordEntry):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_password_entry_set_extra_menu(entry:PGtkPasswordEntry; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_password_entry_get_extra_menu(entry:PGtkPasswordEntry):PGMenuModel;
  begin
    { You must implement this function }
  end;

