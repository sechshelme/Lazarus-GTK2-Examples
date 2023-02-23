
unit gtkliststore;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkliststore.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkliststore.h
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
PGtkListStore  = ^GtkListStore;
PGtkListStoreClass  = ^GtkListStoreClass;
PGtkListStorePrivate  = ^GtkListStorePrivate;
PGtkTreeIter  = ^GtkTreeIter;
PGType  = ^GType;
PGValue  = ^GValue;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_LIST_STORE_H__}
{$define __GTK_LIST_STORE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}


function GTK_TYPE_LIST_STORE : longint; { return type might be wrong }

function GTK_LIST_STORE(obj : longint) : longint;

function GTK_LIST_STORE_CLASS(klass : longint) : longint;

function GTK_IS_LIST_STORE(obj : longint) : longint;

function GTK_IS_LIST_STORE_CLASS(klass : longint) : longint;

function GTK_LIST_STORE_GET_CLASS(obj : longint) : longint;

type

  PGtkListStore = ^TGtkListStore;
  TGtkListStore = record
      parent : TGObject;
      priv : PGtkListStorePrivate;
    end;


  PGtkListStoreClass = ^TGtkListStoreClass;
  TGtkListStoreClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_list_store_get_type:TGType;cdecl;external;

function gtk_list_store_new(n_columns:longint; args:array of const):PGtkListStore;cdecl;external;
function gtk_list_store_new(n_columns:longint):PGtkListStore;cdecl;external;

function gtk_list_store_newv(n_columns:longint; types:PGType):PGtkListStore;cdecl;external;

procedure gtk_list_store_set_column_types(list_store:PGtkListStore; n_columns:longint; types:PGType);cdecl;external;


procedure gtk_list_store_set_value(list_store:PGtkListStore; iter:PGtkTreeIter; column:longint; value:PGValue);cdecl;external;

procedure gtk_list_store_set(list_store:PGtkListStore; iter:PGtkTreeIter; args:array of const);cdecl;external;
procedure gtk_list_store_set(list_store:PGtkListStore; iter:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_set_valuesv(list_store:PGtkListStore; iter:PGtkTreeIter; columns:Plongint; values:PGValue; n_values:longint);cdecl;external;

procedure gtk_list_store_set_valist(list_store:PGtkListStore; iter:PGtkTreeIter; var_args:Tva_list);cdecl;external;

function gtk_list_store_remove(list_store:PGtkListStore; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_list_store_insert(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint);cdecl;external;

procedure gtk_list_store_insert_before(list_store:PGtkListStore; iter:PGtkTreeIter; sibling:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_insert_after(list_store:PGtkListStore; iter:PGtkTreeIter; sibling:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_insert_with_values(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint; args:array of const);cdecl;external;
procedure gtk_list_store_insert_with_values(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint);cdecl;external;

procedure gtk_list_store_insert_with_valuesv(list_store:PGtkListStore; iter:PGtkTreeIter; position:longint; columns:Plongint; values:PGValue; 
            n_values:longint);cdecl;external;

procedure gtk_list_store_prepend(list_store:PGtkListStore; iter:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_append(list_store:PGtkListStore; iter:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_clear(list_store:PGtkListStore);cdecl;external;

function gtk_list_store_iter_is_valid(list_store:PGtkListStore; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_list_store_reorder(store:PGtkListStore; new_order:Plongint);cdecl;external;

procedure gtk_list_store_swap(store:PGtkListStore; a:PGtkTreeIter; b:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_move_after(store:PGtkListStore; iter:PGtkTreeIter; position:PGtkTreeIter);cdecl;external;

procedure gtk_list_store_move_before(store:PGtkListStore; iter:PGtkTreeIter; position:PGtkTreeIter);cdecl;external;

{$endif}


implementation

function GTK_TYPE_LIST_STORE : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_STORE:=gtk_list_store_get_type;
  end;

function GTK_LIST_STORE(obj : longint) : longint;
begin
  GTK_LIST_STORE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_STORE,GtkListStore);
end;

function GTK_LIST_STORE_CLASS(klass : longint) : longint;
begin
  GTK_LIST_STORE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_LIST_STORE,GtkListStoreClass);
end;

function GTK_IS_LIST_STORE(obj : longint) : longint;
begin
  GTK_IS_LIST_STORE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_STORE);
end;

function GTK_IS_LIST_STORE_CLASS(klass : longint) : longint;
begin
  GTK_IS_LIST_STORE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_LIST_STORE);
end;

function GTK_LIST_STORE_GET_CLASS(obj : longint) : longint;
begin
  GTK_LIST_STORE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_LIST_STORE,GtkListStoreClass);
end;


end.
