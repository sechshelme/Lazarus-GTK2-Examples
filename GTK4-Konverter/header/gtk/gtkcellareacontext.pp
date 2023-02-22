
  Type
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellAreaContext  = ^GtkCellAreaContext;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellareacontext.h
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
{$ifndef __GTK_CELL_AREA_CONTEXT_H__}
{$define __GTK_CELL_AREA_CONTEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellarea.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CELL_AREA_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj : longint) : longint;  


  type
    _GtkCellAreaContextPrivate = GtkCellAreaContextPrivate;
    _GtkCellAreaContextClass = GtkCellAreaContextClass;
  {< private > }
    _GtkCellAreaContext = record
        parent_instance : GObject;
      end;

  {*
   * GtkCellAreaContextClass:
   * @allocate: This tells the context that an allocation width or height
   *   (or both) have been decided for a group of rows. The context should
   *   store any allocations for internally aligned cells at this point so
   *   that they dont need to be recalculated at gtk_cell_area_render() time.
   * @reset: Clear any previously stored information about requested and
   *   allocated sizes for the context.
   * @get_preferred_height_for_width: Returns the aligned height for the given
   *   width that context must store while collecting sizes for it’s rows.
   * @get_preferred_width_for_height: Returns the aligned width for the given
   *   height that context must store while collecting sizes for it’s rows.
    }
  {< private > }
  {< public > }
  {< private > }
    _GtkCellAreaContextClass = record
        parent_class : GObjectClass;
        allocate : procedure (context:PGtkCellAreaContext; width:longint; height:longint);cdecl;
        reset : procedure (context:PGtkCellAreaContext);cdecl;
        get_preferred_height_for_width : procedure (context:PGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;
        get_preferred_width_for_height : procedure (context:PGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_cell_area_context_get_type:GType;

  { Main apis  }
  { Zeile entfernt  }
  function gtk_cell_area_context_get_area(context:PGtkCellAreaContext):^GtkCellArea;

  { Zeile entfernt  }
  procedure gtk_cell_area_context_allocate(context:PGtkCellAreaContext; width:longint; height:longint);

  { Zeile entfernt  }
  procedure gtk_cell_area_context_reset(context:PGtkCellAreaContext);

  { Apis for GtkCellArea clients to consult cached values
   * for a series of GtkTreeModel rows
    }
  { Zeile entfernt  }
  procedure gtk_cell_area_context_get_preferred_width(context:PGtkCellAreaContext; minimum_width:Plongint; natural_width:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_area_context_get_preferred_height(context:PGtkCellAreaContext; minimum_height:Plongint; natural_height:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_area_context_get_preferred_height_for_width(context:PGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_area_context_get_preferred_width_for_height(context:PGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);

  { Zeile entfernt  }
  procedure gtk_cell_area_context_get_allocation(context:PGtkCellAreaContext; width:Plongint; height:Plongint);

  { Apis for GtkCellArea implementations to update cached values
   * for multiple GtkTreeModel rows
    }
  { Zeile entfernt  }
  procedure gtk_cell_area_context_push_preferred_width(context:PGtkCellAreaContext; minimum_width:longint; natural_width:longint);

  { Zeile entfernt  }
  procedure gtk_cell_area_context_push_preferred_height(context:PGtkCellAreaContext; minimum_height:longint; natural_height:longint);

  { Zeile entfernt  }
{$endif}
  { __GTK_CELL_AREA_CONTEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_AREA_CONTEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_AREA_CONTEXT:=gtk_cell_area_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CONTEXT(obj : longint) : longint;
  begin
    GTK_CELL_AREA_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;
  begin
    GTK_CELL_AREA_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContextClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_CONTEXT(obj : longint) : longint;
  begin
    GTK_IS_CELL_AREA_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;
  begin
    GTK_IS_CELL_AREA_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_AREA_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj : longint) : longint;
  begin
    GTK_CELL_AREA_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContextClass);
  end;

  function gtk_cell_area_context_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_cell_area_context_get_area(context:PGtkCellAreaContext):PGtkCellArea;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_allocate(context:PGtkCellAreaContext; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_reset(context:PGtkCellAreaContext);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_get_preferred_width(context:PGtkCellAreaContext; minimum_width:Plongint; natural_width:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_get_preferred_height(context:PGtkCellAreaContext; minimum_height:Plongint; natural_height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_get_preferred_height_for_width(context:PGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_get_preferred_width_for_height(context:PGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_get_allocation(context:PGtkCellAreaContext; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_push_preferred_width(context:PGtkCellAreaContext; minimum_width:longint; natural_width:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_area_context_push_preferred_height(context:PGtkCellAreaContext; minimum_height:longint; natural_height:longint);
  begin
    { You must implement this function }
  end;

