
  Type
  Pchar  = ^char;
  PGtkStatusbar  = ^GtkStatusbar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   * GtkStatusbar Copyright (C) 1998 Shawn T. Amundson
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
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_STATUSBAR_H__}
{$define __GTK_STATUSBAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_STATUSBAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STATUSBAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STATUSBAR(obj : longint) : longint;  


  type
    _GtkStatusbar = GtkStatusbar;
(* error 
GType      gtk_statusbar_get_type     	(void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_statusbar_new:^GtkWidget;

(* Const before type ignored *)
  function gtk_statusbar_get_context_id(statusbar:PGtkStatusbar; context_description:Pchar):guint;

(* Const before type ignored *)
  function gtk_statusbar_push(statusbar:PGtkStatusbar; context_id:guint; text:Pchar):guint;

  procedure gtk_statusbar_pop(statusbar:PGtkStatusbar; context_id:guint);

  procedure gtk_statusbar_remove(statusbar:PGtkStatusbar; context_id:guint; message_id:guint);

  procedure gtk_statusbar_remove_all(statusbar:PGtkStatusbar; context_id:guint);

{$endif}
  { __GTK_STATUSBAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_STATUSBAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_STATUSBAR:=gtk_statusbar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STATUSBAR(obj : longint) : longint;
  begin
    GTK_STATUSBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STATUSBAR,GtkStatusbar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STATUSBAR(obj : longint) : longint;
  begin
    GTK_IS_STATUSBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STATUSBAR);
  end;

  function gtk_statusbar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_statusbar_get_context_id(statusbar:PGtkStatusbar; context_description:Pchar):guint;
  begin
    { You must implement this function }
  end;
  function gtk_statusbar_push(statusbar:PGtkStatusbar; context_id:guint; text:Pchar):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_statusbar_pop(statusbar:PGtkStatusbar; context_id:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_statusbar_remove(statusbar:PGtkStatusbar; context_id:guint; message_id:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_statusbar_remove_all(statusbar:PGtkStatusbar; context_id:guint);
  begin
    { You must implement this function }
  end;

