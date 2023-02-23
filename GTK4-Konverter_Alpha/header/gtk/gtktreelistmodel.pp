
unit gtktreelistmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreelistmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreelistmodel.h
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
PGListModel  = ^GListModel;
PGtkTreeListModel  = ^GtkTreeListModel;
PGtkTreeListModelCreateModelFunc  = ^GtkTreeListModelCreateModelFunc;
PGtkTreeListRow  = ^GtkTreeListRow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_LIST_MODEL_H__}
{$define __GTK_TREE_LIST_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_TREE_LIST_MODEL : longint; { return type might be wrong }

function GTK_TYPE_TREE_LIST_ROW : longint; { return type might be wrong }






type
  PGtkTreeListModelCreateModelFunc = ^TGtkTreeListModelCreateModelFunc;
  TGtkTreeListModelCreateModelFunc = function (item:Tgpointer; user_data:Tgpointer):PGListModel;cdecl;


function gtk_tree_list_model_new(root:PGListModel; passthrough:Tgboolean; autoexpand:Tgboolean; create_func:TGtkTreeListModelCreateModelFunc; user_data:Tgpointer; 
           user_destroy:TGDestroyNotify):PGtkTreeListModel;cdecl;external;

function gtk_tree_list_model_get_model(self:PGtkTreeListModel):PGListModel;cdecl;external;

function gtk_tree_list_model_get_passthrough(self:PGtkTreeListModel):Tgboolean;cdecl;external;

procedure gtk_tree_list_model_set_autoexpand(self:PGtkTreeListModel; autoexpand:Tgboolean);cdecl;external;

function gtk_tree_list_model_get_autoexpand(self:PGtkTreeListModel):Tgboolean;cdecl;external;

function gtk_tree_list_model_get_child_row(self:PGtkTreeListModel; position:Tguint):PGtkTreeListRow;cdecl;external;

function gtk_tree_list_model_get_row(self:PGtkTreeListModel; position:Tguint):PGtkTreeListRow;cdecl;external;

function gtk_tree_list_row_get_item(self:PGtkTreeListRow):Tgpointer;cdecl;external;

procedure gtk_tree_list_row_set_expanded(self:PGtkTreeListRow; expanded:Tgboolean);cdecl;external;

function gtk_tree_list_row_get_expanded(self:PGtkTreeListRow):Tgboolean;cdecl;external;

function gtk_tree_list_row_is_expandable(self:PGtkTreeListRow):Tgboolean;cdecl;external;

function gtk_tree_list_row_get_position(self:PGtkTreeListRow):Tguint;cdecl;external;

function gtk_tree_list_row_get_depth(self:PGtkTreeListRow):Tguint;cdecl;external;

function gtk_tree_list_row_get_children(self:PGtkTreeListRow):PGListModel;cdecl;external;

function gtk_tree_list_row_get_parent(self:PGtkTreeListRow):PGtkTreeListRow;cdecl;external;

function gtk_tree_list_row_get_child_row(self:PGtkTreeListRow; position:Tguint):PGtkTreeListRow;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_MODEL:=gtk_tree_list_model_get_type;
  end;

function GTK_TYPE_TREE_LIST_ROW : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_ROW:=gtk_tree_list_row_get_type;
  end;


end.
