
unit gtkselectionmodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkselectionmodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkselectionmodel.h
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
PGtkBitset  = ^GtkBitset;
PGtkSelectionModel  = ^GtkSelectionModel;
PGtkSelectionModelInterface  = ^GtkSelectionModelInterface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SELECTION_MODEL_H__}
{$define __GTK_SELECTION_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_SELECTION_MODEL : longint; { return type might be wrong }






type
  PGtkSelectionModelInterface = ^TGtkSelectionModelInterface;
  TGtkSelectionModelInterface = record
      g_iface : TGTypeInterface;
      is_selected : function (model:PGtkSelectionModel; position:Tguint):Tgboolean;cdecl;
      get_selection_in_range : function (model:PGtkSelectionModel; position:Tguint; n_items:Tguint):PGtkBitset;cdecl;
      select_item : function (model:PGtkSelectionModel; position:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;
      unselect_item : function (model:PGtkSelectionModel; position:Tguint):Tgboolean;cdecl;
      select_range : function (model:PGtkSelectionModel; position:Tguint; n_items:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;
      unselect_range : function (model:PGtkSelectionModel; position:Tguint; n_items:Tguint):Tgboolean;cdecl;
      select_all : function (model:PGtkSelectionModel):Tgboolean;cdecl;
      unselect_all : function (model:PGtkSelectionModel):Tgboolean;cdecl;
      set_selection : function (model:PGtkSelectionModel; selected:PGtkBitset; mask:PGtkBitset):Tgboolean;cdecl;
    end;



function gtk_selection_model_is_selected(model:PGtkSelectionModel; position:Tguint):Tgboolean;cdecl;external;

function gtk_selection_model_get_selection(model:PGtkSelectionModel):PGtkBitset;cdecl;external;

function gtk_selection_model_get_selection_in_range(model:PGtkSelectionModel; position:Tguint; n_items:Tguint):PGtkBitset;cdecl;external;

function gtk_selection_model_select_item(model:PGtkSelectionModel; position:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;external;

function gtk_selection_model_unselect_item(model:PGtkSelectionModel; position:Tguint):Tgboolean;cdecl;external;

function gtk_selection_model_select_range(model:PGtkSelectionModel; position:Tguint; n_items:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;external;

function gtk_selection_model_unselect_range(model:PGtkSelectionModel; position:Tguint; n_items:Tguint):Tgboolean;cdecl;external;

function gtk_selection_model_select_all(model:PGtkSelectionModel):Tgboolean;cdecl;external;

function gtk_selection_model_unselect_all(model:PGtkSelectionModel):Tgboolean;cdecl;external;

function gtk_selection_model_set_selection(model:PGtkSelectionModel; selected:PGtkBitset; mask:PGtkBitset):Tgboolean;cdecl;external;


procedure gtk_selection_model_selection_changed(model:PGtkSelectionModel; position:Tguint; n_items:Tguint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SELECTION_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SELECTION_MODEL:=gtk_selection_model_get_type;
  end;


end.
