
unit gtksortlistmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksortlistmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksortlistmodel.h
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
PGtkSorter  = ^GtkSorter;
PGtkSortListModel  = ^GtkSortListModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SORT_LIST_MODEL_H__}
{$define __GTK_SORT_LIST_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_SORT_LIST_MODEL : longint; { return type might be wrong }




function gtk_sort_list_model_new(model:PGListModel; sorter:PGtkSorter):PGtkSortListModel;cdecl;external;

procedure gtk_sort_list_model_set_sorter(self:PGtkSortListModel; sorter:PGtkSorter);cdecl;external;

function gtk_sort_list_model_get_sorter(self:PGtkSortListModel):PGtkSorter;cdecl;external;

procedure gtk_sort_list_model_set_model(self:PGtkSortListModel; model:PGListModel);cdecl;external;

function gtk_sort_list_model_get_model(self:PGtkSortListModel):PGListModel;cdecl;external;

procedure gtk_sort_list_model_set_incremental(self:PGtkSortListModel; incremental:Tgboolean);cdecl;external;

function gtk_sort_list_model_get_incremental(self:PGtkSortListModel):Tgboolean;cdecl;external;

function gtk_sort_list_model_get_pending(self:PGtkSortListModel):Tguint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SORT_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORT_LIST_MODEL:=gtk_sort_list_model_get_type;
  end;


end.
