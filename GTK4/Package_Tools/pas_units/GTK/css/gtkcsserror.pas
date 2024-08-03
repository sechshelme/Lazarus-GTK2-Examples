unit gtkcsserror;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



function gtk_css_parser_error_quark: TGQuark; cdecl; external gtklib;
function gtk_css_parser_warning_quark: TGQuark; cdecl; external gtklib;

function GTK_CSS_PARSER_WARNING: TGQuark;
function GTK_CSS_PARSER_ERROR: TGQuark;

// === Konventiert am: 2-8-24 19:05:55 ===


implementation

function GTK_CSS_PARSER_ERROR: TGQuark;
begin
  GTK_CSS_PARSER_ERROR := gtk_css_parser_error_quark;
end;

function GTK_CSS_PARSER_WARNING: TGQuark;
begin
  GTK_CSS_PARSER_WARNING := gtk_css_parser_warning_quark;
end;


end.
