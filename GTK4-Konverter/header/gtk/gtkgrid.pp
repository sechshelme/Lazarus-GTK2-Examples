
  Type
  PGtkGrid  = ^GtkGrid;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2010 Red Hat, Inc.
   * Author: Matthias Clasen
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
{$ifndef __GTK_GRID_H__}
{$define __GTK_GRID_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_GRID : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_GET_CLASS(obj : longint) : longint;  


  type
    _GtkGrid = GtkGrid;
    _GtkGridClass = GtkGridClass;
  {< private > }
    _GtkGrid = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkGridClass:
   * @parent_class: The parent class.
    }
  {< private > }
    _GtkGridClass = record
        parent_class : GtkWidgetClass;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType      gtk_grid_get_type               (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_grid_new:^GtkWidget;

  procedure gtk_grid_attach(grid:PGtkGrid; child:PGtkWidget; column:longint; row:longint; width:longint; 
              height:longint);

  procedure gtk_grid_attach_next_to(grid:PGtkGrid; child:PGtkWidget; sibling:PGtkWidget; side:GtkPositionType; width:longint; 
              height:longint);

  function gtk_grid_get_child_at(grid:PGtkGrid; column:longint; row:longint):^GtkWidget;

  procedure gtk_grid_remove(grid:PGtkGrid; child:PGtkWidget);

  procedure gtk_grid_insert_row(grid:PGtkGrid; position:longint);

  procedure gtk_grid_insert_column(grid:PGtkGrid; position:longint);

  procedure gtk_grid_remove_row(grid:PGtkGrid; position:longint);

  procedure gtk_grid_remove_column(grid:PGtkGrid; position:longint);

  procedure gtk_grid_insert_next_to(grid:PGtkGrid; sibling:PGtkWidget; side:GtkPositionType);

  procedure gtk_grid_set_row_homogeneous(grid:PGtkGrid; homogeneous:gboolean);

  function gtk_grid_get_row_homogeneous(grid:PGtkGrid):gboolean;

  procedure gtk_grid_set_row_spacing(grid:PGtkGrid; spacing:guint);

  function gtk_grid_get_row_spacing(grid:PGtkGrid):guint;

  procedure gtk_grid_set_column_homogeneous(grid:PGtkGrid; homogeneous:gboolean);

  function gtk_grid_get_column_homogeneous(grid:PGtkGrid):gboolean;

  procedure gtk_grid_set_column_spacing(grid:PGtkGrid; spacing:guint);

  function gtk_grid_get_column_spacing(grid:PGtkGrid):guint;

  procedure gtk_grid_set_row_baseline_position(grid:PGtkGrid; row:longint; pos:GtkBaselinePosition);

  function gtk_grid_get_row_baseline_position(grid:PGtkGrid; row:longint):GtkBaselinePosition;

  procedure gtk_grid_set_baseline_row(grid:PGtkGrid; row:longint);

  function gtk_grid_get_baseline_row(grid:PGtkGrid):longint;

  procedure gtk_grid_query_child(grid:PGtkGrid; child:PGtkWidget; column:Plongint; row:Plongint; width:Plongint; 
              height:Plongint);

{$endif}
  { __GTK_GRID_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_GRID : longint; { return type might be wrong }
    begin
      GTK_TYPE_GRID:=gtk_grid_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID(obj : longint) : longint;
  begin
    GTK_GRID:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_GRID,GtkGrid);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_CLASS(klass : longint) : longint;
  begin
    GTK_GRID_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_GRID,GtkGridClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID(obj : longint) : longint;
  begin
    GTK_IS_GRID:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_GRID);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID_CLASS(klass : longint) : longint;
  begin
    GTK_IS_GRID_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_GRID);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_GET_CLASS(obj : longint) : longint;
  begin
    GTK_GRID_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_GRID,GtkGridClass);
  end;

  function gtk_grid_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_attach(grid:PGtkGrid; child:PGtkWidget; column:longint; row:longint; width:longint; 
              height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_attach_next_to(grid:PGtkGrid; child:PGtkWidget; sibling:PGtkWidget; side:GtkPositionType; width:longint; 
              height:longint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_child_at(grid:PGtkGrid; column:longint; row:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_remove(grid:PGtkGrid; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_insert_row(grid:PGtkGrid; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_insert_column(grid:PGtkGrid; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_remove_row(grid:PGtkGrid; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_remove_column(grid:PGtkGrid; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_insert_next_to(grid:PGtkGrid; sibling:PGtkWidget; side:GtkPositionType);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_set_row_homogeneous(grid:PGtkGrid; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_row_homogeneous(grid:PGtkGrid):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_set_row_spacing(grid:PGtkGrid; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_row_spacing(grid:PGtkGrid):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_set_column_homogeneous(grid:PGtkGrid; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_column_homogeneous(grid:PGtkGrid):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_set_column_spacing(grid:PGtkGrid; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_column_spacing(grid:PGtkGrid):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_set_row_baseline_position(grid:PGtkGrid; row:longint; pos:GtkBaselinePosition);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_row_baseline_position(grid:PGtkGrid; row:longint):GtkBaselinePosition;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_set_baseline_row(grid:PGtkGrid; row:longint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_get_baseline_row(grid:PGtkGrid):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_query_child(grid:PGtkGrid; child:PGtkWidget; column:Plongint; row:Plongint; width:Plongint; 
              height:Plongint);
  begin
    { You must implement this function }
  end;

