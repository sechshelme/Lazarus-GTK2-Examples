/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}



function gtk_css_parser_error_quark: TGQuark; cdecl; external gtklib;
function gtk_css_parser_warning_quark: TGQuark; cdecl; external gtklib;

function GTK_CSS_PARSER_WARNING: TGQuark;
function GTK_CSS_PARSER_ERROR: TGQuark;

// === Konventiert am: 2-8-24 19:05:55 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_CSS_PARSER_ERROR: TGQuark;
begin
  GTK_CSS_PARSER_ERROR := gtk_css_parser_error_quark;
end;

function GTK_CSS_PARSER_WARNING: TGQuark;
begin
  GTK_CSS_PARSER_WARNING := gtk_css_parser_warning_quark;
end;


{$ENDIF read_implementation}
