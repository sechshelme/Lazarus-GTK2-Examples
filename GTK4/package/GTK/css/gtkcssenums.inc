/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

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


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
