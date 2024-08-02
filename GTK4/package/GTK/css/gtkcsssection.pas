unit gtkcsssection;

interface

uses
  glib2, common_GTK, gtkcsslocation;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkCssSection = record
  end;
  PGtkCssSection = ^TGtkCssSection;

function gtk_css_section_get_type: TGType; cdecl; external gtklib;
function gtk_css_section_new(_file: PGFile; start: PGtkCssLocation; _end: PGtkCssLocation): PGtkCssSection; cdecl; external gtklib;
function gtk_css_section_ref(section: PGtkCssSection): PGtkCssSection; cdecl; external gtklib;
procedure gtk_css_section_unref(section: PGtkCssSection); cdecl; external gtklib;
procedure gtk_css_section_print(section: PGtkCssSection; _string: PGString); cdecl; external gtklib;
function gtk_css_section_to_string(section: PGtkCssSection): PChar; cdecl; external gtklib;
function gtk_css_section_get_parent(section: PGtkCssSection): PGtkCssSection; cdecl; external gtklib;
function gtk_css_section_get_file(section: PGtkCssSection): PGFile; cdecl; external gtklib;
function gtk_css_section_get_start_location(section: PGtkCssSection): PGtkCssLocation; cdecl; external gtklib;
function gtk_css_section_get_end_location(section: PGtkCssSection): PGtkCssLocation; cdecl; external gtklib;

// === Konventiert am: 2-8-24 19:06:13 ===

function GTK_TYPE_CSS_SECTION: TGType;

implementation

function GTK_TYPE_CSS_SECTION: TGType;
begin
  GTK_TYPE_CSS_SECTION := gtk_css_section_get_type;
end;



end.
