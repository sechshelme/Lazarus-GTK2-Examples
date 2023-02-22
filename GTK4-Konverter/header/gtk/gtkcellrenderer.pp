
  Type
  Pchar  = ^char;
  PGdkEvent  = ^GdkEvent;
  PGdkRectangle  = ^GdkRectangle;
  PGtkCellEditable  = ^GtkCellEditable;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkRequisition  = ^GtkRequisition;
  PGtkSnapshot  = ^GtkSnapshot;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
  Psingle  = ^single;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellrenderer.h
   * Copyright (C) 2000  Red Hat, Inc.,  Jonathan Blandford <jrb@redhat.com>
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
{$ifndef __GTK_CELL_RENDERER_H__}
{$define __GTK_CELL_RENDERER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcelleditable.h>}
  { Zeile entfernt  }
  {*
   * GtkCellRendererState:
   * @GTK_CELL_RENDERER_SELECTED: The cell is currently selected, and
   *  probably has a selection colored background to render to.
   * @GTK_CELL_RENDERER_PRELIT: The mouse is hovering over the cell.
   * @GTK_CELL_RENDERER_INSENSITIVE: The cell is drawn in an insensitive manner
   * @GTK_CELL_RENDERER_SORTED: The cell is in a sorted row
   * @GTK_CELL_RENDERER_FOCUSED: The cell is in the focus row.
   * @GTK_CELL_RENDERER_EXPANDABLE: The cell is in a row that can be expanded
   * @GTK_CELL_RENDERER_EXPANDED: The cell is in a row that is expanded
   *
   * Tells how a cell is to be rendered.
    }
  { this flag means the cell is in the sort column/row  }

  type
    GtkCellRendererState = (GTK_CELL_RENDERER_SELECTED := 1 shl 0,GTK_CELL_RENDERER_PRELIT := 1 shl 1,
      GTK_CELL_RENDERER_INSENSITIVE := 1 shl 2,
      GTK_CELL_RENDERER_SORTED := 1 shl 3,GTK_CELL_RENDERER_FOCUSED := 1 shl 4,
      GTK_CELL_RENDERER_EXPANDABLE := 1 shl 5,GTK_CELL_RENDERER_EXPANDED := 1 shl 6
      );
  {*
   * GtkCellRendererMode:
   * @GTK_CELL_RENDERER_MODE_INERT: The cell is just for display
   *  and cannot be interacted with.  Note that this doesn’t mean that eg. the
   *  row being drawn can’t be selected -- just that a particular element of
   *  it cannot be individually modified.
   * @GTK_CELL_RENDERER_MODE_ACTIVATABLE: The cell can be clicked.
   * @GTK_CELL_RENDERER_MODE_EDITABLE: The cell can be edited or otherwise modified.
   *
   * Identifies how the user can interact with a particular cell.
    }

    GtkCellRendererMode = (GTK_CELL_RENDERER_MODE_INERT,GTK_CELL_RENDERER_MODE_ACTIVATABLE,
      GTK_CELL_RENDERER_MODE_EDITABLE);

  { was #define dname def_expr }
  function GTK_TYPE_CELL_RENDERER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_GET_CLASS(obj : longint) : longint;  


  type
    _GtkCellRenderer = GtkCellRenderer;
    _GtkCellRendererPrivate = GtkCellRendererPrivate;
    _GtkCellRendererClass = GtkCellRendererClass;
    _GtkCellRendererClassPrivate = GtkCellRendererClassPrivate;
  {< private > }
    _GtkCellRenderer = record
        parent_instance : GInitiallyUnowned;
        priv : ^GtkCellRendererPrivate;
      end;

  {*
   * GtkCellRendererClass:
   * @get_request_mode: Called to gets whether the cell renderer prefers
   *    a height-for-width layout or a width-for-height layout.
   * @get_preferred_width: Called to get a renderer’s natural width.
   * @get_preferred_height_for_width: Called to get a renderer’s natural height for width.
   * @get_preferred_height: Called to get a renderer’s natural height.
   * @get_preferred_width_for_height: Called to get a renderer’s natural width for height.
   * @get_aligned_area: Called to get the aligned area used by @cell inside @cell_area.
   * @snapshot: Called to snapshot the content of the `GtkCellRenderer`.
   * @activate: Called to activate the content of the `GtkCellRenderer`.
   * @start_editing: Called to initiate editing the content of the `GtkCellRenderer`.
   * @editing_canceled: Signal gets emitted when the user cancels the process of editing a cell.
   * @editing_started: Signal gets emitted when a cell starts to be edited.
    }
  {< private > }
  {< public > }
  { vtable - not signals  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  { Signals  }
(* Const before type ignored *)
  {< private > }
    _GtkCellRendererClass = record
        parent_class : GInitiallyUnownedClass;
        get_request_mode : function (cell:PGtkCellRenderer):GtkSizeRequestMode;cdecl;
        get_preferred_width : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;
        get_preferred_height_for_width : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;
        get_preferred_height : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;
        get_preferred_width_for_height : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;
        get_aligned_area : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; flags:GtkCellRendererState; cell_area:PGdkRectangle; aligned_area:PGdkRectangle);cdecl;
        snapshot : procedure (cell:PGtkCellRenderer; snapshot:PGtkSnapshot; widget:PGtkWidget; background_area:PGdkRectangle; cell_area:PGdkRectangle; 
                      flags:GtkCellRendererState);cdecl;
        activate : function (cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
                     cell_area:PGdkRectangle; flags:GtkCellRendererState):gboolean;cdecl;
        start_editing : function (cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
                     cell_area:PGdkRectangle; flags:GtkCellRendererState):PGtkCellEditable;cdecl;
        editing_canceled : procedure (cell:PGtkCellRenderer);cdecl;
        editing_started : procedure (cell:PGtkCellRenderer; editable:PGtkCellEditable; path:Pchar);cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_cell_renderer_get_type:GType;

  { Zeile entfernt  }
  function gtk_cell_renderer_get_request_mode(cell:PGtkCellRenderer):GtkSizeRequestMode;

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_preferred_width(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_preferred_height_for_width(cell:PGtkCellRenderer; widget:PGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_preferred_height(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_preferred_width_for_height(cell:PGtkCellRenderer; widget:PGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_preferred_size(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_cell_renderer_get_aligned_area(cell:PGtkCellRenderer; widget:PGtkWidget; flags:GtkCellRendererState; cell_area:PGdkRectangle; aligned_area:PGdkRectangle);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_cell_renderer_snapshot(cell:PGtkCellRenderer; snapshot:PGtkSnapshot; widget:PGtkWidget; background_area:PGdkRectangle; cell_area:PGdkRectangle; 
              flags:GtkCellRendererState);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_cell_renderer_activate(cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
             cell_area:PGdkRectangle; flags:GtkCellRendererState):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_cell_renderer_start_editing(cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
             cell_area:PGdkRectangle; flags:GtkCellRendererState):^GtkCellEditable;

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_fixed_size(cell:PGtkCellRenderer; width:longint; height:longint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_fixed_size(cell:PGtkCellRenderer; width:Plongint; height:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_alignment(cell:PGtkCellRenderer; xalign:single; yalign:single);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_alignment(cell:PGtkCellRenderer; xalign:Psingle; yalign:Psingle);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_padding(cell:PGtkCellRenderer; xpad:longint; ypad:longint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_get_padding(cell:PGtkCellRenderer; xpad:Plongint; ypad:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_visible(cell:PGtkCellRenderer; visible:gboolean);

  { Zeile entfernt  }
  function gtk_cell_renderer_get_visible(cell:PGtkCellRenderer):gboolean;

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_sensitive(cell:PGtkCellRenderer; sensitive:gboolean);

  { Zeile entfernt  }
  function gtk_cell_renderer_get_sensitive(cell:PGtkCellRenderer):gboolean;

  { Zeile entfernt  }
  function gtk_cell_renderer_is_activatable(cell:PGtkCellRenderer):gboolean;

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_is_expander(cell:PGtkCellRenderer; is_expander:gboolean);

  { Zeile entfernt  }
  function gtk_cell_renderer_get_is_expander(cell:PGtkCellRenderer):gboolean;

  { Zeile entfernt  }
  procedure gtk_cell_renderer_set_is_expanded(cell:PGtkCellRenderer; is_expanded:gboolean);

  { Zeile entfernt  }
  function gtk_cell_renderer_get_is_expanded(cell:PGtkCellRenderer):gboolean;

  { For use by cell renderer implementations only  }
  { Zeile entfernt  }
  procedure gtk_cell_renderer_stop_editing(cell:PGtkCellRenderer; canceled:gboolean);

(* Const before type ignored *)
  procedure _gtk_cell_renderer_calc_offset(cell:PGtkCellRenderer; cell_area:PGdkRectangle; direction:GtkTextDirection; width:longint; height:longint; 
              x_offset:Plongint; y_offset:Plongint);

  { Zeile entfernt  }
  function gtk_cell_renderer_get_state(cell:PGtkCellRenderer; widget:PGtkWidget; cell_state:GtkCellRendererState):GtkStateFlags;

  { Zeile entfernt  }
{$endif}
  { __GTK_CELL_RENDERER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_RENDERER : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_RENDERER:=gtk_cell_renderer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER(obj : longint) : longint;
  begin
    GTK_CELL_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER,GtkCellRenderer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_CLASS(klass : longint) : longint;
  begin
    GTK_CELL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_RENDERER,GtkCellRendererClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER(obj : longint) : longint;
  begin
    GTK_IS_CELL_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_CLASS(klass : longint) : longint;
  begin
    GTK_IS_CELL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_RENDERER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_GET_CLASS(obj : longint) : longint;
  begin
    GTK_CELL_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_RENDERER,GtkCellRendererClass);
  end;

  function gtk_cell_renderer_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_get_request_mode(cell:PGtkCellRenderer):GtkSizeRequestMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_preferred_width(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_preferred_height_for_width(cell:PGtkCellRenderer; widget:PGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_preferred_height(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_preferred_width_for_height(cell:PGtkCellRenderer; widget:PGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_preferred_size(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_aligned_area(cell:PGtkCellRenderer; widget:PGtkWidget; flags:GtkCellRendererState; cell_area:PGdkRectangle; aligned_area:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_snapshot(cell:PGtkCellRenderer; snapshot:PGtkSnapshot; widget:PGtkWidget; background_area:PGdkRectangle; cell_area:PGdkRectangle; 
              flags:GtkCellRendererState);
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_activate(cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
             cell_area:PGdkRectangle; flags:GtkCellRendererState):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_start_editing(cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
             cell_area:PGdkRectangle; flags:GtkCellRendererState):PGtkCellEditable;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_fixed_size(cell:PGtkCellRenderer; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_fixed_size(cell:PGtkCellRenderer; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_alignment(cell:PGtkCellRenderer; xalign:single; yalign:single);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_alignment(cell:PGtkCellRenderer; xalign:Psingle; yalign:Psingle);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_padding(cell:PGtkCellRenderer; xpad:longint; ypad:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_get_padding(cell:PGtkCellRenderer; xpad:Plongint; ypad:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_visible(cell:PGtkCellRenderer; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_get_visible(cell:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_sensitive(cell:PGtkCellRenderer; sensitive:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_get_sensitive(cell:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_is_activatable(cell:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_is_expander(cell:PGtkCellRenderer; is_expander:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_get_is_expander(cell:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_set_is_expanded(cell:PGtkCellRenderer; is_expanded:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_get_is_expanded(cell:PGtkCellRenderer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_stop_editing(cell:PGtkCellRenderer; canceled:gboolean);
  begin
    { You must implement this function }
  end;
  procedure _gtk_cell_renderer_calc_offset(cell:PGtkCellRenderer; cell_area:PGdkRectangle; direction:GtkTextDirection; width:longint; height:longint; 
              x_offset:Plongint; y_offset:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_get_state(cell:PGtkCellRenderer; widget:PGtkWidget; cell_state:GtkCellRendererState):GtkStateFlags;
  begin
    { You must implement this function }
  end;

