unit gtkpopovermenubar;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkPopoverMenuBar = record // _GtkPopoverMenuBar
  end;
  PGtkPopoverMenuBar = ^TGtkPopoverMenuBar;

function gtk_popover_menu_bar_get_type: TGType; cdecl; external gtklib;
function gtk_popover_menu_bar_new_from_model(model: PGMenuModel): PGtkWidget; cdecl; external gtklib;
procedure gtk_popover_menu_bar_set_menu_model(bar: PGtkPopoverMenuBar; model: PGMenuModel); cdecl; external gtklib;
function gtk_popover_menu_bar_get_menu_model(bar: PGtkPopoverMenuBar): PGMenuModel; cdecl; external gtklib;
function gtk_popover_menu_bar_add_child(bar: PGtkPopoverMenuBar; child: PGtkWidget; id: PChar): Tgboolean; cdecl; external gtklib;
function gtk_popover_menu_bar_remove_child(bar: PGtkPopoverMenuBar; child: PGtkWidget): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 24-7-24 16:58:13 ===

function GTK_TYPE_POPOVER_MENU_BAR: TGType;
function GTK_POPOVER_MENU_BAR(obj: Pointer): PGtkPopoverMenuBar;
function GTK_IS_POPOVER_MENU_BAR(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_POPOVER_MENU_BAR: TGType;
begin
  GTK_TYPE_POPOVER_MENU_BAR := gtk_popover_menu_bar_get_type;
end;

function GTK_POPOVER_MENU_BAR(obj: Pointer): PGtkPopoverMenuBar;
begin
  Result := PGtkPopoverMenuBar(g_type_check_instance_cast(obj, GTK_TYPE_POPOVER_MENU_BAR));
end;

function GTK_IS_POPOVER_MENU_BAR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_POPOVER_MENU_BAR);
end;



end.
