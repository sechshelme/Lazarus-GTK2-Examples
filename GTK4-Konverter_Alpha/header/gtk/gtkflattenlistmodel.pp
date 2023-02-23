
unit gtkflattenlistmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkflattenlistmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkflattenlistmodel.h
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
PGtkFlattenListModel  = ^GtkFlattenListModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FLATTEN_LIST_MODEL_H__}
{$define __GTK_FLATTEN_LIST_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GTK_TYPE_FLATTEN_LIST_MODEL : longint; { return type might be wrong }




function gtk_flatten_list_model_new(model:PGListModel):PGtkFlattenListModel;cdecl;external;

procedure gtk_flatten_list_model_set_model(self:PGtkFlattenListModel; model:PGListModel);cdecl;external;

function gtk_flatten_list_model_get_model(self:PGtkFlattenListModel):PGListModel;cdecl;external;

function gtk_flatten_list_model_get_model_for_item(self:PGtkFlattenListModel; position:Tguint):PGListModel;cdecl;external;

{$endif}


implementation

function GTK_TYPE_FLATTEN_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_FLATTEN_LIST_MODEL:=gtk_flatten_list_model_get_type;
  end;


end.
