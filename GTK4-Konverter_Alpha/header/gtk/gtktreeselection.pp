
unit gtktreeselection;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeselection.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeselection.h
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
PGList  = ^GList;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGtkTreeSelection  = ^GtkTreeSelection;
PGtkTreeView  = ^GtkTreeView;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_SELECTION_H__}
{$define __GTK_TREE_SELECTION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreeview.h>}


function GTK_TYPE_TREE_SELECTION : longint; { return type might be wrong }

function GTK_TREE_SELECTION(obj : longint) : longint;

function GTK_IS_TREE_SELECTION(obj : longint) : longint;


type

  TGtkTreeSelectionFunc = function (selection:PGtkTreeSelection; model:PGtkTreeModel; path:PGtkTreePath; path_currently_selected:Tgboolean; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeSelectionForeachFunc = procedure (model:PGtkTreeModel; path:PGtkTreePath; iter:PGtkTreeIter; data:Tgpointer);cdecl;


function gtk_tree_selection_get_type:TGType;cdecl;external;

procedure gtk_tree_selection_set_mode(selection:PGtkTreeSelection; _type:TGtkSelectionMode);cdecl;external;

function gtk_tree_selection_get_mode(selection:PGtkTreeSelection):TGtkSelectionMode;cdecl;external;

procedure gtk_tree_selection_set_select_function(selection:PGtkTreeSelection; func:TGtkTreeSelectionFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

function gtk_tree_selection_get_user_data(selection:PGtkTreeSelection):Tgpointer;cdecl;external;

function gtk_tree_selection_get_tree_view(selection:PGtkTreeSelection):PGtkTreeView;cdecl;external;

function gtk_tree_selection_get_select_function(selection:PGtkTreeSelection):TGtkTreeSelectionFunc;cdecl;external;



function gtk_tree_selection_get_selected(selection:PGtkTreeSelection; model:PPGtkTreeModel; iter:PGtkTreeIter):Tgboolean;cdecl;external;

function gtk_tree_selection_get_selected_rows(selection:PGtkTreeSelection; model:PPGtkTreeModel):PGList;cdecl;external;

function gtk_tree_selection_count_selected_rows(selection:PGtkTreeSelection):longint;cdecl;external;

procedure gtk_tree_selection_selected_foreach(selection:PGtkTreeSelection; func:TGtkTreeSelectionForeachFunc; data:Tgpointer);cdecl;external;

procedure gtk_tree_selection_select_path(selection:PGtkTreeSelection; path:PGtkTreePath);cdecl;external;

procedure gtk_tree_selection_unselect_path(selection:PGtkTreeSelection; path:PGtkTreePath);cdecl;external;

procedure gtk_tree_selection_select_iter(selection:PGtkTreeSelection; iter:PGtkTreeIter);cdecl;external;

procedure gtk_tree_selection_unselect_iter(selection:PGtkTreeSelection; iter:PGtkTreeIter);cdecl;external;

function gtk_tree_selection_path_is_selected(selection:PGtkTreeSelection; path:PGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_selection_iter_is_selected(selection:PGtkTreeSelection; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_tree_selection_select_all(selection:PGtkTreeSelection);cdecl;external;

procedure gtk_tree_selection_unselect_all(selection:PGtkTreeSelection);cdecl;external;

procedure gtk_tree_selection_select_range(selection:PGtkTreeSelection; start_path:PGtkTreePath; end_path:PGtkTreePath);cdecl;external;

procedure gtk_tree_selection_unselect_range(selection:PGtkTreeSelection; start_path:PGtkTreePath; end_path:PGtkTreePath);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_SELECTION:=gtk_tree_selection_get_type;
  end;

function GTK_TREE_SELECTION(obj : longint) : longint;
begin
  GTK_TREE_SELECTION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_SELECTION,GtkTreeSelection);
end;

function GTK_IS_TREE_SELECTION(obj : longint) : longint;
begin
  GTK_IS_TREE_SELECTION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_SELECTION);
end;


end.
