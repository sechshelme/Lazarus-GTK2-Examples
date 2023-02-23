
unit gtktreelistrowsorter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreelistrowsorter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreelistrowsorter.h
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
PGtkSorter  = ^GtkSorter;
PGtkTreeListRowSorter  = ^GtkTreeListRowSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_LIST_ROW_SORTER_H__}
{$define __GTK_TREE_LIST_ROW_SORTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }




function gtk_tree_list_row_sorter_new(sorter:PGtkSorter):PGtkTreeListRowSorter;cdecl;external;

function gtk_tree_list_row_sorter_get_sorter(self:PGtkTreeListRowSorter):PGtkSorter;cdecl;external;

procedure gtk_tree_list_row_sorter_set_sorter(self:PGtkTreeListRowSorter; sorter:PGtkSorter);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_ROW_SORTER:=gtk_tree_list_row_sorter_get_type;
  end;


end.
