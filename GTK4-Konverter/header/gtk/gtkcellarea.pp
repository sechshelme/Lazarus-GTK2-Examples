
  Type
  Pchar  = ^char;
  PGdkEvent  = ^GdkEvent;
  PGdkRectangle  = ^GdkRectangle;
  PGList  = ^GList;
  PGParamSpec  = ^GParamSpec;
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellAreaClass  = ^GtkCellAreaClass;
  PGtkCellAreaContext  = ^GtkCellAreaContext;
  PGtkCellEditable  = ^GtkCellEditable;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkSnapshot  = ^GtkSnapshot;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkWidget  = ^GtkWidget;
  Pguint  = ^guint;
  PGValue  = ^GValue;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellarea.h
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
{$ifndef __GTK_CELL_AREA_H__}
{$define __GTK_CELL_AREA_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}

  { was #define dname def_expr }
  function GTK_TYPE_CELL_AREA : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_GET_CLASS(obj : longint) : longint;  


  type
    _GtkCellArea = GtkCellArea;
    _GtkCellAreaClass = GtkCellAreaClass;
    _GtkCellAreaContext = GtkCellAreaContext;
  {*
   * GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID:
   * @object: the `GObject` on which set_cell_property() or get_cell_property()
   *   was called
   * @property_id: the numeric id of the property
   * @pspec: the `GParamSpec` of the property
   *
   * This macro should be used to emit a standard warning about unexpected
   * properties in set_cell_property() and get_cell_property() implementations.
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object,property_id,pspec : longint) : longint;  

  {*
   * GtkCellCallback:
   * @renderer: the cell renderer to operate on
   * @data: (closure): user-supplied data
   *
   * The type of the callback functions used for iterating over
   * the cell renderers of a `GtkCellArea`, see gtk_cell_area_foreach().
   *
   * Returns: %TRUE to stop iterating over cells.
    }

  type

    GtkCellCallback = function (renderer:PGtkCellRenderer; data:gpointer):gboolean;cdecl;
  {*
   * GtkCellAllocCallback:
   * @renderer: the cell renderer to operate on
   * @cell_area: the area allocated to @renderer inside the rectangle
   *   provided to gtk_cell_area_foreach_alloc().
   * @cell_background: the background area for @renderer inside the
   *   background area provided to gtk_cell_area_foreach_alloc().
   * @data: (closure): user-supplied data
   *
   * The type of the callback functions used for iterating over the
   * cell renderers and their allocated areas inside a `GtkCellArea`,
   * see gtk_cell_area_foreach_alloc().
   *
   * Returns: %TRUE to stop iterating over cells.
    }
(* Const before type ignored *)
(* Const before type ignored *)

    GtkCellAllocCallback = function (renderer:PGtkCellRenderer; cell_area:PGdkRectangle; cell_background:PGdkRectangle; data:gpointer):gboolean;cdecl;
  {< private > }
    _GtkCellArea = record
        parent_instance : GInitiallyUnowned;cdecl;
      end;

  {*
   * GtkCellAreaClass:
   * @add: adds a `GtkCellRenderer` to the area.
   * @remove: removes a `GtkCellRenderer` from the area.
   * @foreach: calls the `GtkCellCallback` function on every `GtkCellRenderer` in
   *   the area with the provided user data until the callback returns %TRUE.
   * @foreach_alloc: Calls the `GtkCellAllocCallback` function on every
   *   `GtkCellRenderer` in the area with the allocated area for the cell
   *   and the provided user data until the callback returns %TRUE.
   * @event: Handle an event in the area, this is generally used to activate
   *   a cell at the event location for button events but can also be used
   *   to generically pass events to `GtkWidget`s drawn onto the area.
   * @snapshot: Actually snapshot the area’s cells to the specified rectangle,
   *   @background_area should be correctly distributed to the cells
   *   corresponding background areas.
   * @apply_attributes: Apply the cell attributes to the cells. This is
   *   implemented as a signal and generally `GtkCellArea` subclasses don't
   *   need to implement it since it is handled by the base class.
   * @create_context: Creates and returns a class specific `GtkCellAreaContext`
   *   to store cell alignment and allocation details for a said `GtkCellArea`
   *   class.
   * @copy_context: Creates a new `GtkCellAreaContext` in the same state as
   *   the passed @context with any cell alignment data and allocations intact.
   * @get_request_mode: This allows an area to tell its layouting widget whether
   *   it prefers to be allocated in %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH or
   *   %GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT mode.
   * @get_preferred_width: Calculates the minimum and natural width of the
   *   areas cells with the current attributes applied while considering
   *   the particular layouting details of the said `GtkCellArea`. While
   *   requests are performed over a series of rows, alignments and overall
   *   minimum and natural sizes should be stored in the corresponding
   *   `GtkCellAreaContext`.
   * @get_preferred_height_for_width: Calculates the minimum and natural height
   *   for the area if the passed @context would be allocated the given width.
   *   When implementing this virtual method it is safe to assume that @context
   *   has already stored the aligned cell widths for every `GtkTreeModel` row
   *   that @context will be allocated for since this information was stored
   *   at `GtkCellAreaClass.get_preferred_width()` time. This virtual method
   *   should also store any necessary alignments of cell heights for the
   *   case that the context is allocated a height.
   * @get_preferred_height: Calculates the minimum and natural height of the
   *   areas cells with the current attributes applied. Essentially this is
   *   the same as `GtkCellAreaClass.get_preferred_width()` only for areas
   *   that are being requested as %GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT.
   * @get_preferred_width_for_height: Calculates the minimum and natural width
   *   for the area if the passed @context would be allocated the given
   *   height. The same as `GtkCellAreaClass.get_preferred_height_for_width()`
   *   only for handling requests in the %GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT
   *   mode.
   * @set_cell_property: This should be implemented to handle changes in child
   *   cell properties for a given `GtkCellRenderer` that were previously
   *   installed on the `GtkCellAreaClass` with gtk_cell_area_class_install_cell_property().
   * @get_cell_property: This should be implemented to report the values of
   *   child cell properties for a given child `GtkCellRenderer`.
   * @focus: This virtual method should be implemented to navigate focus from
   *   cell to cell inside the `GtkCellArea`. The `GtkCellArea` should move
   *   focus from cell to cell inside the area and return %FALSE if focus
   *   logically leaves the area with the following exceptions: When the
   *   area contains no activatable cells, the entire area receives focus.
   *   Focus should not be given to cells that are actually “focus siblings”
   *   of other sibling cells (see gtk_cell_area_get_focus_from_sibling()).
   *   Focus is set by calling gtk_cell_area_set_focus_cell().
   * @is_activatable: Returns whether the `GtkCellArea` can respond to
   *   `GtkCellAreaClass.activate()`, usually this does not need to be
   *   implemented since the base class takes care of this however it can
   *   be enhanced if the `GtkCellArea` subclass can handle activation in
   *   other ways than activating its `GtkCellRenderers`.
   * @activate: This is called when the layouting widget rendering the
   *   `GtkCellArea` activates the focus cell (see gtk_cell_area_get_focus_cell()).
    }
  {< private > }
  {< public > }
  { Basic methods  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  { Geometry  }
  { Cell Properties  }
(* Const before type ignored *)
  { Focus  }
(* Const before type ignored *)
  {< private > }
    _GtkCellAreaClass = record
        parent_class : GInitiallyUnownedClass;
        add : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;
        remove : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;
        foreach : procedure (area:PGtkCellArea; callback:GtkCellCallback; callback_data:gpointer);cdecl;
        foreach_alloc : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; background_area:PGdkRectangle; 
                      callback:GtkCellAllocCallback; callback_data:gpointer);cdecl;
        event : function (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; event:PGdkEvent; cell_area:PGdkRectangle; 
                     flags:GtkCellRendererState):longint;cdecl;
        snapshot : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; snapshot:PGtkSnapshot; background_area:PGdkRectangle; 
                      cell_area:PGdkRectangle; flags:GtkCellRendererState; paint_focus:gboolean);cdecl;
        apply_attributes : procedure (area:PGtkCellArea; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:gboolean; is_expanded:gboolean);cdecl;
        create_context : function (area:PGtkCellArea):PGtkCellAreaContext;cdecl;
        copy_context : function (area:PGtkCellArea; context:PGtkCellAreaContext):PGtkCellAreaContext;cdecl;
        get_request_mode : function (area:PGtkCellArea):GtkSizeRequestMode;cdecl;
        get_preferred_width : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_width:Plongint; natural_width:Plongint);cdecl;
        get_preferred_height_for_width : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; width:longint; minimum_height:Plongint; 
                      natural_height:Plongint);cdecl;
        get_preferred_height : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_height:Plongint; natural_height:Plongint);cdecl;
        get_preferred_width_for_height : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; height:longint; minimum_width:Plongint; 
                      natural_width:Plongint);cdecl;
        set_cell_property : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer; property_id:guint; value:PGValue; pspec:PGParamSpec);cdecl;
        get_cell_property : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer; property_id:guint; value:PGValue; pspec:PGParamSpec);cdecl;
        focus : function (area:PGtkCellArea; direction:GtkDirectionType):gboolean;cdecl;
        is_activatable : function (area:PGtkCellArea):gboolean;cdecl;
        activate : function (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; flags:GtkCellRendererState; 
                     edit_only:gboolean):gboolean;cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType                 gtk_cell_area_get_type                       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
  { Basic methods  }

  procedure gtk_cell_area_add(area:PGtkCellArea; renderer:PGtkCellRenderer);

  procedure gtk_cell_area_remove(area:PGtkCellArea; renderer:PGtkCellRenderer);

  function gtk_cell_area_has_renderer(area:PGtkCellArea; renderer:PGtkCellRenderer):gboolean;

  procedure gtk_cell_area_foreach(area:PGtkCellArea; callback:GtkCellCallback; callback_data:gpointer);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_cell_area_foreach_alloc(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; background_area:PGdkRectangle; 
              callback:GtkCellAllocCallback; callback_data:gpointer);

