
unit gtkmultiselection;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmultiselection.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmultiselection.h
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
PGtkMultiSelection  = ^GtkMultiSelection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MULTI_SELECTION_H__}
{$define __GTK_MULTI_SELECTION_H__}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkselectionmodel.h>}


function GTK_TYPE_MULTI_SELECTION : longint; { return type might be wrong }




function gtk_multi_selection_new(model:PGListModel):PGtkMultiSelection;cdecl;external;

function gtk_multi_selection_get_model(self:PGtkMultiSelection):PGListModel;cdecl;external;

procedure gtk_multi_selection_set_model(self:PGtkMultiSelection; model:PGListModel);cdecl;external;

{$endif}


implementation

function GTK_TYPE_MULTI_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_MULTI_SELECTION:=gtk_multi_selection_get_type;
  end;


end.
