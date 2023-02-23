
unit gtktreestore;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreestore.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreestore.h
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
PGtkTreeStore  = ^GtkTreeStore;
PGtkTreeStoreClass  = ^GtkTreeStoreClass;
PGtkTreeStorePrivate  = ^GtkTreeStorePrivate;
PGType  = ^GType;
PGValue  = ^GValue;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_STORE_H__}
{$define __GTK_TREE_STORE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}
{$include <stdarg.h>}


function GTK_TYPE_TREE_STORE : longint; { return type might be wrong }

function GTK_TREE_STORE(obj : longint) : longint;

function GTK_TREE_STORE_CLASS(klass : longint) : longint;

function GTK_IS_TREE_STORE(obj : longint) : longint;

function GTK_IS_TREE_STORE_CLASS(klass : longint) : longint;

function GTK_TREE_STORE_GET_CLASS(obj : longint) : longint;

type
  PGtkTreeStore = ^TGtkTreeStore;
  TGtkTreeStore = record
      parent : TGObject;
      priv : PGtkTreeStorePrivate;
    end;


  PGtkTreeStoreClass = ^TGtkTreeStoreClass;
  TGtkTreeStoreClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_tree_store_get_type:TGType;cdecl;external;

function gtk_tree_store_new(n_columns:longint; args:array of const):PGtkTreeStore;cdecl;external;
function gtk_tree_store_new(n_columns:longint):PGtkTreeStore;cdecl;external;

function gtk_tree_store_newv(n_columns:longint; types:PGType):PGtkTreeStore;cdecl;external;

procedure gtk_tree_store_set_column_types(tree_store:PGtkTreeStore; n_columns:longint; types:PGType);cdecl;external;


procedure gtk_tree_store_set_value(tree_store:PGtkTreeStore; iter:PGtkTreeIter; column:longint; value:PGValue);cdecl;external;

procedure gtk_tree_store_set(tree_store:PGtkTreeStore; iter:PGtkTreeIter; args:array of const);cdecl;external;
procedure gtk_tree_store_set(tree_store:PGtkTreeStore; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_store_set_valuesv(tree_store:PGtkTreeStore; iter:PGtkTreeIter; columns:Plongint; values:PGValue; n_values:longint);cdecl;external;

procedure gtk_tree_store_set_valist(tree_store:PGtkTreeStore; iter:PGtkTreeIter; var_args:Tva_list);cdecl;external;

function gtk_tree_store_remove(tree_store:PGtkTreeStore; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_tree_store_insert(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint);cdecl;external;

procedure gtk_tree_store_insert_before(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; sibling:PGtkTreeIter);cdecl;external;

procedure gtk_tree_store_insert_after(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; sibling:PGtkTreeIter);cdecl;external;

procedure gtk_tree_store_insert_with_values(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint; args:array of const);cdecl;external;
procedure gtk_tree_store_insert_with_values(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint);cdecl;external;

procedure gtk_tree_store_insert_with_valuesv(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter; position:longint; columns:Plongint; 
            values:PGValue; n_values:longint);cdecl;external;

procedure gtk_tree_store_prepend(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter);cdecl;external;

procedure gtk_tree_store_append(tree_store:PGtkTreeStore; iter:PGtkTreeIter; parent:PGtkTreeIter);cdecl;external;

function gtk_tree_store_is_ancestor(tree_store:PGtkTreeStore; iter:PGtkTreeIter; descendant:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_store_iter_depth(tree_store:PGtkTreeStore; iter:PGtkTreeIter):longint;cdecl;external;

procedure gtk_tree_store_clear(tree_store:PGtkTreeStore);cdecl;external;

function gtk_tree_store_iter_is_valid(tree_store:PGtkTreeStore; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_tree_store_reorder(tree_store:PGtkTreeStore; parent:PGtkTreeIter; new_order:Plongint);cdecl;external;

procedure gtk_tree_store_swap(tree_store:PGtkTreeStore; a:PGtkTreeIter; b:PGtkTreeIter);cdecl;external;

procedure gtk_tree_store_move_before(tree_store:PGtkTreeStore; iter:PGtkTreeIter; position:PGtkTreeIter);cdecl;external;

procedure gtk_tree_store_move_after(tree_store:PGtkTreeStore; iter:PGtkTreeIter; position:PGtkTreeIter);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_STORE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_STORE:=gtk_tree_store_get_type;
  end;

function GTK_TREE_STORE(obj : longint) : longint;
begin
  GTK_TREE_STORE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_STORE,GtkTreeStore);
end;

function GTK_TREE_STORE_CLASS(klass : longint) : longint;
begin
  GTK_TREE_STORE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_STORE,GtkTreeStoreClass);
end;

function GTK_IS_TREE_STORE(obj : longint) : longint;
begin
  GTK_IS_TREE_STORE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_STORE);
end;

function GTK_IS_TREE_STORE_CLASS(klass : longint) : longint;
begin
  GTK_IS_TREE_STORE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_STORE);
end;

function GTK_TREE_STORE_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_STORE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_STORE,GtkTreeStoreClass);
end;


end.