(* Const before type ignored *)
  function gtk_cell_area_event(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; event:PGdkEvent; cell_area:PGdkRectangle; 
             flags:GtkCellRendererState):longint;

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_cell_area_snapshot(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; snapshot:PGtkSnapshot; background_area:PGdkRectangle; 
              cell_area:PGdkRectangle; flags:GtkCellRendererState; paint_focus:gboolean);

(* Const before type ignored *)
  procedure gtk_cell_area_get_cell_allocation(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; renderer:PGtkCellRenderer; cell_area:PGdkRectangle; 
              allocation:PGdkRectangle);

(* Const before type ignored *)
  function gtk_cell_area_get_cell_at_position(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; x:longint; 
             y:longint; alloc_area:PGdkRectangle):^GtkCellRenderer;

  { Geometry  }
  function gtk_cell_area_create_context(area:PGtkCellArea):^GtkCellAreaContext;

  function gtk_cell_area_copy_context(area:PGtkCellArea; context:PGtkCellAreaContext):^GtkCellAreaContext;

  function gtk_cell_area_get_request_mode(area:PGtkCellArea):GtkSizeRequestMode;

  procedure gtk_cell_area_get_preferred_width(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_width:Plongint; natural_width:Plongint);

  procedure gtk_cell_area_get_preferred_height_for_width(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; width:longint; minimum_height:Plongint; 
              natural_height:Plongint);

  procedure gtk_cell_area_get_preferred_height(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_height:Plongint; natural_height:Plongint);

  procedure gtk_cell_area_get_preferred_width_for_height(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; height:longint; minimum_width:Plongint; 
              natural_width:Plongint);

