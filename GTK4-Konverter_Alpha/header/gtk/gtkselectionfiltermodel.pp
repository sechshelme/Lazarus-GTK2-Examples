
unit gtkselectionfiltermodel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkselectionfiltermodel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkselectionfiltermodel.h
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
PGtkSelectionFilterModel  = ^GtkSelectionFilterModel;
PGtkSelectionModel  = ^GtkSelectionModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SELECTION_FILTER_MODEL_H__}
{$define __GTK_SELECTION_FILTER_MODEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkselectionmodel.h>}


function GTK_TYPE_SELECTION_FILTER_MODEL : longint; { return type might be wrong }




function gtk_selection_filter_model_new(model:PGtkSelectionModel):PGtkSelectionFilterModel;cdecl;external;

procedure gtk_selection_filter_model_set_model(self:PGtkSelectionFilterModel; model:PGtkSelectionModel);cdecl;external;

function gtk_selection_filter_model_get_model(self:PGtkSelectionFilterModel):PGtkSelectionModel;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SELECTION_FILTER_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SELECTION_FILTER_MODEL:=gtk_selection_filter_model_get_type;
  end;


end.
