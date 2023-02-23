
unit gtksingleselection;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksingleselection.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksingleselection.h
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
PGtkSingleSelection  = ^GtkSingleSelection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SINGLE_SELECTION_H__}
{$define __GTK_SINGLE_SELECTION_H__}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }




function gtk_single_selection_new(model:PGListModel):PGtkSingleSelection;cdecl;external;

function gtk_single_selection_get_model(self:PGtkSingleSelection):PGListModel;cdecl;external;

procedure gtk_single_selection_set_model(self:PGtkSingleSelection; model:PGListModel);cdecl;external;

function gtk_single_selection_get_selected(self:PGtkSingleSelection):Tguint;cdecl;external;

procedure gtk_single_selection_set_selected(self:PGtkSingleSelection; position:Tguint);cdecl;external;

function gtk_single_selection_get_selected_item(self:PGtkSingleSelection):Tgpointer;cdecl;external;

function gtk_single_selection_get_autoselect(self:PGtkSingleSelection):Tgboolean;cdecl;external;

procedure gtk_single_selection_set_autoselect(self:PGtkSingleSelection; autoselect:Tgboolean);cdecl;external;

function gtk_single_selection_get_can_unselect(self:PGtkSingleSelection):Tgboolean;cdecl;external;

procedure gtk_single_selection_set_can_unselect(self:PGtkSingleSelection; can_unselect:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SINGLE_SELECTION:=gtk_single_selection_get_type;
  end;


end.
