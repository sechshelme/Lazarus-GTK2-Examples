
unit gtktreemodelsort;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreemodelsort.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreemodelsort.h
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
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeModelSort  = ^GtkTreeModelSort;
PGtkTreeModelSortClass  = ^GtkTreeModelSortClass;
PGtkTreeModelSortPrivate  = ^GtkTreeModelSortPrivate;
PGtkTreePath  = ^GtkTreePath;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_MODEL_SORT_H__}
{$define __GTK_TREE_MODEL_SORT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}


function GTK_TYPE_TREE_MODEL_SORT : longint; { return type might be wrong }

function GTK_TREE_MODEL_SORT(obj : longint) : longint;

function GTK_TREE_MODEL_SORT_CLASS(klass : longint) : longint;

function GTK_IS_TREE_MODEL_SORT(obj : longint) : longint;

function GTK_IS_TREE_MODEL_SORT_CLASS(klass : longint) : longint;

function GTK_TREE_MODEL_SORT_GET_CLASS(obj : longint) : longint;

type

  PGtkTreeModelSort = ^TGtkTreeModelSort;
  TGtkTreeModelSort = record
      parent : TGObject;
      priv : PGtkTreeModelSortPrivate;
    end;


  PGtkTreeModelSortClass = ^TGtkTreeModelSortClass;
  TGtkTreeModelSortClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_tree_model_sort_get_type:TGType;cdecl;external;

function gtk_tree_model_sort_new_with_model(child_model:PGtkTreeModel):PGtkTreeModel;cdecl;external;

function gtk_tree_model_sort_get_model(tree_model:PGtkTreeModelSort):PGtkTreeModel;cdecl;external;

function gtk_tree_model_sort_convert_child_path_to_path(tree_model_sort:PGtkTreeModelSort; child_path:PGtkTreePath):PGtkTreePath;cdecl;external;

function gtk_tree_model_sort_convert_child_iter_to_iter(tree_model_sort:PGtkTreeModelSort; sort_iter:PGtkTreeIter; child_iter:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_model_sort_convert_path_to_child_path(tree_model_sort:PGtkTreeModelSort; sorted_path:PGtkTreePath):PGtkTreePath;cdecl;external;

procedure gtk_tree_model_sort_convert_iter_to_child_iter(tree_model_sort:PGtkTreeModelSort; child_iter:PGtkTreeIter; sorted_iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_model_sort_reset_default_sort_func(tree_model_sort:PGtkTreeModelSort);cdecl;external;

procedure gtk_tree_model_sort_clear_cache(tree_model_sort:PGtkTreeModelSort);cdecl;external;

function gtk_tree_model_sort_iter_is_valid(tree_model_sort:PGtkTreeModelSort; iter:PGtkTreeIter):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_MODEL_SORT : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL_SORT:=gtk_tree_model_sort_get_type;
  end;

function GTK_TREE_MODEL_SORT(obj : longint) : longint;
begin
  GTK_TREE_MODEL_SORT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL_SORT,GtkTreeModelSort);
end;

function GTK_TREE_MODEL_SORT_CLASS(klass : longint) : longint;
begin
  GTK_TREE_MODEL_SORT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_MODEL_SORT,GtkTreeModelSortClass);
end;

function GTK_IS_TREE_MODEL_SORT(obj : longint) : longint;
begin
  GTK_IS_TREE_MODEL_SORT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL_SORT);
end;

function GTK_IS_TREE_MODEL_SORT_CLASS(klass : longint) : longint;
begin
  GTK_IS_TREE_MODEL_SORT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_MODEL_SORT);
end;

function GTK_TREE_MODEL_SORT_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_MODEL_SORT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_MODEL_SORT,GtkTreeModelSortClass);
end;


end.
