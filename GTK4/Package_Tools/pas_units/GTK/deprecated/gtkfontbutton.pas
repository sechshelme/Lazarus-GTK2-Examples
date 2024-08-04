unit gtkfontbutton;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkFontButton = record
  end;
  PGtkFontButton = ^TGtkFontButton;

function gtk_font_button_get_type: TGType; cdecl; external gtklib;
function gtk_font_button_new: PGtkWidget; cdecl; external gtklib;
function gtk_font_button_new_with_font(fontname: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_font_button_get_title(font_button: PGtkFontButton): PChar; cdecl; external gtklib;
procedure gtk_font_button_set_title(font_button: PGtkFontButton; title: PChar); cdecl; external gtklib;
function gtk_font_button_get_modal(font_button: PGtkFontButton): Tgboolean; cdecl; external gtklib;
procedure gtk_font_button_set_modal(font_button: PGtkFontButton; modal: Tgboolean); cdecl; external gtklib;
function gtk_font_button_get_use_font(font_button: PGtkFontButton): Tgboolean; cdecl; external gtklib;
procedure gtk_font_button_set_use_font(font_button: PGtkFontButton; use_font: Tgboolean); cdecl; external gtklib;
function gtk_font_button_get_use_size(font_button: PGtkFontButton): Tgboolean; cdecl; external gtklib;
procedure gtk_font_button_set_use_size(font_button: PGtkFontButton; use_size: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:52:59 ===

function GTK_TYPE_FONT_BUTTON: TGType;
function GTK_FONT_BUTTON(obj: Pointer): PGtkFontButton;
function GTK_IS_FONT_BUTTON(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_FONT_BUTTON: TGType;
begin
  GTK_TYPE_FONT_BUTTON := gtk_font_button_get_type;
end;

function GTK_FONT_BUTTON(obj: Pointer): PGtkFontButton;
begin
  Result := PGtkFontButton(g_type_check_instance_cast(obj, GTK_TYPE_FONT_BUTTON));
end;

function GTK_IS_FONT_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FONT_BUTTON);
end;



end.
