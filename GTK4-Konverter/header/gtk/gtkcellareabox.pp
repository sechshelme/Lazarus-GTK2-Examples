
  Type
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellAreaBox  = ^GtkCellAreaBox;
  PGtkCellRenderer  = ^GtkCellRenderer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellareabox.h
   *
   * Copyright (C) 2010 Openismus GmbH
   *
   * Authors:
   *      Tristan Van Berkom <tristanvb@openismus.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_CELL_AREA_BOX_H__}
{$define __GTK_CELL_AREA_BOX_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellarea.h>}

  { was #define dname def_expr }
  function GTK_TYPE_CELL_AREA_BOX : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_BOX(obj : longint) : longint;  


  type
    _GtkCellAreaBox = GtkCellAreaBox;
(* error 
GType        gtk_cell_area_box_get_type    (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_cell_area_box_new:^GtkCellArea;

  procedure gtk_cell_area_box_pack_start(box:PGtkCellAreaBox; renderer:PGtkCellRenderer; expand:gboolean; align:gboolean; fixed:gboolean);

  procedure gtk_cell_area_box_pack_end(box:PGtkCellAreaBox; renderer:PGtkCellRenderer; expand:gboolean; align:gboolean; fixed:gboolean);

  function gtk_cell_area_box_get_spacing(box:PGtkCellAreaBox):longint;

  procedure gtk_cell_area_box_set_spacing(box:PGtkCellAreaBox; spacing:longint);

  { Private interaction with GtkCellAreaBoxContext  }
  function _gtk_cell_area_box_group_visible(box:PGtkCellAreaBox; group_idx:longint):gboolean;

{$endif}
  { __GTK_CELL_AREA_BOX_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_AREA_BOX : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_AREA_BOX:=gtk_cell_area_box_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_BOX(obj : longint) : longint;
  begin
    GTK_CELL_AREA_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA_BOX,GtkCellAreaBox);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_BOX(obj : longint) : longint;
  begin
    GTK_IS_CELL_AREA_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA_BOX);
  end;

  function gtk_cell_area_box_new:PGtkCellArea;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_box_pack_start(box:PGtkCellAreaBox; renderer:PGtkCellRenderer; expand:gboolean; align:gboolean; fixed:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_box_pack_end(box:PGtkCellAreaBox; renderer:PGtkCellRenderer; expand:gboolean; align:gboolean; fixed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_box_get_spacing(box:PGtkCellAreaBox):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_box_set_spacing(box:PGtkCellAreaBox; spacing:longint);
  begin
    { You must implement this function }
  end;
  function _gtk_cell_area_box_group_visible(box:PGtkCellAreaBox; group_idx:longint):gboolean;
  begin
    { You must implement this function }
  end;