(* Const before type ignored *)
  function gtk_cell_area_get_current_path_string(area:PGtkCellArea):^char;

  { Attributes  }
  procedure gtk_cell_area_apply_attributes(area:PGtkCellArea; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:gboolean; is_expanded:gboolean);

(* Const before type ignored *)
  procedure gtk_cell_area_attribute_connect(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar; column:longint);

(* Const before type ignored *)
  procedure gtk_cell_area_attribute_disconnect(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar);

(* Const before type ignored *)
  function gtk_cell_area_attribute_get_column(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar):longint;

  { Cell Properties  }
  procedure gtk_cell_area_class_install_cell_property(aclass:PGtkCellAreaClass; property_id:guint; pspec:PGParamSpec);

(* Const before type ignored *)
  function gtk_cell_area_class_find_cell_property(aclass:PGtkCellAreaClass; property_name:Pchar):^GParamSpec;

  function gtk_cell_area_class_list_cell_properties(aclass:PGtkCellAreaClass; n_properties:Pguint):^^GParamSpec;

(* Const before type ignored *)
(* error 
                                                                    ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : pointer;
(* Const before type ignored *)
(* error 
                                                                    ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)
 : pointer;
(* Const before type ignored *)
(* error 
                                                                    ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)
 : pointer;
(* Const before type ignored *)

  procedure gtk_cell_area_cell_set_valist(area:PGtkCellArea; renderer:PGtkCellRenderer; first_property_name:Pchar; var_args:va_list);

(* Const before type ignored *)
  procedure gtk_cell_area_cell_get_valist(area:PGtkCellArea; renderer:PGtkCellRenderer; first_property_name:Pchar; var_args:va_list);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_cell_area_cell_set_property(area:PGtkCellArea; renderer:PGtkCellRenderer; property_name:Pchar; value:PGValue);

(* Const before type ignored *)
  procedure gtk_cell_area_cell_get_property(area:PGtkCellArea; renderer:PGtkCellRenderer; property_name:Pchar; value:PGValue);

  { Focus  }
  function gtk_cell_area_is_activatable(area:PGtkCellArea):gboolean;

(* Const before type ignored *)
  function gtk_cell_area_activate(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; flags:GtkCellRendererState; 
             edit_only:gboolean):gboolean;

  function gtk_cell_area_focus(area:PGtkCellArea; direction:GtkDirectionType):gboolean;

  procedure gtk_cell_area_set_focus_cell(area:PGtkCellArea; renderer:PGtkCellRenderer);

  function gtk_cell_area_get_focus_cell(area:PGtkCellArea):^GtkCellRenderer;

  { Focus siblings  }
  procedure gtk_cell_area_add_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer);

  procedure gtk_cell_area_remove_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer);

  function gtk_cell_area_is_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer):gboolean;

