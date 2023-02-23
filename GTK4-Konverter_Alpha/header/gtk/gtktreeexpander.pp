
unit gtktreeexpander;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeexpander.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeexpander.h
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
PGtkTreeExpander  = ^GtkTreeExpander;
PGtkTreeListRow  = ^GtkTreeListRow;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_EXPANDER_H__}
{$define __GTK_TREE_EXPANDER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreelistmodel.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }




function gtk_tree_expander_new:PGtkWidget;cdecl;external;

function gtk_tree_expander_get_child(self:PGtkTreeExpander):PGtkWidget;cdecl;external;

procedure gtk_tree_expander_set_child(self:PGtkTreeExpander; child:PGtkWidget);cdecl;external;

function gtk_tree_expander_get_item(self:PGtkTreeExpander):Tgpointer;cdecl;external;

function gtk_tree_expander_get_list_row(self:PGtkTreeExpander):PGtkTreeListRow;cdecl;external;

procedure gtk_tree_expander_set_list_row(self:PGtkTreeExpander; list_row:PGtkTreeListRow);cdecl;external;

function gtk_tree_expander_get_indent_for_icon(self:PGtkTreeExpander):Tgboolean;cdecl;external;

procedure gtk_tree_expander_set_indent_for_icon(self:PGtkTreeExpander; indent_for_icon:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_EXPANDER:=gtk_tree_expander_get_type;
  end;


end.
