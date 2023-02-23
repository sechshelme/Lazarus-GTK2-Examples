
unit gtkslicelistmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkslicelistmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkslicelistmodel.h
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
PGtkSliceListModel  = ^GtkSliceListModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SLICE_LIST_MODEL_H__}
{$define __GTK_SLICE_LIST_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SLICE_LIST_MODEL : longint; { return type might be wrong }




function gtk_slice_list_model_new(model:PGListModel; offset:Tguint; size:Tguint):PGtkSliceListModel;cdecl;external;

procedure gtk_slice_list_model_set_model(self:PGtkSliceListModel; model:PGListModel);cdecl;external;

function gtk_slice_list_model_get_model(self:PGtkSliceListModel):PGListModel;cdecl;external;

procedure gtk_slice_list_model_set_offset(self:PGtkSliceListModel; offset:Tguint);cdecl;external;

function gtk_slice_list_model_get_offset(self:PGtkSliceListModel):Tguint;cdecl;external;

procedure gtk_slice_list_model_set_size(self:PGtkSliceListModel; size:Tguint);cdecl;external;

function gtk_slice_list_model_get_size(self:PGtkSliceListModel):Tguint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SLICE_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SLICE_LIST_MODEL:=gtk_slice_list_model_get_type;
  end;


end.