(* Const before type ignored *)
  function gtk_cell_area_get_focus_siblings(area:PGtkCellArea; renderer:PGtkCellRenderer):^GList;

  function gtk_cell_area_get_focus_from_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer):^GtkCellRenderer;

  { Cell Activation/Editing  }
  function gtk_cell_area_get_edited_cell(area:PGtkCellArea):^GtkCellRenderer;

  function gtk_cell_area_get_edit_widget(area:PGtkCellArea):^GtkCellEditable;

(* Const before type ignored *)
  function gtk_cell_area_activate_cell(area:PGtkCellArea; widget:PGtkWidget; renderer:PGtkCellRenderer; event:PGdkEvent; cell_area:PGdkRectangle; 
             flags:GtkCellRendererState):gboolean;

  procedure gtk_cell_area_stop_editing(area:PGtkCellArea; canceled:gboolean);

  { Functions for area implementations  }
  { Distinguish the inner cell area from the whole requested area including margins  }
(* Const before type ignored *)
  procedure gtk_cell_area_inner_cell_area(area:PGtkCellArea; widget:PGtkWidget; cell_area:PGdkRectangle; inner_area:PGdkRectangle);

  { Request the size of a cell while respecting the cell margins (requests are margin inclusive)  }
  procedure gtk_cell_area_request_renderer(area:PGtkCellArea; renderer:PGtkCellRenderer; orientation:GtkOrientation; widget:PGtkWidget; for_size:longint; 
              minimum_size:Plongint; natural_size:Plongint);

  { For api stability, this is called from gtkcelllayout.c in order to ensure the correct
   * object is passed to the user function in gtk_cell_layout_set_cell_data_func.
   *
   * This private api takes gpointer & GFunc arguments to circumvent circular header file
   * dependencies.
    }
  procedure _gtk_cell_area_set_cell_data_func_with_proxy(area:PGtkCellArea; cell:PGtkCellRenderer; func:GFunc; func_data:gpointer; destroy:GDestroyNotify; 
              proxy:gpointer);

