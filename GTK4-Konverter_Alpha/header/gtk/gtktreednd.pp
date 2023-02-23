
unit gtktreednd;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreednd.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreednd.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGdkContentProvider  = ^GdkContentProvider;
PGtkTreeDragDest  = ^GtkTreeDragDest;
PGtkTreeDragDestIface  = ^GtkTreeDragDestIface;
PGtkTreeDragSource  = ^GtkTreeDragSource;
PGtkTreeDragSourceIface  = ^GtkTreeDragSourceIface;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_DND_H__}
{$define __GTK_TREE_DND_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreemodel.h>}



function GTK_TYPE_TREE_ROW_DATA : longint; { return type might be wrong }


function gtk_tree_row_data_get_type:TGType;cdecl;external;
function GTK_TYPE_TREE_DRAG_SOURCE : longint; { return type might be wrong }

function GTK_TREE_DRAG_SOURCE(obj : longint) : longint;

function GTK_IS_TREE_DRAG_SOURCE(obj : longint) : longint;

function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj : longint) : longint;

type





  PGtkTreeDragSourceIface = ^TGtkTreeDragSourceIface;
  TGtkTreeDragSourceIface = record
      g_iface : TGTypeInterface;
      row_draggable : function (drag_source:PGtkTreeDragSource; path:PGtkTreePath):Tgboolean;cdecl;
      drag_data_get : function (drag_source:PGtkTreeDragSource; path:PGtkTreePath):PGdkContentProvider;cdecl;
      drag_data_delete : function (drag_source:PGtkTreeDragSource; path:PGtkTreePath):Tgboolean;cdecl;
    end;



function gtk_tree_drag_source_get_type:TGType;cdecl;external;


function gtk_tree_drag_source_row_draggable(drag_source:PGtkTreeDragSource; path:PGtkTreePath):Tgboolean;cdecl;external;


function gtk_tree_drag_source_drag_data_delete(drag_source:PGtkTreeDragSource; path:PGtkTreePath):Tgboolean;cdecl;external;


function gtk_tree_drag_source_drag_data_get(drag_source:PGtkTreeDragSource; path:PGtkTreePath):PGdkContentProvider;cdecl;external;
function GTK_TYPE_TREE_DRAG_DEST : longint; { return type might be wrong }

function GTK_TREE_DRAG_DEST(obj : longint) : longint;

function GTK_IS_TREE_DRAG_DEST(obj : longint) : longint;

function GTK_TREE_DRAG_DEST_GET_IFACE(obj : longint) : longint;

type





  PGtkTreeDragDestIface = ^TGtkTreeDragDestIface;
  TGtkTreeDragDestIface = record
      g_iface : TGTypeInterface;
      drag_data_received : function (drag_dest:PGtkTreeDragDest; dest:PGtkTreePath; value:PGValue):Tgboolean;cdecl;
      row_drop_possible : function (drag_dest:PGtkTreeDragDest; dest_path:PGtkTreePath; value:PGValue):Tgboolean;cdecl;
    end;



function gtk_tree_drag_dest_get_type:TGType;cdecl;external;


function gtk_tree_drag_dest_drag_data_received(drag_dest:PGtkTreeDragDest; dest:PGtkTreePath; value:PGValue):Tgboolean;cdecl;external;


function gtk_tree_drag_dest_row_drop_possible(drag_dest:PGtkTreeDragDest; dest_path:PGtkTreePath; value:PGValue):Tgboolean;cdecl;external;


function gtk_tree_create_row_drag_content(tree_model:PGtkTreeModel; path:PGtkTreePath):PGdkContentProvider;cdecl;external;

function gtk_tree_get_row_drag_data(value:PGValue; tree_model:PPGtkTreeModel; path:PPGtkTreePath):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_ROW_DATA : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_ROW_DATA:=gtk_tree_row_data_get_type;
  end;

function GTK_TYPE_TREE_DRAG_SOURCE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_DRAG_SOURCE:=gtk_tree_drag_source_get_type;
  end;

function GTK_TREE_DRAG_SOURCE(obj : longint) : longint;
begin
  GTK_TREE_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_DRAG_SOURCE,GtkTreeDragSource);
end;

function GTK_IS_TREE_DRAG_SOURCE(obj : longint) : longint;
begin
  GTK_IS_TREE_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_DRAG_SOURCE);
end;

function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_DRAG_SOURCE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_DRAG_SOURCE,GtkTreeDragSourceIface);
end;

function GTK_TYPE_TREE_DRAG_DEST : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_DRAG_DEST:=gtk_tree_drag_dest_get_type;
  end;

function GTK_TREE_DRAG_DEST(obj : longint) : longint;
begin
  GTK_TREE_DRAG_DEST:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_DRAG_DEST,GtkTreeDragDest);
end;

function GTK_IS_TREE_DRAG_DEST(obj : longint) : longint;
begin
  GTK_IS_TREE_DRAG_DEST:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_DRAG_DEST);
end;

function GTK_TREE_DRAG_DEST_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_DRAG_DEST_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_DRAG_DEST,GtkTreeDragDestIface);
end;


end.
