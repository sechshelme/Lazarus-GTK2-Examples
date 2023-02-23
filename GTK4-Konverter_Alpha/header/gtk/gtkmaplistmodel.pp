
unit gtkmaplistmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmaplistmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmaplistmodel.h
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
PGtkMapListModel  = ^GtkMapListModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MAP_LIST_MODEL_H__}
{$define __GTK_MAP_LIST_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_MAP_LIST_MODEL : longint; { return type might be wrong }




type

  TGtkMapListModelMapFunc = function (item:Tgpointer; user_data:Tgpointer):Tgpointer;cdecl;


function gtk_map_list_model_new(model:PGListModel; map_func:TGtkMapListModelMapFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify):PGtkMapListModel;cdecl;external;

procedure gtk_map_list_model_set_map_func(self:PGtkMapListModel; map_func:TGtkMapListModelMapFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify);cdecl;external;

procedure gtk_map_list_model_set_model(self:PGtkMapListModel; model:PGListModel);cdecl;external;

function gtk_map_list_model_get_model(self:PGtkMapListModel):PGListModel;cdecl;external;

function gtk_map_list_model_has_map(self:PGtkMapListModel):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_MAP_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_MAP_LIST_MODEL:=gtk_map_list_model_get_type;
  end;


end.
