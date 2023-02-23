
unit gtkeditablelabel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeditablelabel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeditablelabel.h
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
Pchar  = ^char;
PGtkEditableLabel  = ^GtkEditableLabel;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EDITABLE_LABEL_H__}
{$define __GTK_EDITABLE_LABEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_EDITABLE_LABEL : longint; { return type might be wrong }




function gtk_editable_label_new(str:Pchar):PGtkWidget;cdecl;external;

function gtk_editable_label_get_editing(self:PGtkEditableLabel):Tgboolean;cdecl;external;

procedure gtk_editable_label_start_editing(self:PGtkEditableLabel);cdecl;external;

procedure gtk_editable_label_stop_editing(self:PGtkEditableLabel; commit:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_EDITABLE_LABEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_EDITABLE_LABEL:=gtk_editable_label_get_type;
  end;


end.
