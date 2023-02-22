
  Type
  Pcairo_t  = ^cairo_t;
  PGtkDrawingArea  = ^GtkDrawingArea;
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
{$ifndef __GTK_DRAWING_AREA_H__}
{$define __GTK_DRAWING_AREA_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_DRAWING_AREA : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAWING_AREA(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAWING_AREA_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAWING_AREA(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAWING_AREA_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAWING_AREA_GET_CLASS(obj : longint) : longint;  


  type
    _GtkDrawingArea = GtkDrawingArea;
    _GtkDrawingAreaClass = GtkDrawingAreaClass;
  {*
   * GtkDrawingAreaDrawFunc:
   * @drawing_area: the `GtkDrawingArea` to redraw
   * @cr: the context to draw to
   * @width: the actual width of the contents. This value will be at least
   *   as wide as GtkDrawingArea:width.
   * @height: the actual height of the contents. This value will be at least
   *   as wide as GtkDrawingArea:height.
   * @user_data: (closure): user data
   *
   * Whenever @drawing_area needs to redraw, this function will be called.
   *
   * This function should exclusively redraw the contents of the drawing area
   * and must not call any widget functions that cause changes.
    }

    GtkDrawingAreaDrawFunc = procedure (drawing_area:PGtkDrawingArea; cr:Pcairo_t; width:longint; height:longint; user_data:gpointer);cdecl;
    _GtkDrawingArea = record
        widget : GtkWidget;cdecl;
      end;

  {< private > }
    _GtkDrawingAreaClass = record
        parent_class : GtkWidgetClass;
        resize : procedure (area:PGtkDrawingArea; width:longint; height:longint);cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType      gtk_drawing_area_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_drawing_area_new:^GtkWidget;

  procedure gtk_drawing_area_set_content_width(self:PGtkDrawingArea; width:longint);

  function gtk_drawing_area_get_content_width(self:PGtkDrawingArea):longint;

  procedure gtk_drawing_area_set_content_height(self:PGtkDrawingArea; height:longint);

  function gtk_drawing_area_get_content_height(self:PGtkDrawingArea):longint;

  procedure gtk_drawing_area_set_draw_func(self:PGtkDrawingArea; draw_func:GtkDrawingAreaDrawFunc; user_data:gpointer; destroy:GDestroyNotify);

{$endif}
  { __GTK_DRAWING_AREA_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DRAWING_AREA : longint; { return type might be wrong }
    begin
      GTK_TYPE_DRAWING_AREA:=gtk_drawing_area_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAWING_AREA(obj : longint) : longint;
  begin
    GTK_DRAWING_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_DRAWING_AREA,GtkDrawingArea);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAWING_AREA_CLASS(klass : longint) : longint;
  begin
    GTK_DRAWING_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_DRAWING_AREA,GtkDrawingAreaClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAWING_AREA(obj : longint) : longint;
  begin
    GTK_IS_DRAWING_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_DRAWING_AREA);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DRAWING_AREA_CLASS(klass : longint) : longint;
  begin
    GTK_IS_DRAWING_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_DRAWING_AREA);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DRAWING_AREA_GET_CLASS(obj : longint) : longint;
  begin
    GTK_DRAWING_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_DRAWING_AREA,GtkDrawingAreaClass);
  end;

  function gtk_drawing_area_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_drawing_area_set_content_width(self:PGtkDrawingArea; width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_drawing_area_get_content_width(self:PGtkDrawingArea):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_drawing_area_set_content_height(self:PGtkDrawingArea; height:longint);
  begin
    { You must implement this function }
  end;
  function gtk_drawing_area_get_content_height(self:PGtkDrawingArea):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_drawing_area_set_draw_func(self:PGtkDrawingArea; draw_func:GtkDrawingAreaDrawFunc; user_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;

