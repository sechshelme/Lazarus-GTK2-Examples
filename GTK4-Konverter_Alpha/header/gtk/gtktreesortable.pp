
unit gtktreesortable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreesortable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreesortable.h
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
PGtkSortType  = ^GtkSortType;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeSortable  = ^GtkTreeSortable;
PGtkTreeSortableIface  = ^GtkTreeSortableIface;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_SORTABLE_H__}
{$define __GTK_TREE_SORTABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktreemodel.h>}


function GTK_TYPE_TREE_SORTABLE : longint; { return type might be wrong }

function GTK_TREE_SORTABLE(obj : longint) : longint;

function GTK_IS_TREE_SORTABLE(obj : longint) : longint;

function GTK_TREE_SORTABLE_GET_IFACE(obj : longint) : longint;


const
  GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = -(1);  

  GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = -(2);  
type



  TGtkTreeIterCompareFunc = function (model:PGtkTreeModel; a:PGtkTreeIter; b:PGtkTreeIter; user_data:Tgpointer):longint;cdecl;





  PGtkTreeSortableIface = ^TGtkTreeSortableIface;
  TGtkTreeSortableIface = record
      g_iface : TGTypeInterface;cdecl;
      sort_column_changed : procedure (sortable:PGtkTreeSortable);cdecl;
      get_sort_column_id : function (sortable:PGtkTreeSortable; sort_column_id:Plongint; order:PGtkSortType):Tgboolean;cdecl;
      set_sort_column_id : procedure (sortable:PGtkTreeSortable; sort_column_id:longint; order:TGtkSortType);cdecl;
      set_sort_func : procedure (sortable:PGtkTreeSortable; sort_column_id:longint; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      set_default_sort_func : procedure (sortable:PGtkTreeSortable; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      has_default_sort_func : function (sortable:PGtkTreeSortable):Tgboolean;cdecl;
    end;



function gtk_tree_sortable_get_type:TGType;cdecl;external;

procedure gtk_tree_sortable_sort_column_changed(sortable:PGtkTreeSortable);cdecl;external;

function gtk_tree_sortable_get_sort_column_id(sortable:PGtkTreeSortable; sort_column_id:Plongint; order:PGtkSortType):Tgboolean;cdecl;external;

procedure gtk_tree_sortable_set_sort_column_id(sortable:PGtkTreeSortable; sort_column_id:longint; order:TGtkSortType);cdecl;external;

procedure gtk_tree_sortable_set_sort_func(sortable:PGtkTreeSortable; sort_column_id:longint; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_tree_sortable_set_default_sort_func(sortable:PGtkTreeSortable; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

function gtk_tree_sortable_has_default_sort_func(sortable:PGtkTreeSortable):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_SORTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_SORTABLE:=gtk_tree_sortable_get_type;
  end;

function GTK_TREE_SORTABLE(obj : longint) : longint;
begin
  GTK_TREE_SORTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_SORTABLE,GtkTreeSortable);
end;

function GTK_IS_TREE_SORTABLE(obj : longint) : longint;
begin
  GTK_IS_TREE_SORTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_SORTABLE);
end;

function GTK_TREE_SORTABLE_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_SORTABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_SORTABLE,GtkTreeSortableIface);
end;


end.
