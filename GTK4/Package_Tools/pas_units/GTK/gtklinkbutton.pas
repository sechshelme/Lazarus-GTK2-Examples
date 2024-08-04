unit gtklinkbutton;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkLinkButton = record // _GtkLinkButton
  end;
  PGtkLinkButton = ^TGtkLinkButton;

function gtk_link_button_get_type: TGType; cdecl; external gtklib;
function gtk_link_button_new(uri: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_link_button_new_with_label(uri: PChar; _label: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_link_button_get_uri(link_button: PGtkLinkButton): PChar; cdecl; external gtklib;
procedure gtk_link_button_set_uri(link_button: PGtkLinkButton; uri: PChar); cdecl; external gtklib;
function gtk_link_button_get_visited(link_button: PGtkLinkButton): Tgboolean; cdecl; external gtklib;
procedure gtk_link_button_set_visited(link_button: PGtkLinkButton; visited: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:56:47 ===

function GTK_TYPE_LINK_BUTTON: TGType;
function GTK_LINK_BUTTON(obj: Pointer): PGtkLinkButton;
function GTK_IS_LINK_BUTTON(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_LINK_BUTTON: TGType;
begin
  GTK_TYPE_LINK_BUTTON := gtk_link_button_get_type;
end;

function GTK_LINK_BUTTON(obj: Pointer): PGtkLinkButton;
begin
  Result := PGtkLinkButton(g_type_check_instance_cast(obj, GTK_TYPE_LINK_BUTTON));
end;

function GTK_IS_LINK_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LINK_BUTTON);
end;



end.
