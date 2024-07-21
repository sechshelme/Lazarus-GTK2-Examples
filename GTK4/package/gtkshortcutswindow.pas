unit gtkshortcutswindow;

interface

uses
  glib2, common_GTK, gtkshortcutssection;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkShortcutsWindow = record // _GtkShortcutsWindow
  end;
  PGtkShortcutsWindow = ^TGtkShortcutsWindow;

function gtk_shortcuts_window_get_type: TGType; cdecl; external gtklib;
procedure gtk_shortcuts_window_add_section(self: PGtkShortcutsWindow; section: PGtkShortcutsSection); cdecl; external gtklib;

// === Konventiert am: 21-7-24 13:27:14 ===

function GTK_TYPE_SHORTCUTS_WINDOW: TGType;
function GTK_SHORTCUTS_WINDOW(obj: Pointer): PGtkShortcutsWindow;
function GTK_IS_SHORTCUTS_WINDOW(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SHORTCUTS_WINDOW: TGType;
begin
  GTK_TYPE_SHORTCUTS_WINDOW := gtk_shortcuts_window_get_type;
end;

function GTK_SHORTCUTS_WINDOW(obj: Pointer): PGtkShortcutsWindow;
begin
  Result := PGtkShortcutsWindow(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUTS_WINDOW));
end;

function GTK_IS_SHORTCUTS_WINDOW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUTS_WINDOW);
end;



end.
