
  Type
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkViewport  = ^GtkViewport;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
{$ifndef __GTK_VIEWPORT_H__}
{$define __GTK_VIEWPORT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_VIEWPORT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_VIEWPORT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_VIEWPORT(obj : longint) : longint;  


  type
    _GtkViewport = GtkViewport;
  { Zeile entfernt  }

  function gtk_viewport_get_type:GType;

  { Zeile entfernt  }
  function gtk_viewport_new(hadjustment:PGtkAdjustment; vadjustment:PGtkAdjustment):^GtkWidget;

  { Zeile entfernt  }
  function gtk_viewport_get_scroll_to_focus(viewport:PGtkViewport):gboolean;

  { Zeile entfernt  }
  procedure gtk_viewport_set_scroll_to_focus(viewport:PGtkViewport; scroll_to_focus:gboolean);

  { Zeile entfernt  }
  procedure gtk_viewport_set_child(viewport:PGtkViewport; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_viewport_get_child(viewport:PGtkViewport):^GtkWidget;

  { Zeile entfernt  }
{$endif}
  { __GTK_VIEWPORT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_VIEWPORT : longint; { return type might be wrong }
    begin
      GTK_TYPE_VIEWPORT:=gtk_viewport_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_VIEWPORT(obj : longint) : longint;
  begin
    GTK_VIEWPORT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_VIEWPORT,GtkViewport);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_VIEWPORT(obj : longint) : longint;
  begin
    GTK_IS_VIEWPORT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_VIEWPORT);
  end;

  function gtk_viewport_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_viewport_new(hadjustment:PGtkAdjustment; vadjustment:PGtkAdjustment):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_viewport_get_scroll_to_focus(viewport:PGtkViewport):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_viewport_set_scroll_to_focus(viewport:PGtkViewport; scroll_to_focus:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_viewport_set_child(viewport:PGtkViewport; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_viewport_get_child(viewport:PGtkViewport):PGtkWidget;
  begin
    { You must implement this function }
  end;

