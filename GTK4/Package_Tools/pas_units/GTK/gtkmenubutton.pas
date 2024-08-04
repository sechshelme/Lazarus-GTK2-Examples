unit gtkmenubutton;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget, gtkpopover;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkMenuButton = record // _GtkMenuButton
  end;
  PGtkMenuButton = ^TGtkMenuButton;

  TGtkMenuButtonCreatePopupFunc = procedure(menu_button: PGtkMenuButton; user_data: Tgpointer); cdecl;

function gtk_menu_button_get_type: TGType; cdecl; external gtklib;
function gtk_menu_button_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_menu_button_set_popover(menu_button: PGtkMenuButton; popover: PGtkWidget); cdecl; external gtklib;
function gtk_menu_button_get_popover(menu_button: PGtkMenuButton): PGtkPopover; cdecl; external gtklib;
procedure gtk_menu_button_set_direction(menu_button: PGtkMenuButton; direction: TGtkArrowType); cdecl; external gtklib;
function gtk_menu_button_get_direction(menu_button: PGtkMenuButton): TGtkArrowType; cdecl; external gtklib;
procedure gtk_menu_button_set_menu_model(menu_button: PGtkMenuButton; menu_model: PGMenuModel); cdecl; external gtklib;
function gtk_menu_button_get_menu_model(menu_button: PGtkMenuButton): PGMenuModel; cdecl; external gtklib;
procedure gtk_menu_button_set_icon_name(menu_button: PGtkMenuButton; icon_name: PChar); cdecl; external gtklib;
function gtk_menu_button_get_icon_name(menu_button: PGtkMenuButton): PChar; cdecl; external gtklib;
procedure gtk_menu_button_set_always_show_arrow(menu_button: PGtkMenuButton; always_show_arrow: Tgboolean); cdecl; external gtklib;
function gtk_menu_button_get_always_show_arrow(menu_button: PGtkMenuButton): Tgboolean; cdecl; external gtklib;
procedure gtk_menu_button_set_label(menu_button: PGtkMenuButton; _label: PChar); cdecl; external gtklib;
function gtk_menu_button_get_label(menu_button: PGtkMenuButton): PChar; cdecl; external gtklib;
procedure gtk_menu_button_set_use_underline(menu_button: PGtkMenuButton; use_underline: Tgboolean); cdecl; external gtklib;
function gtk_menu_button_get_use_underline(menu_button: PGtkMenuButton): Tgboolean; cdecl; external gtklib;
procedure gtk_menu_button_set_has_frame(menu_button: PGtkMenuButton; has_frame: Tgboolean); cdecl; external gtklib;
function gtk_menu_button_get_has_frame(menu_button: PGtkMenuButton): Tgboolean; cdecl; external gtklib;
procedure gtk_menu_button_popup(menu_button: PGtkMenuButton); cdecl; external gtklib;
procedure gtk_menu_button_popdown(menu_button: PGtkMenuButton); cdecl; external gtklib;
procedure gtk_menu_button_set_create_popup_func(menu_button: PGtkMenuButton; func: TGtkMenuButtonCreatePopupFunc; user_data: Tgpointer; destroy_notify: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_menu_button_set_primary(menu_button: PGtkMenuButton; primary: Tgboolean); cdecl; external gtklib;
function gtk_menu_button_get_primary(menu_button: PGtkMenuButton): Tgboolean; cdecl; external gtklib;
procedure gtk_menu_button_set_child(menu_button: PGtkMenuButton; child: PGtkWidget); cdecl; external gtklib;
function gtk_menu_button_get_child(menu_button: PGtkMenuButton): PGtkWidget; cdecl; external gtklib;
procedure gtk_menu_button_set_active(menu_button: PGtkMenuButton; active: Tgboolean); cdecl; external gtklib;
function gtk_menu_button_get_active(menu_button: PGtkMenuButton): Tgboolean; cdecl; external gtklib;
procedure gtk_menu_button_set_can_shrink(menu_button: PGtkMenuButton; can_shrink: Tgboolean); cdecl; external gtklib;
function gtk_menu_button_get_can_shrink(menu_button: PGtkMenuButton): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 24-7-24 16:54:49 ===

function GTK_TYPE_MENU_BUTTON: TGType;
function GTK_MENU_BUTTON(obj: Pointer): PGtkMenuButton;
function GTK_IS_MENU_BUTTON(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_MENU_BUTTON: TGType;
begin
  GTK_TYPE_MENU_BUTTON := gtk_menu_button_get_type;
end;

function GTK_MENU_BUTTON(obj: Pointer): PGtkMenuButton;
begin
  Result := PGtkMenuButton(g_type_check_instance_cast(obj, GTK_TYPE_MENU_BUTTON));
end;

function GTK_IS_MENU_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MENU_BUTTON);
end;



end.
