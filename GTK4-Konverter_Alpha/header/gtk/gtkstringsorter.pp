
unit gtkstringsorter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstringsorter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstringsorter.h
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
PGtkStringSorter  = ^GtkStringSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STRING_SORTER_H__}
{$define __GTK_STRING_SORTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_STRING_SORTER : longint; { return type might be wrong }




function gtk_string_sorter_new(expression:PGtkExpression):PGtkStringSorter;cdecl;external;

function gtk_string_sorter_get_expression(self:PGtkStringSorter):PGtkExpression;cdecl;external;

procedure gtk_string_sorter_set_expression(self:PGtkStringSorter; expression:PGtkExpression);cdecl;external;

function gtk_string_sorter_get_ignore_case(self:PGtkStringSorter):Tgboolean;cdecl;external;

procedure gtk_string_sorter_set_ignore_case(self:PGtkStringSorter; ignore_case:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_STRING_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_SORTER:=gtk_string_sorter_get_type;
  end;


end.
