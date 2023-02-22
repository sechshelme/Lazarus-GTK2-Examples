
  Type
  PGdkContentProvider  = ^GdkContentProvider;
  PGtkTreeDragDest  = ^GtkTreeDragDest;
  PGtkTreeDragSource  = ^GtkTreeDragSource;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreePath  = ^GtkTreePath;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktreednd.h
   * Copyright (C) 2001  Red Hat, Inc.
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
{$ifndef __GTK_TREE_DND_H__}
{$define __GTK_TREE_DND_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreemodel.h>}
  {*
   * GTK_TYPE_TREE_ROW_DATA:
   * Magic `GType` to use when dragging rows in a `GtkTreeModel`.
   *
   * Data in this format will be provided by gtk_tree_create_row_drag_content()
   * and can be consumed via gtk_tree_get_row_drag_data().
    }

  { was #define dname def_expr }
  function GTK_TYPE_TREE_ROW_DATA : longint; { return type might be wrong }

(* error 
GType             gtk_tree_row_data_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_DRAG_SOURCE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_SOURCE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_DRAG_SOURCE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj : longint) : longint;  


  type
    _GtkTreeDragSource = GtkTreeDragSource;
  { Dummy typedef  }
    _GtkTreeDragSourceIface = GtkTreeDragSourceIface;
  {*
   * GtkTreeDragSourceIface:
   * @row_draggable: Asks the `GtkTreeDragSource` whether a particular
   *    row can be used as the source of a DND operation.
   * @drag_data_get: Asks the `GtkTreeDragSource` to fill in
   *    selection_data with a representation of the row at path.
   * @drag_data_delete: Asks the `GtkTreeDragSource` to delete the row at
   *    path, because it was moved somewhere else via drag-and-drop.
    }
  {< private > }
  {< public > }
  { VTable - not signals  }
    _GtkTreeDragSourceIface = record
        g_iface : GTypeInterface;
        row_draggable : function (drag_source:PGtkTreeDragSource; path:PGtkTreePath):gboolean;cdecl;
        drag_data_get : function (drag_source:PGtkTreeDragSource; path:PGtkTreePath):PGdkContentProvider;cdecl;
        drag_data_delete : function (drag_source:PGtkTreeDragSource; path:PGtkTreePath):gboolean;cdecl;
      end;

(* error 
GType           gtk_tree_drag_source_get_type   (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
  { Returns whether the given row can be dragged  }

  function gtk_tree_drag_source_row_draggable(drag_source:PGtkTreeDragSource; path:PGtkTreePath):gboolean;

  { Deletes the given row, or returns FALSE if it can't  }
  function gtk_tree_drag_source_drag_data_delete(drag_source:PGtkTreeDragSource; path:PGtkTreePath):gboolean;

  { Fills in selection_data with type selection_data->target based on
   * the row denoted by path, returns TRUE if it does anything
    }
  function gtk_tree_drag_source_drag_data_get(drag_source:PGtkTreeDragSource; path:PGtkTreePath):^GdkContentProvider;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_DRAG_DEST : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_DEST(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_DRAG_DEST(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_DEST_GET_IFACE(obj : longint) : longint;  


  type
    _GtkTreeDragDest = GtkTreeDragDest;
  { Dummy typedef  }
    _GtkTreeDragDestIface = GtkTreeDragDestIface;
  {*
   * GtkTreeDragDestIface:
   * @drag_data_received: Asks the `GtkTreeDragDest` to insert a row
   *    before the path dest, deriving the contents of the row from
   *    selection_data.
   * @row_drop_possible: Determines whether a drop is possible before
   *    the given dest_path, at the same depth as dest_path.
    }
  {< private > }
  {< public > }
  { VTable - not signals  }
(* Const before type ignored *)
(* Const before type ignored *)
    _GtkTreeDragDestIface = record
        g_iface : GTypeInterface;
        drag_data_received : function (drag_dest:PGtkTreeDragDest; dest:PGtkTreePath; value:PGValue):gboolean;cdecl;
        row_drop_possible : function (drag_dest:PGtkTreeDragDest; dest_path:PGtkTreePath; value:PGValue):gboolean;cdecl;
      end;

(* error 
GType           gtk_tree_drag_dest_get_type   (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
  { Inserts a row before dest which contains data in selection_data,
   * or returns FALSE if it can't
    }
(* Const before type ignored *)

  function gtk_tree_drag_dest_drag_data_received(drag_dest:PGtkTreeDragDest; dest:PGtkTreePath; value:PGValue):gboolean;

  { Returns TRUE if we can drop before path; path may not exist.  }
(* Const before type ignored *)
  function gtk_tree_drag_dest_row_drop_possible(drag_dest:PGtkTreeDragDest; dest_path:PGtkTreePath; value:PGValue):gboolean;

  { The selection data would normally have target type GTK_TREE_MODEL_ROW in this
   * case. If the target is wrong these functions return FALSE.
    }
  function gtk_tree_create_row_drag_content(tree_model:PGtkTreeModel; path:PGtkTreePath):^GdkContentProvider;

(* Const before type ignored *)
  function gtk_tree_get_row_drag_data(value:PGValue; tree_model:PPGtkTreeModel; path:PPGtkTreePath):gboolean;

{$endif}
  { __GTK_TREE_DND_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TREE_ROW_DATA : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_ROW_DATA:=gtk_tree_row_data_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_TREE_DRAG_SOURCE : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_DRAG_SOURCE:=gtk_tree_drag_source_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_SOURCE(obj : longint) : longint;
  begin
    GTK_TREE_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_DRAG_SOURCE,GtkTreeDragSource);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_DRAG_SOURCE(obj : longint) : longint;
  begin
    GTK_IS_TREE_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_DRAG_SOURCE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj : longint) : longint;
  begin
    GTK_TREE_DRAG_SOURCE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_DRAG_SOURCE,GtkTreeDragSourceIface);
  end;

  function gtk_tree_drag_source_row_draggable(drag_source:PGtkTreeDragSource; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_drag_source_drag_data_delete(drag_source:PGtkTreeDragSource; path:PGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_drag_source_drag_data_get(drag_source:PGtkTreeDragSource; path:PGtkTreePath):PGdkContentProvider;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_TREE_DRAG_DEST : longint; { return type might be wrong }
    begin
      GTK_TYPE_TREE_DRAG_DEST:=gtk_tree_drag_dest_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_DEST(obj : longint) : longint;
  begin
    GTK_TREE_DRAG_DEST:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_DRAG_DEST,GtkTreeDragDest);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TREE_DRAG_DEST(obj : longint) : longint;
  begin
    GTK_IS_TREE_DRAG_DEST:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_DRAG_DEST);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TREE_DRAG_DEST_GET_IFACE(obj : longint) : longint;
  begin
    GTK_TREE_DRAG_DEST_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_DRAG_DEST,GtkTreeDragDestIface);
  end;

  function gtk_tree_drag_dest_drag_data_received(drag_dest:PGtkTreeDragDest; dest:PGtkTreePath; value:PGValue):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_drag_dest_row_drop_possible(drag_dest:PGtkTreeDragDest; dest_path:PGtkTreePath; value:PGValue):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_tree_create_row_drag_content(tree_model:PGtkTreeModel; path:PGtkTreePath):PGdkContentProvider;
  begin
    { You must implement this function }
  end;
  function gtk_tree_get_row_drag_data(value:PGValue; tree_model:PPGtkTreeModel; path:PPGtkTreePath):gboolean;
  begin
    { You must implement this function }
  end;

