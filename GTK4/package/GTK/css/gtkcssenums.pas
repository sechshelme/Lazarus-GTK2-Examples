unit gtkcssenums;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkCssParserError = ^TGtkCssParserError;
  TGtkCssParserError = longint;

const
  GTK_CSS_PARSER_ERROR_FAILED = 0;
  GTK_CSS_PARSER_ERROR_SYNTAX = 1;
  GTK_CSS_PARSER_ERROR_IMPORT = 2;
  GTK_CSS_PARSER_ERROR_NAME = 3;
  GTK_CSS_PARSER_ERROR_UNKNOWN_VALUE = 4;

type
  PGtkCssParserWarning = ^TGtkCssParserWarning;
  TGtkCssParserWarning = longint;

const
  GTK_CSS_PARSER_WARNING_DEPRECATED = 0;
  GTK_CSS_PARSER_WARNING_SYNTAX = 1;
  GTK_CSS_PARSER_WARNING_UNIMPLEMENTED = 2;

  // === Konventiert am: 2-8-24 19:04:55 ===


implementation



end.
