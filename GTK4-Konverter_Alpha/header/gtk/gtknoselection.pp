
unit gtknoselection;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknoselection.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknoselection.h
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
PGtkNoSelection  = ^GtkNoSelection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_NO_SELECTION_H__}
{$define __GTK_NO_SELECTION_H__}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_NO_SELECTION : longint; { return type might be wrong }




function gtk_no_selection_new(model:PGListModel):PGtkNoSelection;cdecl;external;

function gtk_no_selection_get_model(self:PGtkNoSelection):PGListModel;cdecl;external;

procedure gtk_no_selection_set_model(self:PGtkNoSelection; model:PGListModel);cdecl;external;

{$endif}


implementation

function GTK_TYPE_NO_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_NO_SELECTION:=gtk_no_selection_get_type;
  end;


end.
