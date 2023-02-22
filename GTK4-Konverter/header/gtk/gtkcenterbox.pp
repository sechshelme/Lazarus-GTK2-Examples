
  Type
  PGtkCenterBox  = ^GtkCenterBox;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2017 Timm Bäder <mail@baedert.org>
   *
   * This program is free software; you can redistribute it and/or modify
   * it under the terms of the GNU Lesser General Public License as published by
   * the Free Software Foundation; either version 2 of the License, or (at your
   * option) any later version.
   *
   * This program is distributed in the hope that it will be useful, but
   * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
   * License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License
   * along with this program; if not, write to the Free Software Foundation,
   * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
   *
   * Author: Timm Bäder <mail@baedert.org>
   *
    }
{$ifndef __GTK_CENTER_BOX_H__}
{$define __GTK_CENTER_BOX_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include "gtkwidget.h"}

  { was #define dname def_expr }
  function GTK_TYPE_CENTER_BOX : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CENTER_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CENTER_BOX_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CENTER_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CENTER_BOX_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CENTER_BOX_GET_CLASS(obj : longint) : longint;  


  type
    _GtkCenterBox = GtkCenterBox;
    _GtkCenterBoxClass = GtkCenterBoxClass;
(* error 
GType      gtk_center_box_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_center_box_new:^GtkWidget;

  procedure gtk_center_box_set_start_widget(self:PGtkCenterBox; child:PGtkWidget);

  procedure gtk_center_box_set_center_widget(self:PGtkCenterBox; child:PGtkWidget);

  procedure gtk_center_box_set_end_widget(self:PGtkCenterBox; child:PGtkWidget);

  function gtk_center_box_get_start_widget(self:PGtkCenterBox):^GtkWidget;

  function gtk_center_box_get_center_widget(self:PGtkCenterBox):^GtkWidget;

  function gtk_center_box_get_end_widget(self:PGtkCenterBox):^GtkWidget;

  procedure gtk_center_box_set_baseline_position(self:PGtkCenterBox; position:GtkBaselinePosition);

  function gtk_center_box_get_baseline_position(self:PGtkCenterBox):GtkBaselinePosition;

{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_CENTER_BOX : longint; { return type might be wrong }
    begin
      GTK_TYPE_CENTER_BOX:=gtk_center_box_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CENTER_BOX(obj : longint) : longint;
  begin
    GTK_CENTER_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CENTER_BOX,GtkCenterBox);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CENTER_BOX_CLASS(klass : longint) : longint;
  begin
    GTK_CENTER_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CENTER_BOX,GtkCenterBoxClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CENTER_BOX(obj : longint) : longint;
  begin
    GTK_IS_CENTER_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CENTER_BOX);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CENTER_BOX_CLASS(klass : longint) : longint;
  begin
    GTK_IS_CENTER_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CENTER_BOX);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CENTER_BOX_GET_CLASS(obj : longint) : longint;
  begin
    GTK_CENTER_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CENTER_BOX,GtkCenterBoxClass);
  end;

  function gtk_center_box_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_center_box_set_start_widget(self:PGtkCenterBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_center_box_set_center_widget(self:PGtkCenterBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_center_box_set_end_widget(self:PGtkCenterBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_center_box_get_start_widget(self:PGtkCenterBox):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_center_box_get_center_widget(self:PGtkCenterBox):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_center_box_get_end_widget(self:PGtkCenterBox):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_center_box_set_baseline_position(self:PGtkCenterBox; position:GtkBaselinePosition);
  begin
    { You must implement this function }
  end;
  function gtk_center_box_get_baseline_position(self:PGtkCenterBox):GtkBaselinePosition;
  begin
    { You must implement this function }
  end;

