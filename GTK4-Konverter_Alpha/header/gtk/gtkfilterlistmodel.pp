
unit gtkfilterlistmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilterlistmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilterlistmodel.h
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
PGtkFilter  = ^GtkFilter;
PGtkFilterListModel  = ^GtkFilterListModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FILTER_LIST_MODEL_H__}
{$define __GTK_FILTER_LIST_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkfilter.h>}


function GTK_TYPE_FILTER_LIST_MODEL : longint; { return type might be wrong }




function gtk_filter_list_model_new(model:PGListModel; filter:PGtkFilter):PGtkFilterListModel;cdecl;external;

procedure gtk_filter_list_model_set_filter(self:PGtkFilterListModel; filter:PGtkFilter);cdecl;external;

function gtk_filter_list_model_get_filter(self:PGtkFilterListModel):PGtkFilter;cdecl;external;

procedure gtk_filter_list_model_set_model(self:PGtkFilterListModel; model:PGListModel);cdecl;external;

function gtk_filter_list_model_get_model(self:PGtkFilterListModel):PGListModel;cdecl;external;

procedure gtk_filter_list_model_set_incremental(self:PGtkFilterListModel; incremental:Tgboolean);cdecl;external;

function gtk_filter_list_model_get_incremental(self:PGtkFilterListModel):Tgboolean;cdecl;external;

function gtk_filter_list_model_get_pending(self:PGtkFilterListModel):Tguint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_FILTER_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER_LIST_MODEL:=gtk_filter_list_model_get_type;
  end;


end.