{$endif}
  { __GTK_CELL_AREA_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_AREA : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_AREA:=gtk_cell_area_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA(obj : longint) : longint;
  begin
    GTK_CELL_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA,GtkCellArea);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CLASS(klass : longint) : longint;
  begin
    GTK_CELL_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_AREA,GtkCellAreaClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA(obj : longint) : longint;
  begin
    GTK_IS_CELL_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_CLASS(klass : longint) : longint;
  begin
    GTK_IS_CELL_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_AREA);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_GET_CLASS(obj : longint) : longint;
  begin
    GTK_CELL_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_AREA,GtkCellAreaClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object,property_id,pspec : longint) : longint;
  begin
    GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID:=G_OBJECT_WARN_INVALID_PSPEC(object,'cell property id',property_id,pspec);
  end;

  procedure gtk_cell_area_add(area:PGtkCellArea; renderer:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_remove(area:PGtkCellArea; renderer:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_has_renderer(area:PGtkCellArea; renderer:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_foreach(area:PGtkCellArea; callback:GtkCellCallback; callback_data:gpointer);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_foreach_alloc(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; background_area:PGdkRectangle; 
              callback:GtkCellAllocCallback; callback_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_event(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; event:PGdkEvent; cell_area:PGdkRectangle; 
             flags:GtkCellRendererState):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_snapshot(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; snapshot:PGtkSnapshot; background_area:PGdkRectangle; 
              cell_area:PGdkRectangle; flags:GtkCellRendererState; paint_focus:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_get_cell_allocation(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; renderer:PGtkCellRenderer; cell_area:PGdkRectangle; 
              allocation:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_cell_at_position(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; x:longint; 
             y:longint; alloc_area:PGdkRectangle):PGtkCellRenderer;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_create_context(area:PGtkCellArea):PGtkCellAreaContext;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_copy_context(area:PGtkCellArea; context:PGtkCellAreaContext):PGtkCellAreaContext;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_request_mode(area:PGtkCellArea):GtkSizeRequestMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_get_preferred_width(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_width:Plongint; natural_width:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_get_preferred_height_for_width(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; width:longint; minimum_height:Plongint; 
              natural_height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_get_preferred_height(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_height:Plongint; natural_height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_get_preferred_width_for_height(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; height:longint; minimum_width:Plongint; 
              natural_width:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_current_path_string(area:PGtkCellArea):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_apply_attributes(area:PGtkCellArea; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:gboolean; is_expanded:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_attribute_connect(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar; column:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_attribute_disconnect(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_attribute_get_column(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_class_install_cell_property(aclass:PGtkCellAreaClass; property_id:guint; pspec:PGParamSpec);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_class_find_cell_property(aclass:PGtkCellAreaClass; property_name:Pchar):PGParamSpec;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_class_list_cell_properties(aclass:PGtkCellAreaClass; n_properties:Pguint):PPGParamSpec;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_cell_set_valist(area:PGtkCellArea; renderer:PGtkCellRenderer; first_property_name:Pchar; var_args:va_list);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_cell_get_valist(area:PGtkCellArea; renderer:PGtkCellRenderer; first_property_name:Pchar; var_args:va_list);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_cell_set_property(area:PGtkCellArea; renderer:PGtkCellRenderer; property_name:Pchar; value:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_cell_get_property(area:PGtkCellArea; renderer:PGtkCellRenderer; property_name:Pchar; value:PGValue);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_is_activatable(area:PGtkCellArea):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_activate(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; flags:GtkCellRendererState; 
             edit_only:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_focus(area:PGtkCellArea; direction:GtkDirectionType):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_set_focus_cell(area:PGtkCellArea; renderer:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_focus_cell(area:PGtkCellArea):PGtkCellRenderer;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_add_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_remove_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_is_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_focus_siblings(area:PGtkCellArea; renderer:PGtkCellRenderer):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_focus_from_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer):PGtkCellRenderer;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_edited_cell(area:PGtkCellArea):PGtkCellRenderer;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_get_edit_widget(area:PGtkCellArea):PGtkCellEditable;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_activate_cell(area:PGtkCellArea; widget:PGtkWidget; renderer:PGtkCellRenderer; event:PGdkEvent; cell_area:PGdkRectangle; 
             flags:GtkCellRendererState):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_stop_editing(area:PGtkCellArea; canceled:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_inner_cell_area(area:PGtkCellArea; widget:PGtkWidget; cell_area:PGdkRectangle; inner_area:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_request_renderer(area:PGtkCellArea; renderer:PGtkCellRenderer; orientation:GtkOrientation; widget:PGtkWidget; for_size:longint; 
              minimum_size:Plongint; natural_size:Plongint);
  begin
    { You must implement this function }
  end;
  procedure _gtk_cell_area_set_cell_data_func_with_proxy(area:PGtkCellArea; cell:PGtkCellRenderer; func:GFunc; func_data:gpointer; destroy:GDestroyNotify; 
              proxy:gpointer);
  begin
    { You must implement this function }
  end;

