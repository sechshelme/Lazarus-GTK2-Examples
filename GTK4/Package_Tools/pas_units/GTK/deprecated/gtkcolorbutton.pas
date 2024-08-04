unit gtkcolorbutton;

interface

uses
  glib2, common_GTK, GDK4, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkColorButton = record
  end;
  PGtkColorButton = ^TGtkColorButton;

function gtk_color_button_get_type: TGType; cdecl; external gtklib;
function gtk_color_button_new: PGtkWidget; cdecl; external gtklib;
function gtk_color_button_new_with_rgba(rgba: PGdkRGBA): PGtkWidget; cdecl; external gtklib;
procedure gtk_color_button_set_title(button: PGtkColorButton; title: PChar); cdecl; external gtklib;
function gtk_color_button_get_title(button: PGtkColorButton): PChar; cdecl; external gtklib;
function gtk_color_button_get_modal(button: PGtkColorButton): Tgboolean; cdecl; external gtklib;
procedure gtk_color_button_set_modal(button: PGtkColorButton; modal: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:33:55 ===

function GTK_TYPE_COLOR_BUTTON: TGType;
function GTK_COLOR_BUTTON(obj: Pointer): PGtkColorButton;
function GTK_IS_COLOR_BUTTON(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_COLOR_BUTTON: TGType;
begin
  GTK_TYPE_COLOR_BUTTON := gtk_color_button_get_type;
end;

function GTK_COLOR_BUTTON(obj: Pointer): PGtkColorButton;
begin
  Result := PGtkColorButton(g_type_check_instance_cast(obj, GTK_TYPE_COLOR_BUTTON));
end;

function GTK_IS_COLOR_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLOR_BUTTON);
end;



end.
