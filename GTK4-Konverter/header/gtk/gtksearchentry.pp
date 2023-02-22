
    Type
    PGtkSearchEntry  = ^GtkSearchEntry;
    PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2012 Red Hat, Inc.
   *
   * Authors:
   * - Bastien Nocera <bnocera@redhat.com>
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
  {
   * Modified by the GTK+ Team and others 2012.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_SEARCH_ENTRY_H__}
{$define __GTK_SEARCH_ENTRY_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkentry.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SEARCH_ENTRY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SEARCH_ENTRY(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SEARCH_ENTRY(obj : longint) : longint;  


  type
    _GtkSearchEntry = GtkSearchEntry;
(* error 
GType           gtk_search_entry_get_type       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_search_entry_new:^GtkWidget;

  procedure gtk_search_entry_set_key_capture_widget(entry:PGtkSearchEntry; widget:PGtkWidget);

  function gtk_search_entry_get_key_capture_widget(entry:PGtkSearchEntry):^GtkWidget;

(* error 
void gtk_search_entry_set_search_delay (GtkSearchEntry *entry,
in declaration at line 59 *)
(* error 
guint gtk_search_entry_get_search_delay (GtkSearchEntry *entry);
 in declarator_list *)
{$endif}
    { __GTK_SEARCH_ENTRY_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SEARCH_ENTRY : longint; { return type might be wrong }
    begin
      GTK_TYPE_SEARCH_ENTRY:=gtk_search_entry_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SEARCH_ENTRY(obj : longint) : longint;
  begin
    GTK_SEARCH_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEARCH_ENTRY,GtkSearchEntry);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SEARCH_ENTRY(obj : longint) : longint;
  begin
    GTK_IS_SEARCH_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEARCH_ENTRY);
  end;

  function gtk_search_entry_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_search_entry_set_key_capture_widget(entry:PGtkSearchEntry; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_search_entry_get_key_capture_widget(entry:PGtkSearchEntry):PGtkWidget;
  begin
    { You must implement this function }
  end;

