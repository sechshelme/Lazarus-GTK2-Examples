
  Type
  PGList  = ^GList;
  PGListModel  = ^GListModel;
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkListBox  = ^GtkListBox;
  PGtkListBoxRow  = ^GtkListBoxRow;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2013 Red Hat, Inc.
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
   * Author: Alexander Larsson <alexl@redhat.com>
   *
    }
{$ifndef __GTK_LIST_BOX_H__}
{$define __GTK_LIST_BOX_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_LIST_BOX : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BOX(obj : longint) : longint;  


  type
    _GtkListBox = GtkListBox;
    _GtkListBoxRow = GtkListBoxRow;
    _GtkListBoxRowClass = GtkListBoxRowClass;

  { was #define dname def_expr }
  function GTK_TYPE_LIST_BOX_ROW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX_ROW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX_ROW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BOX_ROW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BOX_ROW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX_ROW_GET_CLASS(obj : longint) : longint;  


  type
    _GtkListBoxRow = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkListBoxRowClass:
   * @parent_class: The parent class.
   * @activate:
    }
  {< public > }
  {< private > }
    _GtkListBoxRowClass = record
        parent_class : GtkWidgetClass;
        activate : procedure (row:PGtkListBoxRow);cdecl;
        padding : array[0..7] of gpointer;
      end;

  {*
   * GtkListBoxFilterFunc:
   * @row: the row that may be filtered
   * @user_data: (closure): user data
   *
   * Will be called whenever the row changes or is added and lets you control
   * if the row should be visible or not.
   *
   * Returns: %TRUE if the row should be visible, %FALSE otherwise
    }

    GtkListBoxFilterFunc = function (row:PGtkListBoxRow; user_data:gpointer):gboolean;cdecl;
  {*
   * GtkListBoxSortFunc:
   * @row1: the first row
   * @row2: the second row
   * @user_data: (closure): user data
   *
   * Compare two rows to determine which should be first.
   *
   * Returns: < 0 if @row1 should be before @row2, 0 if they are
   *   equal and > 0 otherwise
    }

    GtkListBoxSortFunc = function (row1:PGtkListBoxRow; row2:PGtkListBoxRow; user_data:gpointer):longint;cdecl;
  {*
   * GtkListBoxUpdateHeaderFunc:
   * @row: the row to update
   * @before: (nullable): the row before @row, or %NULL if it is first
   * @user_data: (closure): user data
   *
   * Whenever @row changes or which row is before @row changes this
   * is called, which lets you update the header on @row.
   *
   * You may remove or set a new one via [method@Gtk.ListBoxRow.set_header]
   * or just change the state of the current header widget.
    }

    GtkListBoxUpdateHeaderFunc = procedure (row:PGtkListBoxRow; before:PGtkListBoxRow; user_data:gpointer);cdecl;
  {*
   * GtkListBoxCreateWidgetFunc:
   * @item: (type GObject): the item from the model for which to create a widget for
   * @user_data: (closure): user data
   *
   * Called for list boxes that are bound to a `GListModel` with
   * gtk_list_box_bind_model() for each item that gets added to the model.
   *
   * If the widget returned is not a #GtkListBoxRow widget, then the widget
   * will be inserted as the child of an intermediate #GtkListBoxRow.
   *
   * Returns: (transfer full): a `GtkWidget` that represents @item
    }

    GtkListBoxCreateWidgetFunc = function (item:gpointer; user_data:gpointer):PGtkWidget;cdecl;
  { Zeile entfernt  }

  function gtk_list_box_row_get_type:GType;

  { Zeile entfernt  }
  function gtk_list_box_row_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_list_box_row_set_child(row:PGtkListBoxRow; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_list_box_row_get_child(row:PGtkListBoxRow):^GtkWidget;

  { Zeile entfernt  }
  function gtk_list_box_row_get_header(row:PGtkListBoxRow):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_list_box_row_set_header(row:PGtkListBoxRow; header:PGtkWidget);

  { Zeile entfernt  }
  function gtk_list_box_row_get_index(row:PGtkListBoxRow):longint;

  { Zeile entfernt  }
  procedure gtk_list_box_row_changed(row:PGtkListBoxRow);

  { Zeile entfernt  }
  function gtk_list_box_row_is_selected(row:PGtkListBoxRow):gboolean;

  { Zeile entfernt  }
  procedure gtk_list_box_row_set_selectable(row:PGtkListBoxRow; selectable:gboolean);

  { Zeile entfernt  }
  function gtk_list_box_row_get_selectable(row:PGtkListBoxRow):gboolean;

  { Zeile entfernt  }
  procedure gtk_list_box_row_set_activatable(row:PGtkListBoxRow; activatable:gboolean);

  { Zeile entfernt  }
  function gtk_list_box_row_get_activatable(row:PGtkListBoxRow):gboolean;

  { Zeile entfernt  }
  function gtk_list_box_get_type:GType;

  { Zeile entfernt  }
  procedure gtk_list_box_prepend(box:PGtkListBox; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_list_box_append(box:PGtkListBox; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_list_box_insert(box:PGtkListBox; child:PGtkWidget; position:longint);

  { Zeile entfernt  }
  procedure gtk_list_box_remove(box:PGtkListBox; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_list_box_get_selected_row(box:PGtkListBox):^GtkListBoxRow;

  { Zeile entfernt  }
  function gtk_list_box_get_row_at_index(box:PGtkListBox; index_:longint):^GtkListBoxRow;

  { Zeile entfernt  }
  function gtk_list_box_get_row_at_y(box:PGtkListBox; y:longint):^GtkListBoxRow;

  { Zeile entfernt  }
  procedure gtk_list_box_select_row(box:PGtkListBox; row:PGtkListBoxRow);

  { Zeile entfernt  }
  procedure gtk_list_box_set_placeholder(box:PGtkListBox; placeholder:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_list_box_set_adjustment(box:PGtkListBox; adjustment:PGtkAdjustment);

  { Zeile entfernt  }
  function gtk_list_box_get_adjustment(box:PGtkListBox):^GtkAdjustment;


  type

    GtkListBoxForeachFunc = procedure (box:PGtkListBox; row:PGtkListBoxRow; user_data:gpointer);cdecl;
  { Zeile entfernt  }

  procedure gtk_list_box_selected_foreach(box:PGtkListBox; func:GtkListBoxForeachFunc; data:gpointer);

  { Zeile entfernt  }
  function gtk_list_box_get_selected_rows(box:PGtkListBox):^GList;

  { Zeile entfernt  }
  procedure gtk_list_box_unselect_row(box:PGtkListBox; row:PGtkListBoxRow);

  { Zeile entfernt  }
  procedure gtk_list_box_select_all(box:PGtkListBox);

  { Zeile entfernt  }
  procedure gtk_list_box_unselect_all(box:PGtkListBox);

  { Zeile entfernt  }
  procedure gtk_list_box_set_selection_mode(box:PGtkListBox; mode:GtkSelectionMode);

  { Zeile entfernt  }
  function gtk_list_box_get_selection_mode(box:PGtkListBox):GtkSelectionMode;

  { Zeile entfernt  }
  procedure gtk_list_box_set_filter_func(box:PGtkListBox; filter_func:GtkListBoxFilterFunc; user_data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_list_box_set_header_func(box:PGtkListBox; update_header:GtkListBoxUpdateHeaderFunc; user_data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_list_box_invalidate_filter(box:PGtkListBox);

  { Zeile entfernt  }
  procedure gtk_list_box_invalidate_sort(box:PGtkListBox);

  { Zeile entfernt  }
  procedure gtk_list_box_invalidate_headers(box:PGtkListBox);

  { Zeile entfernt  }
  procedure gtk_list_box_set_sort_func(box:PGtkListBox; sort_func:GtkListBoxSortFunc; user_data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_list_box_set_activate_on_single_click(box:PGtkListBox; single:gboolean);

  { Zeile entfernt  }
  function gtk_list_box_get_activate_on_single_click(box:PGtkListBox):gboolean;

  { Zeile entfernt  }
  procedure gtk_list_box_drag_unhighlight_row(box:PGtkListBox);

  { Zeile entfernt  }
  procedure gtk_list_box_drag_highlight_row(box:PGtkListBox; row:PGtkListBoxRow);

  { Zeile entfernt  }
  function gtk_list_box_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_list_box_bind_model(box:PGtkListBox; model:PGListModel; create_widget_func:GtkListBoxCreateWidgetFunc; user_data:gpointer; user_data_free_func:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_list_box_set_show_separators(box:PGtkListBox; show_separators:gboolean);

  { Zeile entfernt  }
  function gtk_list_box_get_show_separators(box:PGtkListBox):gboolean;

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_LIST_BOX : longint; { return type might be wrong }
    begin
      GTK_TYPE_LIST_BOX:=gtk_list_box_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX(obj : longint) : longint;
  begin
    GTK_LIST_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_BOX,GtkListBox);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BOX(obj : longint) : longint;
  begin
    GTK_IS_LIST_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_BOX);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_LIST_BOX_ROW : longint; { return type might be wrong }
    begin
      GTK_TYPE_LIST_BOX_ROW:=gtk_list_box_row_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX_ROW(obj : longint) : longint;
  begin
    GTK_LIST_BOX_ROW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_BOX_ROW,GtkListBoxRow);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX_ROW_CLASS(klass : longint) : longint;
  begin
    GTK_LIST_BOX_ROW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_LIST_BOX_ROW,GtkListBoxRowClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BOX_ROW(obj : longint) : longint;
  begin
    GTK_IS_LIST_BOX_ROW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_BOX_ROW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BOX_ROW_CLASS(klass : longint) : longint;
  begin
    GTK_IS_LIST_BOX_ROW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_LIST_BOX_ROW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BOX_ROW_GET_CLASS(obj : longint) : longint;
  begin
    GTK_LIST_BOX_ROW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_LIST_BOX_ROW,GtkListBoxRowClass);
  end;

  function gtk_list_box_row_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_row_set_child(row:PGtkListBoxRow; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_get_child(row:PGtkListBoxRow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_get_header(row:PGtkListBoxRow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_row_set_header(row:PGtkListBoxRow; header:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_get_index(row:PGtkListBoxRow):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_row_changed(row:PGtkListBoxRow);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_is_selected(row:PGtkListBoxRow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_row_set_selectable(row:PGtkListBoxRow; selectable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_get_selectable(row:PGtkListBoxRow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_row_set_activatable(row:PGtkListBoxRow; activatable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_row_get_activatable(row:PGtkListBoxRow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_prepend(box:PGtkListBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_append(box:PGtkListBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_insert(box:PGtkListBox; child:PGtkWidget; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_remove(box:PGtkListBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_selected_row(box:PGtkListBox):PGtkListBoxRow;
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_row_at_index(box:PGtkListBox; index_:longint):PGtkListBoxRow;
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_row_at_y(box:PGtkListBox; y:longint):PGtkListBoxRow;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_select_row(box:PGtkListBox; row:PGtkListBoxRow);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_placeholder(box:PGtkListBox; placeholder:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_adjustment(box:PGtkListBox; adjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_adjustment(box:PGtkListBox):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_selected_foreach(box:PGtkListBox; func:GtkListBoxForeachFunc; data:gpointer);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_selected_rows(box:PGtkListBox):PGList;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_unselect_row(box:PGtkListBox; row:PGtkListBoxRow);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_select_all(box:PGtkListBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_unselect_all(box:PGtkListBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_selection_mode(box:PGtkListBox; mode:GtkSelectionMode);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_selection_mode(box:PGtkListBox):GtkSelectionMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_filter_func(box:PGtkListBox; filter_func:GtkListBoxFilterFunc; user_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_header_func(box:PGtkListBox; update_header:GtkListBoxUpdateHeaderFunc; user_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_invalidate_filter(box:PGtkListBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_invalidate_sort(box:PGtkListBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_invalidate_headers(box:PGtkListBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_sort_func(box:PGtkListBox; sort_func:GtkListBoxSortFunc; user_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_activate_on_single_click(box:PGtkListBox; single:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_activate_on_single_click(box:PGtkListBox):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_drag_unhighlight_row(box:PGtkListBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_drag_highlight_row(box:PGtkListBox; row:PGtkListBoxRow);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_bind_model(box:PGtkListBox; model:PGListModel; create_widget_func:GtkListBoxCreateWidgetFunc; user_data:gpointer; user_data_free_func:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_box_set_show_separators(box:PGtkListBox; show_separators:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_box_get_show_separators(box:PGtkListBox):gboolean;
  begin
    { You must implement this function }
  end;

