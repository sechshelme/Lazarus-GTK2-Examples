
unit gtktreemodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreemodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreemodel.h
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
Pchar  = ^char;
PGObject  = ^GObject;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeModelFlags  = ^GtkTreeModelFlags;
PGtkTreeModelIface  = ^GtkTreeModelIface;
PGtkTreePath  = ^GtkTreePath;
PGtkTreeRowReference  = ^GtkTreeRowReference;
PGValue  = ^GValue;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_MODEL_H__}
{$define __GTK_TREE_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}


function GTK_TYPE_TREE_MODEL : longint; { return type might be wrong }

function GTK_TREE_MODEL(obj : longint) : longint;

function GTK_IS_TREE_MODEL(obj : longint) : longint;

function GTK_TREE_MODEL_GET_IFACE(obj : longint) : longint;

function GTK_TYPE_TREE_ITER : longint; { return type might be wrong }

function GTK_TYPE_TREE_PATH : longint; { return type might be wrong }

function GTK_TYPE_TREE_ROW_REFERENCE : longint; { return type might be wrong }

type



  TGtkTreeModelForeachFunc = function (model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; data:Tgpointer):Tgboolean;cdecl;


  PGtkTreeModelFlags = ^TGtkTreeModelFlags;
  TGtkTreeModelFlags = (GTK_TREE_MODEL_ITERS_PERSIST := 1 shl 0,GTK_TREE_MODEL_LIST_ONLY := 1 shl 1
    );

  PGtkTreeIter = ^TGtkTreeIter;
  TGtkTreeIter = record
      stamp : longint;
      user_data : Tgpointer;
      user_data2 : Tgpointer;
      user_data3 : Tgpointer;
    end;






  PGtkTreeModelIface = ^TGtkTreeModelIface;
  TGtkTreeModelIface = record
      g_iface : TGTypeInterface;
      row_changed : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;
      row_inserted : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;
      row_has_child_toggled : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;
      row_deleted : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath);cdecl;
      rows_reordered : procedure (tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);cdecl;
      get_flags : function (tree_model:PGtkTreeModel):TGtkTreeModelFlags;cdecl;
      get_n_columns : function (tree_model:PGtkTreeModel):longint;cdecl;
      get_column_type : function (tree_model:PGtkTreeModel; index_:longint):TGType;cdecl;
      get_iter : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; path:PGtkTreePath):Tgboolean;cdecl;
      get_path : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):PGtkTreePath;cdecl;
      get_value : procedure (tree_model:PGtkTreeModel; iter:PGtkTreeIter; column:longint; value:PGValue);cdecl;
      iter_next : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;
      iter_previous : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;
      iter_children : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter):Tgboolean;cdecl;
      iter_has_child : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;
      iter_n_children : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter):longint;cdecl;
      iter_nth_child : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter; n:longint):Tgboolean;cdecl;
      iter_parent : function (tree_model:PGtkTreeModel; iter:PGtkTreeIter; child:PGtkTreeIter):Tgboolean;cdecl;
      ref_node : procedure (tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;
      unref_node : procedure (tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;
    end;




function gtk_tree_path_new:PGtkTreePath;cdecl;external;

function gtk_tree_path_new_from_string(path:Pchar):PGtkTreePath;cdecl;external;

function gtk_tree_path_new_from_indices(first_index:longint; args:array of const):PGtkTreePath;cdecl;external;
function gtk_tree_path_new_from_indices(first_index:longint):PGtkTreePath;cdecl;external;

function gtk_tree_path_new_from_indicesv(indices:Plongint; length:Tgsize):PGtkTreePath;cdecl;external;

function gtk_tree_path_to_string(path:PGtkTreePath):Pchar;cdecl;external;

function gtk_tree_path_new_first:PGtkTreePath;cdecl;external;

procedure gtk_tree_path_append_index(path:PGtkTreePath; index_:longint);cdecl;external;

procedure gtk_tree_path_prepend_index(path:PGtkTreePath; index_:longint);cdecl;external;

function gtk_tree_path_get_depth(path:PGtkTreePath):longint;cdecl;external;

function gtk_tree_path_get_indices(path:PGtkTreePath):Plongint;cdecl;external;

function gtk_tree_path_get_indices_with_depth(path:PGtkTreePath; depth:Plongint):Plongint;cdecl;external;

procedure gtk_tree_path_free(path:PGtkTreePath);cdecl;external;

function gtk_tree_path_copy(path:PGtkTreePath):PGtkTreePath;cdecl;external;

function gtk_tree_path_get_type:TGType;cdecl;external;

function gtk_tree_path_compare(a:PGtkTreePath; b:PGtkTreePath):longint;cdecl;external;

procedure gtk_tree_path_next(path:PGtkTreePath);cdecl;external;

function gtk_tree_path_prev(path:PGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_path_up(path:PGtkTreePath):Tgboolean;cdecl;external;

procedure gtk_tree_path_down(path:PGtkTreePath);cdecl;external;

function gtk_tree_path_is_ancestor(path:PGtkTreePath; descendant:PGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_path_is_descendant(path:PGtkTreePath; ancestor:PGtkTreePath):Tgboolean;cdecl;external;


function gtk_tree_row_reference_get_type:TGType;cdecl;external;

function gtk_tree_row_reference_new(model:PGtkTreeModel; path:PGtkTreePath):PGtkTreeRowReference;cdecl;external;

function gtk_tree_row_reference_new_proxy(proxy:PGObject; model:PGtkTreeModel; path:PGtkTreePath):PGtkTreeRowReference;cdecl;external;

function gtk_tree_row_reference_get_path(reference:PGtkTreeRowReference):PGtkTreePath;cdecl;external;

function gtk_tree_row_reference_get_model(reference:PGtkTreeRowReference):PGtkTreeModel;cdecl;external;

function gtk_tree_row_reference_valid(reference:PGtkTreeRowReference):Tgboolean;cdecl;external;

function gtk_tree_row_reference_copy(reference:PGtkTreeRowReference):PGtkTreeRowReference;cdecl;external;

procedure gtk_tree_row_reference_free(reference:PGtkTreeRowReference);cdecl;external;


procedure gtk_tree_row_reference_inserted(proxy:PGObject; path:PGtkTreePath);cdecl;external;

procedure gtk_tree_row_reference_deleted(proxy:PGObject; path:PGtkTreePath);cdecl;external;

procedure gtk_tree_row_reference_reordered(proxy:PGObject; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);cdecl;external;


function gtk_tree_iter_copy(iter:PGtkTreeIter):PGtkTreeIter;cdecl;external;

procedure gtk_tree_iter_free(iter:PGtkTreeIter);cdecl;external;

function gtk_tree_iter_get_type:TGType;cdecl;external;

function gtk_tree_model_get_type:TGType;cdecl;external;

function gtk_tree_model_get_flags(tree_model:PGtkTreeModel):TGtkTreeModelFlags;cdecl;external;

function gtk_tree_model_get_n_columns(tree_model:PGtkTreeModel):longint;cdecl;external;

function gtk_tree_model_get_column_type(tree_model:PGtkTreeModel; index_:longint):TGType;cdecl;external;


function gtk_tree_model_get_iter(tree_model:PGtkTreeModel; iter:PGtkTreeIter; path:PGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_model_get_iter_from_string(tree_model:PGtkTreeModel; iter:PGtkTreeIter; path_string:Pchar):Tgboolean;cdecl;external;

function gtk_tree_model_get_string_from_iter(tree_model:PGtkTreeModel; iter:PGtkTreeIter):Pchar;cdecl;external;

function gtk_tree_model_get_iter_first(tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_model_get_path(tree_model:PGtkTreeModel; iter:PGtkTreeIter):PGtkTreePath;cdecl;external;

procedure gtk_tree_model_get_value(tree_model:PGtkTreeModel; iter:PGtkTreeIter; column:longint; value:PGValue);cdecl;external;

function gtk_tree_model_iter_previous(tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_model_iter_next(tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_model_iter_children(tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_model_iter_has_child(tree_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_model_iter_n_children(tree_model:PGtkTreeModel; iter:PGtkTreeIter):longint;cdecl;external;

function gtk_tree_model_iter_nth_child(tree_model:PGtkTreeModel; iter:PGtkTreeIter; parent:PGtkTreeIter; n:longint):Tgboolean;cdecl;external;

function gtk_tree_model_iter_parent(tree_model:PGtkTreeModel; iter:PGtkTreeIter; child:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_tree_model_ref_node(tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_unref_node(tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_get(tree_model:PGtkTreeModel; iter:PGtkTreeIter; args:array of const);cdecl;external;
procedure gtk_tree_model_get(tree_model:PGtkTreeModel; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_get_valist(tree_model:PGtkTreeModel; iter:PGtkTreeIter; var_args:Tva_list);cdecl;external;

procedure gtk_tree_model_foreach(model:PGtkTreeModel; func:TGtkTreeModelForeachFunc; user_data:Tgpointer);cdecl;external;


procedure gtk_tree_model_row_changed(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_row_inserted(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_row_has_child_toggled(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_row_deleted(tree_model:PGtkTreeModel; path:PGtkTreePath);cdecl;external;

procedure gtk_tree_model_rows_reordered(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint);cdecl;external;

procedure gtk_tree_model_rows_reordered_with_length(tree_model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; new_order:Plongint; length:longint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL:=gtk_tree_model_get_type;
  end;

function GTK_TREE_MODEL(obj : longint) : longint;
begin
  GTK_TREE_MODEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL,GtkTreeModel);
end;

function GTK_IS_TREE_MODEL(obj : longint) : longint;
begin
  GTK_IS_TREE_MODEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL);
end;

function GTK_TREE_MODEL_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_MODEL_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_MODEL,GtkTreeModelIface);
end;

function GTK_TYPE_TREE_ITER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_ITER:=gtk_tree_iter_get_type;
  end;

function GTK_TYPE_TREE_PATH : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_PATH:=gtk_tree_path_get_type;
  end;

function GTK_TYPE_TREE_ROW_REFERENCE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_ROW_REFERENCE:=gtk_tree_row_reference_get_type;
  end;


end.
