
unit gtkstringfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstringfilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstringfilter.h
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
PGtkExpression  = ^GtkExpression;
PGtkStringFilter  = ^GtkStringFilter;
PGtkStringFilterMatchMode  = ^GtkStringFilterMatchMode;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STRING_FILTER_H__}
{$define __GTK_STRING_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtkfilter.h>}


type
  PGtkStringFilterMatchMode = ^TGtkStringFilterMatchMode;
  TGtkStringFilterMatchMode = (GTK_STRING_FILTER_MATCH_MODE_EXACT,GTK_STRING_FILTER_MATCH_MODE_SUBSTRING,
    GTK_STRING_FILTER_MATCH_MODE_PREFIX);

function GTK_TYPE_STRING_FILTER : longint; { return type might be wrong }




function gtk_string_filter_new(expression:PGtkExpression):PGtkStringFilter;cdecl;external;

function gtk_string_filter_get_search(self:PGtkStringFilter):Pchar;cdecl;external;

procedure gtk_string_filter_set_search(self:PGtkStringFilter; search:Pchar);cdecl;external;

function gtk_string_filter_get_expression(self:PGtkStringFilter):PGtkExpression;cdecl;external;

procedure gtk_string_filter_set_expression(self:PGtkStringFilter; expression:PGtkExpression);cdecl;external;

function gtk_string_filter_get_ignore_case(self:PGtkStringFilter):Tgboolean;cdecl;external;

procedure gtk_string_filter_set_ignore_case(self:PGtkStringFilter; ignore_case:Tgboolean);cdecl;external;

function gtk_string_filter_get_match_mode(self:PGtkStringFilter):TGtkStringFilterMatchMode;cdecl;external;

procedure gtk_string_filter_set_match_mode(self:PGtkStringFilter; mode:TGtkStringFilterMatchMode);cdecl;external;

{$endif}


implementation

function GTK_TYPE_STRING_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_FILTER:=gtk_string_filter_get_type;
  end;


end.
