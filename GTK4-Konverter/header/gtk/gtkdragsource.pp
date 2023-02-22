
  Type
  PGdkContentProvider  = ^GdkContentProvider;
  PGdkDrag  = ^GdkDrag;
  PGdkPaintable  = ^GdkPaintable;
  PGtkDragSource  = ^GtkDragSource;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { -*- Mode: C; c-file-style: "gnu"; tab-width: 8 -*-  }
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
{$ifndef __GTK_DRAG_SOURCE_H__}
{$define __GTK_DRAG_SOURCE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_DRAG_SOURCE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAG_SOURCE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAG_SOURCE_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAG_SOURCE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAG_SOURCE_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAG_SOURCE_GET_CLASS(o : longint) : longint;  


  type
    _GtkDragSource = GtkDragSource;
    _GtkDragSourceClass = GtkDragSourceClass;
  { Zeile entfernt  }

  function gtk_drag_source_get_type:GType;

  { Zeile entfernt  }
  function gtk_drag_source_new:^GtkDragSource;

  { Zeile entfernt  }
  procedure gtk_drag_source_set_content(source:PGtkDragSource; content:PGdkContentProvider);

  { Zeile entfernt  }
  function gtk_drag_source_get_content(source:PGtkDragSource):^GdkContentProvider;

  { Zeile entfernt  }
  procedure gtk_drag_source_set_actions(source:PGtkDragSource; actions:GdkDragAction);

  { Zeile entfernt  }
  function gtk_drag_source_get_actions(source:PGtkDragSource):GdkDragAction;

  { Zeile entfernt  }
  procedure gtk_drag_source_set_icon(source:PGtkDragSource; paintable:PGdkPaintable; hot_x:longint; hot_y:longint);

  { Zeile entfernt  }
  procedure gtk_drag_source_drag_cancel(source:PGtkDragSource);

  { Zeile entfernt  }
  function gtk_drag_source_get_drag(source:PGtkDragSource):^GdkDrag;

  { Zeile entfernt  }
  function gtk_drag_check_threshold(widget:PGtkWidget; start_x:longint; start_y:longint; current_x:longint; current_y:longint):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_DRAG_SOURCE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DRAG_SOURCE : longint; { return type might be wrong }
    begin
      GTK_TYPE_DRAG_SOURCE:=gtk_drag_source_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAG_SOURCE(o : longint) : longint;
  begin
    GTK_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DRAG_SOURCE,GtkDragSource);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAG_SOURCE_CLASS(k : longint) : longint;
  begin
    GTK_DRAG_SOURCE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DRAG_SOURCE,GtkDragSourceClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAG_SOURCE(o : longint) : longint;
  begin
    GTK_IS_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DRAG_SOURCE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAG_SOURCE_CLASS(k : longint) : longint;
  begin
    GTK_IS_DRAG_SOURCE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DRAG_SOURCE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAG_SOURCE_GET_CLASS(o : longint) : longint;
  begin
    GTK_DRAG_SOURCE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DRAG_SOURCE,GtkDragSourceClass);
  end;

  function gtk_drag_source_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_drag_source_new:PGtkDragSource;
  begin
    { You must implement this function }
  end;
  procedure gtk_drag_source_set_content(source:PGtkDragSource; content:PGdkContentProvider);
  begin
    { You must implement this function }
  end;
  function gtk_drag_source_get_content(source:PGtkDragSource):PGdkContentProvider;
  begin
    { You must implement this function }
  end;
  procedure gtk_drag_source_set_actions(source:PGtkDragSource; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  function gtk_drag_source_get_actions(source:PGtkDragSource):GdkDragAction;
  begin
    { You must implement this function }
  end;
  procedure gtk_drag_source_set_icon(source:PGtkDragSource; paintable:PGdkPaintable; hot_x:longint; hot_y:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_drag_source_drag_cancel(source:PGtkDragSource);
  begin
    { You must implement this function }
  end;
  function gtk_drag_source_get_drag(source:PGtkDragSource):PGdkDrag;
  begin
    { You must implement this function }
  end;
  function gtk_drag_check_threshold(widget:PGtkWidget; start_x:longint; start_y:longint; current_x:longint; current_y:longint):gboolean;
  begin
    { You must implement this function }
  end;

