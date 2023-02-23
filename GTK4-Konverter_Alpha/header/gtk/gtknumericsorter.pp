
unit gtknumericsorter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknumericsorter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknumericsorter.h
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
PGtkExpression  = ^GtkExpression;
PGtkNumericSorter  = ^GtkNumericSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_NUMERIC_SORTER_H__}
{$define __GTK_NUMERIC_SORTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_NUMERIC_SORTER : longint; { return type might be wrong }




function gtk_numeric_sorter_new(expression:PGtkExpression):PGtkNumericSorter;cdecl;external;

function gtk_numeric_sorter_get_expression(self:PGtkNumericSorter):PGtkExpression;cdecl;external;

procedure gtk_numeric_sorter_set_expression(self:PGtkNumericSorter; expression:PGtkExpression);cdecl;external;

function gtk_numeric_sorter_get_sort_order(self:PGtkNumericSorter):TGtkSortType;cdecl;external;

procedure gtk_numeric_sorter_set_sort_order(self:PGtkNumericSorter; sort_order:TGtkSortType);cdecl;external;

{$endif}


implementation

function GTK_TYPE_NUMERIC_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_NUMERIC_SORTER:=gtk_numeric_sorter_get_type;
  end;


end.
