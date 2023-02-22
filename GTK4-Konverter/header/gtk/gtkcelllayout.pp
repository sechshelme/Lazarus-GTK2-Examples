
  Type
  Pchar  = ^char;
  PGList  = ^GList;
  PGObject  = ^GObject;
  Pgpointer  = ^gpointer;
  PGtkBuildable  = ^GtkBuildable;
  PGtkBuildableParser  = ^GtkBuildableParser;
  PGtkBuilder  = ^GtkBuilder;
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellLayout  = ^GtkCellLayout;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcelllayout.h
   * Copyright (C) 2003  Kristian Rietveld  <kris@gtk.org>
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
{$ifndef __GTK_CELL_LAYOUT_H__}
{$define __GTK_CELL_LAYOUT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtkbuildable.h>}
{$include <gtk/gtkbuilder.h>}

  { was #define dname def_expr }
  function GTK_TYPE_CELL_LAYOUT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_LAYOUT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_LAYOUT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_LAYOUT_GET_IFACE(obj : longint) : longint;  


  type
    _GtkCellLayout = GtkCellLayout;
  { dummy typedef  }
    _GtkCellLayoutIface = GtkCellLayoutIface;
  { keep in sync with GtkTreeCellDataFunc  }
  {*
   * GtkCellLayoutDataFunc:
   * @cell_layout: a `GtkCellLayout`
   * @cell: the cell renderer whose value is to be set
   * @tree_model: the model
   * @iter: a `GtkTreeIter` indicating the row to set the value for
   * @data: (closure): user data passed to gtk_cell_layout_set_cell_data_func()
   *
   * A function which should set the value of @cell_layout’s cell renderer(s)
   * as appropriate. 
    }

    GtkCellLayoutDataFunc = procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; tree_model:PGtkTreeModel; iter:PGtkTreeIter; data:gpointer);cdecl;
  {*
   * GtkCellLayoutIface:
   * @pack_start: Packs the cell into the beginning of cell_layout.
   * @pack_end: Adds the cell to the end of cell_layout.
   * @clear: Unsets all the mappings on all renderers on cell_layout and
   *    removes all renderers from cell_layout.
   * @add_attribute: Adds an attribute mapping to the list in
   *    cell_layout.
   * @set_cell_data_func: Sets the `GtkCellLayout`DataFunc to use for
   *    cell_layout.
   * @clear_attributes: Clears all existing attributes previously set
   *    with gtk_cell_layout_set_attributes().
   * @reorder: Re-inserts cell at position.
   * @get_cells: Get the cell renderers which have been added to
   *    cell_layout.
   * @get_area: Get the underlying `GtkCellArea` which might be
   *    cell_layout if called on a `GtkCellArea` or might be NULL if no
   *    `GtkCellArea` is used by cell_layout.
    }
  {< private > }
  {< public > }
  { Virtual Table  }
(* Const before type ignored *)
    _GtkCellLayoutIface = record
        g_iface : GTypeInterface;cdecl;
        pack_start : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:gboolean);cdecl;
        pack_end : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:gboolean);cdecl;
        clear : procedure (cell_layout:PGtkCellLayout);cdecl;
        add_attribute : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; attribute:Pchar; column:longint);cdecl;
        set_cell_data_func : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; func:GtkCellLayoutDataFunc; func_data:gpointer; destroy:GDestroyNotify);cdecl;
        clear_attributes : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer);cdecl;
        reorder : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; position:longint);cdecl;
        get_cells : function (cell_layout:PGtkCellLayout):PGList;cdecl;
        get_area : function (cell_layout:PGtkCellLayout):PGtkCellArea;cdecl;
      end;

(* error 
GType gtk_cell_layout_get_type           (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  procedure gtk_cell_layout_pack_start(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:gboolean);

  procedure gtk_cell_layout_pack_end(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:gboolean);

  function gtk_cell_layout_get_cells(cell_layout:PGtkCellLayout):^GList;

  procedure gtk_cell_layout_clear(cell_layout:PGtkCellLayout);

(* error 
                                          ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : pointer;
(* Const before type ignored *)

  procedure gtk_cell_layout_add_attribute(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; attribute:Pchar; column:longint);

  procedure gtk_cell_layout_set_cell_data_func(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; func:GtkCellLayoutDataFunc; func_data:gpointer; destroy:GDestroyNotify);

  procedure gtk_cell_layout_clear_attributes(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer);

  procedure gtk_cell_layout_reorder(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; position:longint);

  function gtk_cell_layout_get_area(cell_layout:PGtkCellLayout):^GtkCellArea;

(* Const before type ignored *)
  function _gtk_cell_layout_buildable_custom_tag_start(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; parser:PGtkBuildableParser; 
             data:Pgpointer):gboolean;

(* Const before type ignored *)
  function _gtk_cell_layout_buildable_custom_tag_end(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Pgpointer):gboolean;

(* Const before type ignored *)
  procedure _gtk_cell_layout_buildable_add_child(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; _type:Pchar);

{$endif}
  { __GTK_CELL_LAYOUT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_LAYOUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_LAYOUT:=gtk_cell_layout_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_LAYOUT(obj : longint) : longint;
  begin
    GTK_CELL_LAYOUT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_LAYOUT,GtkCellLayout);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_LAYOUT(obj : longint) : longint;
  begin
    GTK_IS_CELL_LAYOUT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_LAYOUT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_LAYOUT_GET_IFACE(obj : longint) : longint;
  begin
    GTK_CELL_LAYOUT_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_CELL_LAYOUT,GtkCellLayoutIface);
  end;

  procedure gtk_cell_layout_pack_start(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_layout_pack_end(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_layout_get_cells(cell_layout:PGtkCellLayout):PGList;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_layout_clear(cell_layout:PGtkCellLayout);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_layout_add_attribute(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; attribute:Pchar; column:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_layout_set_cell_data_func(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; func:GtkCellLayoutDataFunc; func_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_layout_clear_attributes(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_layout_reorder(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; position:longint);
  begin
    { You must implement this function }
  end;
  function gtk_cell_layout_get_area(cell_layout:PGtkCellLayout):PGtkCellArea;
  begin
    { You must implement this function }
  end;
  function _gtk_cell_layout_buildable_custom_tag_start(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; parser:PGtkBuildableParser; 
             data:Pgpointer):gboolean;
  begin
    { You must implement this function }
  end;
  function _gtk_cell_layout_buildable_custom_tag_end(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Pgpointer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure _gtk_cell_layout_buildable_add_child(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; _type:Pchar);
  begin
    { You must implement this function }
  end;

