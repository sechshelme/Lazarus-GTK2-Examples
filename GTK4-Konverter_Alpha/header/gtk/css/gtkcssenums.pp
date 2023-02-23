
unit gtkcssenums;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcssenums.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcssenums.h
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
PGtkCssParserError  = ^GtkCssParserError;
PGtkCssParserWarning  = ^GtkCssParserWarning;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_CSS_ENUMS_H__}
{$define __GTK_CSS_ENUMS_H__}
{$if !defined (__GTK_CSS_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/css/gtkcss.h> can be included directly."}
{$endif}
{$include <glib.h>}
{$include <gdk/gdkversionmacros.h>}

type
  PGtkCssParserError = ^TGtkCssParserError;
  TGtkCssParserError = (GTK_CSS_PARSER_ERROR_FAILED,GTK_CSS_PARSER_ERROR_SYNTAX,
    GTK_CSS_PARSER_ERROR_IMPORT,GTK_CSS_PARSER_ERROR_NAME,
    GTK_CSS_PARSER_ERROR_UNKNOWN_VALUE);


  PGtkCssParserWarning = ^TGtkCssParserWarning;
  TGtkCssParserWarning = (GTK_CSS_PARSER_WARNING_DEPRECATED,GTK_CSS_PARSER_WARNING_SYNTAX,
    GTK_CSS_PARSER_WARNING_UNIMPLEMENTED);
{$endif}


implementation


end.
