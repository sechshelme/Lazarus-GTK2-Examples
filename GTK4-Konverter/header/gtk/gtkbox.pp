
  Type
  PGtkBox  = ^GtkBox;
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
{$ifndef __GTK_BOX_H__}
{$define __GTK_BOX_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_BOX : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BOX_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BOX_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BOX_GET_CLASS(obj : longint) : longint;  


  type
    _GtkBox = GtkBox;
    _GtkBoxClass = GtkBoxClass;
    _GtkBox = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkBoxClass:
   * @parent_class: The parent class.
    }
  {< private > }
    _GtkBoxClass = record
        parent_class : GtkWidgetClass;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType       gtk_box_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_box_new(orientation:GtkOrientation; spacing:longint):^GtkWidget;

  procedure gtk_box_set_homogeneous(box:PGtkBox; homogeneous:gboolean);

  function gtk_box_get_homogeneous(box:PGtkBox):gboolean;

  procedure gtk_box_set_spacing(box:PGtkBox; spacing:longint);

  function gtk_box_get_spacing(box:PGtkBox):longint;

  procedure gtk_box_set_baseline_position(box:PGtkBox; position:GtkBaselinePosition);

  function gtk_box_get_baseline_position(box:PGtkBox):GtkBaselinePosition;

  procedure gtk_box_append(box:PGtkBox; child:PGtkWidget);

  procedure gtk_box_prepend(box:PGtkBox; child:PGtkWidget);

  procedure gtk_box_remove(box:PGtkBox; child:PGtkWidget);

  procedure gtk_box_insert_child_after(box:PGtkBox; child:PGtkWidget; sibling:PGtkWidget);

  procedure gtk_box_reorder_child_after(box:PGtkBox; child:PGtkWidget; sibling:PGtkWidget);

{$endif}
  { __GTK_BOX_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_BOX : longint; { return type might be wrong }
    begin
      GTK_TYPE_BOX:=gtk_box_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BOX(obj : longint) : longint;
  begin
    GTK_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BOX,GtkBox);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BOX_CLASS(klass : longint) : longint;
  begin
    GTK_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BOX,GtkBoxClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BOX(obj : longint) : longint;
  begin
    GTK_IS_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BOX);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BOX_CLASS(klass : longint) : longint;
  begin
    GTK_IS_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BOX);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BOX_GET_CLASS(obj : longint) : longint;
  begin
    GTK_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BOX,GtkBoxClass);
  end;

  function gtk_box_new(orientation:GtkOrientation; spacing:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_set_homogeneous(box:PGtkBox; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_box_get_homogeneous(box:PGtkBox):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_set_spacing(box:PGtkBox; spacing:longint);
  begin
    { You must implement this function }
  end;
  function gtk_box_get_spacing(box:PGtkBox):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_set_baseline_position(box:PGtkBox; position:GtkBaselinePosition);
  begin
    { You must implement this function }
  end;
  function gtk_box_get_baseline_position(box:PGtkBox):GtkBaselinePosition;
  begin
    { You must implement this function }
  end;
  procedure gtk_box_append(box:PGtkBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_box_prepend(box:PGtkBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_box_remove(box:PGtkBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_box_insert_child_after(box:PGtkBox; child:PGtkWidget; sibling:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_box_reorder_child_after(box:PGtkBox; child:PGtkWidget; sibling:PGtkWidget);
  begin
    { You must implement this function }
  end;

