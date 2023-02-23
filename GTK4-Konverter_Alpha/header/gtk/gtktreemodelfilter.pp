
unit gtktreemodelfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreemodelfilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreemodelfilter.h
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
PGtkTreeModelFilter  = ^GtkTreeModelFilter;
PGtkTreeModelFilterClass  = ^GtkTreeModelFilterClass;
PGtkTreeModelFilterPrivate  = ^GtkTreeModelFilterPrivate;
PGtkTreePath  = ^GtkTreePath;
PGType  = ^GType;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_MODEL_FILTER_H__}
{$define __GTK_TREE_MODEL_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreemodel.h>}


function GTK_TYPE_TREE_MODEL_FILTER : longint; { return type might be wrong }

function GTK_TREE_MODEL_FILTER(obj : longint) : longint;

function GTK_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;

function GTK_IS_TREE_MODEL_FILTER(obj : longint) : longint;

function GTK_IS_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;

function GTK_TREE_MODEL_FILTER_GET_CLASS(obj : longint) : longint;


type

  TGtkTreeModelFilterVisibleFunc = function (model:PGtkTreeModel; iter:PGtkTreeIter; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeModelFilterModifyFunc = procedure (model:PGtkTreeModel; iter:PGtkTreeIter; value:PGValue; column:longint; data:Tgpointer);cdecl;

  PGtkTreeModelFilter = ^TGtkTreeModelFilter;
  TGtkTreeModelFilter = record
      parent : TGObject;cdecl;
      priv : PGtkTreeModelFilterPrivate;
    end;


  PGtkTreeModelFilterClass = ^TGtkTreeModelFilterClass;
  TGtkTreeModelFilterClass = record
      parent_class : TGObjectClass;
      visible : function (self:PGtkTreeModelFilter; child_model:PGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;
      modify : procedure (self:PGtkTreeModelFilter; child_model:PGtkTreeModel; iter:PGtkTreeIter; value:PGValue; column:longint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;




function gtk_tree_model_filter_get_type:TGType;cdecl;external;

function gtk_tree_model_filter_new(child_model:PGtkTreeModel; root:PGtkTreePath):PGtkTreeModel;cdecl;external;

procedure gtk_tree_model_filter_set_visible_func(filter:PGtkTreeModelFilter; func:TGtkTreeModelFilterVisibleFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_tree_model_filter_set_modify_func(filter:PGtkTreeModelFilter; n_columns:longint; types:PGType; func:TGtkTreeModelFilterModifyFunc; data:Tgpointer; 
            destroy:TGDestroyNotify);cdecl;external;

procedure gtk_tree_model_filter_set_visible_column(filter:PGtkTreeModelFilter; column:longint);cdecl;external;

function gtk_tree_model_filter_get_model(filter:PGtkTreeModelFilter):PGtkTreeModel;cdecl;external;


function gtk_tree_model_filter_convert_child_iter_to_iter(filter:PGtkTreeModelFilter; filter_iter:PGtkTreeIter; child_iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_tree_model_filter_convert_iter_to_child_iter(filter:PGtkTreeModelFilter; child_iter:PGtkTreeIter; filter_iter:PGtkTreeIter);cdecl;external;

function gtk_tree_model_filter_convert_child_path_to_path(filter:PGtkTreeModelFilter; child_path:PGtkTreePath):PGtkTreePath;cdecl;external;

function gtk_tree_model_filter_convert_path_to_child_path(filter:PGtkTreeModelFilter; filter_path:PGtkTreePath):PGtkTreePath;cdecl;external;


procedure gtk_tree_model_filter_refilter(filter:PGtkTreeModelFilter);cdecl;external;

procedure gtk_tree_model_filter_clear_cache(filter:PGtkTreeModelFilter);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_MODEL_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL_FILTER:=gtk_tree_model_filter_get_type;
  end;

function GTK_TREE_MODEL_FILTER(obj : longint) : longint;
begin
  GTK_TREE_MODEL_FILTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL_FILTER,GtkTreeModelFilter);
end;

function GTK_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;
begin
  GTK_TREE_MODEL_FILTER_CLASS:=G_TYPE_CHECK_CLASS_CAST(vtable,GTK_TYPE_TREE_MODEL_FILTER,GtkTreeModelFilterClass);
end;

function GTK_IS_TREE_MODEL_FILTER(obj : longint) : longint;
begin
  GTK_IS_TREE_MODEL_FILTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL_FILTER);
end;

function GTK_IS_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;
begin
  GTK_IS_TREE_MODEL_FILTER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(vtable,GTK_TYPE_TREE_MODEL_FILTER);
end;

function GTK_TREE_MODEL_FILTER_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_MODEL_FILTER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_MODEL_FILTER,GtkTreeModelFilterClass);
end;


end.
