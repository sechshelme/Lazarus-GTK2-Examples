
    Type
    PGList  = ^GList;
    PGListModel  = ^GListModel;
    PGtkAdjustment  = ^GtkAdjustment;
    PGtkFlowBox  = ^GtkFlowBox;
    PGtkFlowBoxChild  = ^GtkFlowBoxChild;
    PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (C) 2010 Openismus GmbH
   * Copyright (C) 2013 Red Hat, Inc.
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
   * License along with this library; if not, see <http://www.gnu.org/licenses/>.
  
   *
   * Authors:
   *      Tristan Van Berkom <tristanvb@openismus.com>
   *      Matthias Clasen <mclasen@redhat.com>
   *      William Jon McCann <jmccann@redhat.com>
    }
{$ifndef __GTK_FLOW_BOX_H__}
{$define __GTK_FLOW_BOX_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_FLOW_BOX : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FLOW_BOX(obj : longint) : longint;  


  type
    _GtkFlowBox = GtkFlowBox;
    _GtkFlowBoxChild = GtkFlowBoxChild;
    _GtkFlowBoxChildClass = GtkFlowBoxChildClass;

  { was #define dname def_expr }
  function GTK_TYPE_FLOW_BOX_CHILD : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX_CHILD(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FLOW_BOX_CHILD(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX_CHILD_GET_CLASS(obj : longint) : longint;  

  {< private > }

  type
    _GtkFlowBoxChild = record
        parent_instance : GtkWidget;
      end;

  {< private > }
  {< public > }
  {< private > }
    _GtkFlowBoxChildClass = record
        parent_class : GtkWidgetClass;
        activate : procedure (child:PGtkFlowBoxChild);cdecl;
        padding : array[0..7] of gpointer;
      end;

  {*
   * GtkFlowBoxCreateWidgetFunc:
   * @item: (type GObject): the item from the model for which to create a widget for
   * @user_data: (closure): user data from gtk_flow_box_bind_model()
   *
   * Called for flow boxes that are bound to a `GListModel`.
   *
   * This function is called for each item that gets added to the model.
   *
   * Returns: (transfer full): a `GtkWidget` that represents @item
    }

    GtkFlowBoxCreateWidgetFunc = function (item:gpointer; user_data:gpointer):PGtkWidget;cdecl;
(* error 
GType                 gtk_flow_box_child_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_flow_box_child_new:^GtkWidget;

  procedure gtk_flow_box_child_set_child(self:PGtkFlowBoxChild; child:PGtkWidget);

  function gtk_flow_box_child_get_child(self:PGtkFlowBoxChild):^GtkWidget;

  function gtk_flow_box_child_get_index(child:PGtkFlowBoxChild):longint;

  function gtk_flow_box_child_is_selected(child:PGtkFlowBoxChild):gboolean;

  procedure gtk_flow_box_child_changed(child:PGtkFlowBoxChild);

(* error 
GType                 gtk_flow_box_get_type                  (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_flow_box_new:^GtkWidget;

  procedure gtk_flow_box_bind_model(box:PGtkFlowBox; model:PGListModel; create_widget_func:GtkFlowBoxCreateWidgetFunc; user_data:gpointer; user_data_free_func:GDestroyNotify);

  procedure gtk_flow_box_set_homogeneous(box:PGtkFlowBox; homogeneous:gboolean);

  function gtk_flow_box_get_homogeneous(box:PGtkFlowBox):gboolean;

  procedure gtk_flow_box_set_row_spacing(box:PGtkFlowBox; spacing:guint);

  function gtk_flow_box_get_row_spacing(box:PGtkFlowBox):guint;

  procedure gtk_flow_box_set_column_spacing(box:PGtkFlowBox; spacing:guint);

  function gtk_flow_box_get_column_spacing(box:PGtkFlowBox):guint;

  procedure gtk_flow_box_set_min_children_per_line(box:PGtkFlowBox; n_children:guint);

  function gtk_flow_box_get_min_children_per_line(box:PGtkFlowBox):guint;

  procedure gtk_flow_box_set_max_children_per_line(box:PGtkFlowBox; n_children:guint);

  function gtk_flow_box_get_max_children_per_line(box:PGtkFlowBox):guint;

  procedure gtk_flow_box_set_activate_on_single_click(box:PGtkFlowBox; single:gboolean);

  function gtk_flow_box_get_activate_on_single_click(box:PGtkFlowBox):gboolean;

(* error 
void                  gtk_flow_box_prepend                      (GtkFlowBox        *self,
in declaration at line 152 *)
(* error 
void                  gtk_flow_box_append                       (GtkFlowBox        *self,
in declaration at line 155 *)
    procedure gtk_flow_box_insert(box:PGtkFlowBox; widget:PGtkWidget; position:longint);

    procedure gtk_flow_box_remove(box:PGtkFlowBox; widget:PGtkWidget);

    function gtk_flow_box_get_child_at_index(box:PGtkFlowBox; idx:longint):^GtkFlowBoxChild;

    function gtk_flow_box_get_child_at_pos(box:PGtkFlowBox; x:longint; y:longint):^GtkFlowBoxChild;


    type

      GtkFlowBoxForeachFunc = procedure (box:PGtkFlowBox; child:PGtkFlowBoxChild; user_data:gpointer);cdecl;

    procedure gtk_flow_box_selected_foreach(box:PGtkFlowBox; func:GtkFlowBoxForeachFunc; data:gpointer);

    function gtk_flow_box_get_selected_children(box:PGtkFlowBox):^GList;

    procedure gtk_flow_box_select_child(box:PGtkFlowBox; child:PGtkFlowBoxChild);

    procedure gtk_flow_box_unselect_child(box:PGtkFlowBox; child:PGtkFlowBoxChild);

    procedure gtk_flow_box_select_all(box:PGtkFlowBox);

    procedure gtk_flow_box_unselect_all(box:PGtkFlowBox);

    procedure gtk_flow_box_set_selection_mode(box:PGtkFlowBox; mode:GtkSelectionMode);

    function gtk_flow_box_get_selection_mode(box:PGtkFlowBox):GtkSelectionMode;

    procedure gtk_flow_box_set_hadjustment(box:PGtkFlowBox; adjustment:PGtkAdjustment);

    procedure gtk_flow_box_set_vadjustment(box:PGtkFlowBox; adjustment:PGtkAdjustment);


    type

      GtkFlowBoxFilterFunc = function (child:PGtkFlowBoxChild; user_data:gpointer):gboolean;cdecl;

    procedure gtk_flow_box_set_filter_func(box:PGtkFlowBox; filter_func:GtkFlowBoxFilterFunc; user_data:gpointer; destroy:GDestroyNotify);

    procedure gtk_flow_box_invalidate_filter(box:PGtkFlowBox);


    type

      GtkFlowBoxSortFunc = function (child1:PGtkFlowBoxChild; child2:PGtkFlowBoxChild; user_data:gpointer):longint;cdecl;

    procedure gtk_flow_box_set_sort_func(box:PGtkFlowBox; sort_func:GtkFlowBoxSortFunc; user_data:gpointer; destroy:GDestroyNotify);

    procedure gtk_flow_box_invalidate_sort(box:PGtkFlowBox);

{$endif}
    { __GTK_FLOW_BOX_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FLOW_BOX : longint; { return type might be wrong }
    begin
      GTK_TYPE_FLOW_BOX:=gtk_flow_box_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX(obj : longint) : longint;
  begin
    GTK_FLOW_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FLOW_BOX,GtkFlowBox);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FLOW_BOX(obj : longint) : longint;
  begin
    GTK_IS_FLOW_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FLOW_BOX);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_FLOW_BOX_CHILD : longint; { return type might be wrong }
    begin
      GTK_TYPE_FLOW_BOX_CHILD:=gtk_flow_box_child_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX_CHILD(obj : longint) : longint;
  begin
    GTK_FLOW_BOX_CHILD:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FLOW_BOX_CHILD,GtkFlowBoxChild);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;
  begin
    GTK_FLOW_BOX_CHILD_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FLOW_BOX_CHILD,GtkFlowBoxChildClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FLOW_BOX_CHILD(obj : longint) : longint;
  begin
    GTK_IS_FLOW_BOX_CHILD:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FLOW_BOX_CHILD);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;
  begin
    GTK_IS_FLOW_BOX_CHILD_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FLOW_BOX_CHILD);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FLOW_BOX_CHILD_GET_CLASS(obj : longint) : longint;
  begin
    GTK_FLOW_BOX_CHILD_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,EG_TYPE_FLOW_BOX_CHILD,GtkFlowBoxChildClass);
  end;

  function gtk_flow_box_child_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_child_set_child(self:PGtkFlowBoxChild; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_child_get_child(self:PGtkFlowBoxChild):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_child_get_index(child:PGtkFlowBoxChild):longint;
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_child_is_selected(child:PGtkFlowBoxChild):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_child_changed(child:PGtkFlowBoxChild);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_bind_model(box:PGtkFlowBox; model:PGListModel; create_widget_func:GtkFlowBoxCreateWidgetFunc; user_data:gpointer; user_data_free_func:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_set_homogeneous(box:PGtkFlowBox; homogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_get_homogeneous(box:PGtkFlowBox):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_set_row_spacing(box:PGtkFlowBox; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_get_row_spacing(box:PGtkFlowBox):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_set_column_spacing(box:PGtkFlowBox; spacing:guint);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_get_column_spacing(box:PGtkFlowBox):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_set_min_children_per_line(box:PGtkFlowBox; n_children:guint);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_get_min_children_per_line(box:PGtkFlowBox):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_set_max_children_per_line(box:PGtkFlowBox; n_children:guint);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_get_max_children_per_line(box:PGtkFlowBox):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_flow_box_set_activate_on_single_click(box:PGtkFlowBox; single:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_flow_box_get_activate_on_single_click(box:PGtkFlowBox):gboolean;
  begin
    { You must implement this function }
  end;
    procedure gtk_flow_box_insert(box:PGtkFlowBox; widget:PGtkWidget; position:longint);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_remove(box:PGtkFlowBox; widget:PGtkWidget);
    begin
      { You must implement this function }
    end;
    function gtk_flow_box_get_child_at_index(box:PGtkFlowBox; idx:longint):PGtkFlowBoxChild;
    begin
      { You must implement this function }
    end;
    function gtk_flow_box_get_child_at_pos(box:PGtkFlowBox; x:longint; y:longint):PGtkFlowBoxChild;
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_selected_foreach(box:PGtkFlowBox; func:GtkFlowBoxForeachFunc; data:gpointer);
    begin
      { You must implement this function }
    end;
    function gtk_flow_box_get_selected_children(box:PGtkFlowBox):PGList;
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_select_child(box:PGtkFlowBox; child:PGtkFlowBoxChild);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_unselect_child(box:PGtkFlowBox; child:PGtkFlowBoxChild);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_select_all(box:PGtkFlowBox);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_unselect_all(box:PGtkFlowBox);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_set_selection_mode(box:PGtkFlowBox; mode:GtkSelectionMode);
    begin
      { You must implement this function }
    end;
    function gtk_flow_box_get_selection_mode(box:PGtkFlowBox):GtkSelectionMode;
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_set_hadjustment(box:PGtkFlowBox; adjustment:PGtkAdjustment);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_set_vadjustment(box:PGtkFlowBox; adjustment:PGtkAdjustment);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_set_filter_func(box:PGtkFlowBox; filter_func:GtkFlowBoxFilterFunc; user_data:gpointer; destroy:GDestroyNotify);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_invalidate_filter(box:PGtkFlowBox);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_set_sort_func(box:PGtkFlowBox; sort_func:GtkFlowBoxSortFunc; user_data:gpointer; destroy:GDestroyNotify);
    begin
      { You must implement this function }
    end;
    procedure gtk_flow_box_invalidate_sort(box:PGtkFlowBox);
    begin
      { You must implement this function }
    end;

