
  Type
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkPaintable  = ^GdkPaintable;
  PGdkRectangle  = ^GdkRectangle;
  PGList  = ^GList;
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkIconView  = ^GtkIconView;
  PGtkIconViewDropPosition  = ^GtkIconViewDropPosition;
  PGtkTooltip  = ^GtkTooltip;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreePath  = ^GtkTreePath;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkiconview.h
   * Copyright (C) 2002, 2004  Anders Carlsson <andersca@gnome.org>
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
{$ifndef __GTK_ICON_VIEW_H__}
{$define __GTK_ICON_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtktooltip.h>}

  { was #define dname def_expr }
  function GTK_TYPE_ICON_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ICON_VIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ICON_VIEW(obj : longint) : longint;  


  type
    _GtkIconView = GtkIconView;
  {*
   * GtkIconViewForeachFunc:
   * @icon_view: a `GtkIconView`
   * @path: The `GtkTreePath` of a selected row
   * @data: (closure): user data
   *
   * A function used by gtk_icon_view_selected_foreach() to map all
   * selected rows.
   *
   * It will be called on every selected row in the view.
    }

    GtkIconViewForeachFunc = procedure (icon_view:PGtkIconView; path:PGtkTreePath; data:gpointer);cdecl;
  {*
   * GtkIconViewDropPosition:
   * @GTK_ICON_VIEW_NO_DROP: no drop possible
   * @GTK_ICON_VIEW_DROP_INTO: dropped item replaces the item
   * @GTK_ICON_VIEW_DROP_LEFT: dropped item is inserted to the left
   * @GTK_ICON_VIEW_DROP_RIGHT: dropped item is inserted to the right
   * @GTK_ICON_VIEW_DROP_ABOVE: dropped item is inserted above
   * @GTK_ICON_VIEW_DROP_BELOW: dropped item is inserted below
   *
   * An enum for determining where a dropped item goes.
    }

    GtkIconViewDropPosition = (GTK_ICON_VIEW_NO_DROP,GTK_ICON_VIEW_DROP_INTO,
      GTK_ICON_VIEW_DROP_LEFT,GTK_ICON_VIEW_DROP_RIGHT,
      GTK_ICON_VIEW_DROP_ABOVE,GTK_ICON_VIEW_DROP_BELOW
      );
(* error 
GType          gtk_icon_view_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_icon_view_new:^GtkWidget;

  function gtk_icon_view_new_with_area(area:PGtkCellArea):^GtkWidget;

  function gtk_icon_view_new_with_model(model:PGtkTreeModel):^GtkWidget;

  procedure gtk_icon_view_set_model(icon_view:PGtkIconView; model:PGtkTreeModel);

  function gtk_icon_view_get_model(icon_view:PGtkIconView):^GtkTreeModel;

  procedure gtk_icon_view_set_text_column(icon_view:PGtkIconView; column:longint);

  function gtk_icon_view_get_text_column(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_markup_column(icon_view:PGtkIconView; column:longint);

  function gtk_icon_view_get_markup_column(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_pixbuf_column(icon_view:PGtkIconView; column:longint);

  function gtk_icon_view_get_pixbuf_column(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_item_orientation(icon_view:PGtkIconView; orientation:GtkOrientation);

  function gtk_icon_view_get_item_orientation(icon_view:PGtkIconView):GtkOrientation;

  procedure gtk_icon_view_set_columns(icon_view:PGtkIconView; columns:longint);

  function gtk_icon_view_get_columns(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_item_width(icon_view:PGtkIconView; item_width:longint);

  function gtk_icon_view_get_item_width(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_spacing(icon_view:PGtkIconView; spacing:longint);

  function gtk_icon_view_get_spacing(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_row_spacing(icon_view:PGtkIconView; row_spacing:longint);

  function gtk_icon_view_get_row_spacing(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_column_spacing(icon_view:PGtkIconView; column_spacing:longint);

  function gtk_icon_view_get_column_spacing(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_margin(icon_view:PGtkIconView; margin:longint);

  function gtk_icon_view_get_margin(icon_view:PGtkIconView):longint;

  procedure gtk_icon_view_set_item_padding(icon_view:PGtkIconView; item_padding:longint);

  function gtk_icon_view_get_item_padding(icon_view:PGtkIconView):longint;

  function gtk_icon_view_get_path_at_pos(icon_view:PGtkIconView; x:longint; y:longint):^GtkTreePath;

  function gtk_icon_view_get_item_at_pos(icon_view:PGtkIconView; x:longint; y:longint; path:PPGtkTreePath; cell:PPGtkCellRenderer):gboolean;

  function gtk_icon_view_get_visible_range(icon_view:PGtkIconView; start_path:PPGtkTreePath; end_path:PPGtkTreePath):gboolean;

  procedure gtk_icon_view_set_activate_on_single_click(icon_view:PGtkIconView; single:gboolean);

  function gtk_icon_view_get_activate_on_single_click(icon_view:PGtkIconView):gboolean;

  procedure gtk_icon_view_selected_foreach(icon_view:PGtkIconView; func:GtkIconViewForeachFunc; data:gpointer);

  procedure gtk_icon_view_set_selection_mode(icon_view:PGtkIconView; mode:GtkSelectionMode);

  function gtk_icon_view_get_selection_mode(icon_view:PGtkIconView):GtkSelectionMode;

  procedure gtk_icon_view_select_path(icon_view:PGtkIconView; path:PGtkTreePath);

  procedure gtk_icon_view_unselect_path(icon_view:PGtkIconView; path:PGtkTreePath);

  function gtk_icon_view_path_is_selected(icon_view:PGtkIconView; path:PGtkTreePath):gboolean;

  function gtk_icon_view_get_item_row(icon_view:PGtkIconView; path:PGtkTreePath):longint;

  function gtk_icon_view_get_item_column(icon_view:PGtkIconView; path:PGtkTreePath):longint;

  function gtk_icon_view_get_selected_items(icon_view:PGtkIconView):^GList;

  procedure gtk_icon_view_select_all(icon_view:PGtkIconView);

  procedure gtk_icon_view_unselect_all(icon_view:PGtkIconView);

  procedure gtk_icon_view_item_activated(icon_view:PGtkIconView; path:PGtkTreePath);

  procedure gtk_icon_view_set_cursor(icon_view:PGtkIconView; path:PGtkTreePath; cell:PGtkCellRenderer; start_editing:gboolean);

  function gtk_icon_view_get_cursor(icon_view:PGtkIconView; path:PPGtkTreePath; cell:PPGtkCellRenderer):gboolean;

  procedure gtk_icon_view_scroll_to_path(icon_view:PGtkIconView; path:PGtkTreePath; use_align:gboolean; row_align:single; col_align:single);

  { Drag-and-Drop support  }
  procedure gtk_icon_view_enable_model_drag_source(icon_view:PGtkIconView; start_button_mask:GdkModifierType; formats:PGdkContentFormats; actions:GdkDragAction);

  procedure gtk_icon_view_enable_model_drag_dest(icon_view:PGtkIconView; formats:PGdkContentFormats; actions:GdkDragAction);

  procedure gtk_icon_view_unset_model_drag_source(icon_view:PGtkIconView);

  procedure gtk_icon_view_unset_model_drag_dest(icon_view:PGtkIconView);

  procedure gtk_icon_view_set_reorderable(icon_view:PGtkIconView; reorderable:gboolean);

  function gtk_icon_view_get_reorderable(icon_view:PGtkIconView):gboolean;

  { These are useful to implement your own custom stuff.  }
  procedure gtk_icon_view_set_drag_dest_item(icon_view:PGtkIconView; path:PGtkTreePath; pos:GtkIconViewDropPosition);

  procedure gtk_icon_view_get_drag_dest_item(icon_view:PGtkIconView; path:PPGtkTreePath; pos:PGtkIconViewDropPosition);

  function gtk_icon_view_get_dest_item_at_pos(icon_view:PGtkIconView; drag_x:longint; drag_y:longint; path:PPGtkTreePath; pos:PGtkIconViewDropPosition):gboolean;

  function gtk_icon_view_create_drag_icon(icon_view:PGtkIconView; path:PGtkTreePath):^GdkPaintable;

  function gtk_icon_view_get_cell_rect(icon_view:PGtkIconView; path:PGtkTreePath; cell:PGtkCellRenderer; rect:PGdkRectangle):gboolean;

  procedure gtk_icon_view_set_tooltip_item(icon_view:PGtkIconView; tooltip:PGtkTooltip; path:PGtkTreePath);

  procedure gtk_icon_view_set_tooltip_cell(icon_view:PGtkIconView; tooltip:PGtkTooltip; path:PGtkTreePath; cell:PGtkCellRenderer);

  function gtk_icon_view_get_tooltip_context(icon_view:PGtkIconView; x:longint; y:longint; keyboard_tip:gboolean; model:PPGtkTreeModel; 
             path:PPGtkTreePath; iter:PGtkTreeIter):gboolean;

  procedure gtk_icon_view_set_tooltip_column(icon_view:PGtkIconView; column:longint);

  function gtk_icon_view_get_tooltip_column(icon_view:PGtkIconView):longint;

{$endif}
  { __GTK_ICON_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ICON_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_ICON_VIEW:=gtk_icon_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ICON_VIEW(obj : longint) : longint;
  begin
    GTK_ICON_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_VIEW,GtkIconView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ICON_VIEW(obj : longint) : longint;
  begin
    GTK_IS_ICON_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_VIEW);
  end;

  function gtk_icon_view_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_new_with_area(area:PGtkCellArea):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_new_with_model(model:PGtkTreeModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_model(icon_view:PGtkIconView; model:PGtkTreeModel);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_model(icon_view:PGtkIconView):PGtkTreeModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_text_column(icon_view:PGtkIconView; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_text_column(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_markup_column(icon_view:PGtkIconView; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_markup_column(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_pixbuf_column(icon_view:PGtkIconView; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_pixbuf_column(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_item_orientation(icon_view:PGtkIconView; orientation:GtkOrientation);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_item_orientation(icon_view:PGtkIconView):GtkOrientation;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_columns(icon_view:PGtkIconView; columns:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_columns(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_item_width(icon_view:PGtkIconView; item_width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_item_width(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_spacing(icon_view:PGtkIconView; spacing:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_spacing(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_row_spacing(icon_view:PGtkIconView; row_spacing:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_row_spacing(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_column_spacing(icon_view:PGtkIconView; column_spacing:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_column_spacing(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_margin(icon_view:PGtkIconView; margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_margin(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_item_padding(icon_view:PGtkIconView; item_padding:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_item_padding(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_path_at_pos(icon_view:PGtkIconView; x:longint; y:longint):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_item_at_pos(icon_view:PGtkIconView; x:longint; y:longint; path:PPGtkTreePath; cell:PPGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_visible_range(icon_view:PGtkIconView; start_path:PPGtkTreePath; end_path:PPGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_activate_on_single_click(icon_view:PGtkIconView; single:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_activate_on_single_click(icon_view:PGtkIconView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_selected_foreach(icon_view:PGtkIconView; func:GtkIconViewForeachFunc; data:gpointer);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_selection_mode(icon_view:PGtkIconView; mode:GtkSelectionMode);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_selection_mode(icon_view:PGtkIconView):GtkSelectionMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_select_path(icon_view:PGtkIconView; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_unselect_path(icon_view:PGtkIconView; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_path_is_selected(icon_view:PGtkIconView; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_item_row(icon_view:PGtkIconView; path:PGtkTreePath):longint;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_item_column(icon_view:PGtkIconView; path:PGtkTreePath):longint;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_selected_items(icon_view:PGtkIconView):PGList;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_select_all(icon_view:PGtkIconView);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_unselect_all(icon_view:PGtkIconView);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_item_activated(icon_view:PGtkIconView; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_cursor(icon_view:PGtkIconView; path:PGtkTreePath; cell:PGtkCellRenderer; start_editing:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_cursor(icon_view:PGtkIconView; path:PPGtkTreePath; cell:PPGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_scroll_to_path(icon_view:PGtkIconView; path:PGtkTreePath; use_align:gboolean; row_align:single; col_align:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_enable_model_drag_source(icon_view:PGtkIconView; start_button_mask:GdkModifierType; formats:PGdkContentFormats; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_enable_model_drag_dest(icon_view:PGtkIconView; formats:PGdkContentFormats; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_unset_model_drag_source(icon_view:PGtkIconView);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_unset_model_drag_dest(icon_view:PGtkIconView);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_reorderable(icon_view:PGtkIconView; reorderable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_reorderable(icon_view:PGtkIconView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_drag_dest_item(icon_view:PGtkIconView; path:PGtkTreePath; pos:GtkIconViewDropPosition);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_get_drag_dest_item(icon_view:PGtkIconView; path:PPGtkTreePath; pos:PGtkIconViewDropPosition);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_dest_item_at_pos(icon_view:PGtkIconView; drag_x:longint; drag_y:longint; path:PPGtkTreePath; pos:PGtkIconViewDropPosition):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_create_drag_icon(icon_view:PGtkIconView; path:PGtkTreePath):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_cell_rect(icon_view:PGtkIconView; path:PGtkTreePath; cell:PGtkCellRenderer; rect:PGdkRectangle):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_tooltip_item(icon_view:PGtkIconView; tooltip:PGtkTooltip; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_tooltip_cell(icon_view:PGtkIconView; tooltip:PGtkTooltip; path:PGtkTreePath; cell:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_tooltip_context(icon_view:PGtkIconView; x:longint; y:longint; keyboard_tip:gboolean; model:PPGtkTreeModel; 
             path:PPGtkTreePath; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_view_set_tooltip_column(icon_view:PGtkIconView; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_icon_view_get_tooltip_column(icon_view:PGtkIconView):longint;
  begin
    { You must implement this function }
  end;

