
    Type
    PGtkLayoutChild  = ^GtkLayoutChild;
    PGtkLayoutManager  = ^GtkLayoutManager;
    PGtkWidget  = ^GtkWidget;
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtklayoutmanager.h: Layout manager base class
   * Copyright 2019  The GNOME Foundation
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Author: Emmanuele Bassi
    }
(** unsupported pragma#pragma once*)
{$include <gsk/gsk.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtklayoutchild.h>}

  { was #define dname def_expr }
  function GTK_TYPE_LAYOUT_MANAGER : longint; { return type might be wrong }

(* error 
G_DECLARE_DERIVABLE_TYPE (GtkLayoutManager, gtk_layout_manager, GTK, LAYOUT_MANAGER, GObject)
 in declarator_list *)
(* error 
G_DECLARE_DERIVABLE_TYPE (GtkLayoutManager, gtk_layout_manager, GTK, LAYOUT_MANAGER, GObject)
  {*
   * GtkLayoutManagerClass:
   * @get_request_mode: a virtual function, used to return the preferred
   *   request mode for the layout manager; for instance, "width for height"
   *   or "height for width"; see `GtkSizeRequestMode`
   * @measure: a virtual function, used to measure the minimum and preferred
   *   sizes of the widget using the layout manager for a given orientation
   * @allocate: a virtual function, used to allocate the size of the widget
   *   using the layout manager
   * @layout_child_type: the type of `GtkLayoutChild` used by this layout manager
   * @create_layout_child: a virtual function, used to create a `GtkLayoutChild`
   *   meta object for the layout properties
   * @root: a virtual function, called when the widget using the layout
   *   manager is attached to a `GtkRoot`
   * @unroot: a virtual function, called when the widget using the layout
   *   manager is detached from a `GtkRoot`
   *
   * The `GtkLayoutManagerClass` structure contains only private data, and
   * should only be accessed through the provided API, or when subclassing
   * `GtkLayoutManager`.
    }
 in declarator_list *)
  {< private > }
(* error 
  GObjectClass parent_class;
 in declarator_list *)
  {< public > }

    var
      get_request_mode : function (manager:PGtkLayoutManager; widget:PGtkWidget):GtkSizeRequestMode;cvar;public;
      measure : procedure (manager:PGtkLayoutManager; widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; 
                    natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);cvar;public;
      allocate : procedure (manager:PGtkLayoutManager; widget:PGtkWidget; width:longint; height:longint; baseline:longint);cvar;public;
      layout_child_type : GType;cvar;public;
  {*
     * GtkLayoutManagerClass::create_layout_child:
     * @manager: the `GtkLayoutManager`
     * @widget: the widget using the @manager
     * @for_child: the child of @widget
     *
     * Create a `GtkLayoutChild` instance for the given @for_child widget.
     *
     * Returns: (transfer full): a `GtkLayoutChild`
      }
      create_layout_child : function (manager:PGtkLayoutManager; widget:PGtkWidget; for_child:PGtkWidget):PGtkLayoutChild;cvar;public;
      root : procedure (manager:PGtkLayoutManager);cvar;public;
      unroot : procedure (manager:PGtkLayoutManager);cvar;public;
  {< private > }
      _padding : array[0..15] of gpointer;cvar;public;
(* error 
};
in declaration at line 99 *)

    procedure gtk_layout_manager_measure(manager:PGtkLayoutManager; widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; 
                natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);

    procedure gtk_layout_manager_allocate(manager:PGtkLayoutManager; widget:PGtkWidget; width:longint; height:longint; baseline:longint);

    function gtk_layout_manager_get_request_mode(manager:PGtkLayoutManager):GtkSizeRequestMode;

    function gtk_layout_manager_get_widget(manager:PGtkLayoutManager):^GtkWidget;

    procedure gtk_layout_manager_layout_changed(manager:PGtkLayoutManager);

    function gtk_layout_manager_get_layout_child(manager:PGtkLayoutManager; child:PGtkWidget):^GtkLayoutChild;

  { was #define dname def_expr }
  function GTK_TYPE_LAYOUT_MANAGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_LAYOUT_MANAGER:=gtk_layout_manager_get_type;
    end;

    procedure gtk_layout_manager_measure(manager:PGtkLayoutManager; widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; 
                natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);
    begin
      { You must implement this function }
    end;
    procedure gtk_layout_manager_allocate(manager:PGtkLayoutManager; widget:PGtkWidget; width:longint; height:longint; baseline:longint);
    begin
      { You must implement this function }
    end;
    function gtk_layout_manager_get_request_mode(manager:PGtkLayoutManager):GtkSizeRequestMode;
    begin
      { You must implement this function }
    end;
    function gtk_layout_manager_get_widget(manager:PGtkLayoutManager):PGtkWidget;
    begin
      { You must implement this function }
    end;
    procedure gtk_layout_manager_layout_changed(manager:PGtkLayoutManager);
    begin
      { You must implement this function }
    end;
    function gtk_layout_manager_get_layout_child(manager:PGtkLayoutManager; child:PGtkWidget):PGtkLayoutChild;
    begin
      { You must implement this function }
    end;

