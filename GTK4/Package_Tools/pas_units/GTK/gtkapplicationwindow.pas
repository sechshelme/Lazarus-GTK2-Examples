unit gtkapplicationwindow;

interface

uses
  glib2, common_GTK, gtkwidget, gtktypes, gtkwindow, gtkshortcutswindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkApplicationWindow = record
    parent_instance: TGtkWindow;
  end;
  PGtkApplicationWindow = ^TGtkApplicationWindow;

  TGtkApplicationWindowClass = record
    parent_class: TGtkWindowClass;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkApplicationWindowClass = ^TGtkApplicationWindowClass;


function gtk_application_window_get_type: TGType; cdecl; external gtklib;
function gtk_application_window_new(application: PGtkApplication): PGtkWidget; cdecl; external gtklib;
procedure gtk_application_window_set_show_menubar(window: PGtkApplicationWindow; show_menubar: Tgboolean); cdecl; external gtklib;
function gtk_application_window_get_show_menubar(window: PGtkApplicationWindow): Tgboolean; cdecl; external gtklib;
function gtk_application_window_get_id(window: PGtkApplicationWindow): Tguint; cdecl; external gtklib;
procedure gtk_application_window_set_help_overlay(window: PGtkApplicationWindow; help_overlay: PGtkShortcutsWindow); cdecl; external gtklib;
function gtk_application_window_get_help_overlay(window: PGtkApplicationWindow): PGtkShortcutsWindow; cdecl; external gtklib;

// === Konventiert am: 11-7-24 22:33:20 ===

function GTK_TYPE_APPLICATION_WINDOW: TGType;
function GTK_APPLICATION_WINDOW(inst: Pointer): PGtkApplicationWindow;
function GTK_APPLICATION_WINDOW_CLASS(_class: Pointer): PGtkApplicationWindowClass;
function GTK_IS_APPLICATION_WINDOW(inst: Pointer): Tgboolean;
function GTK_IS_APPLICATION_WINDOW_CLASS(_class: Pointer): Tgboolean;
function GTK_APPLICATION_WINDOW_GET_CLASS(inst: Pointer): PGtkApplicationWindowClass;

implementation

function GTK_TYPE_APPLICATION_WINDOW: TGType;
begin
  GTK_TYPE_APPLICATION_WINDOW := gtk_application_window_get_type;
end;

function GTK_APPLICATION_WINDOW(inst: Pointer): PGtkApplicationWindow;
begin
  Result := PGtkApplicationWindow(g_type_check_instance_cast(inst, GTK_TYPE_APPLICATION_WINDOW));
end;

function GTK_APPLICATION_WINDOW_CLASS(_class: Pointer): PGtkApplicationWindowClass;
begin
  Result := PGtkApplicationWindowClass(g_type_check_class_cast(_class, GTK_TYPE_APPLICATION_WINDOW));
end;

function GTK_IS_APPLICATION_WINDOW(inst: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(inst, GTK_TYPE_APPLICATION_WINDOW);
end;

function GTK_IS_APPLICATION_WINDOW_CLASS(_class: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(_class, GTK_TYPE_APPLICATION_WINDOW);
end;

function GTK_APPLICATION_WINDOW_GET_CLASS(inst: Pointer): PGtkApplicationWindowClass;
begin
  Result := PGtkApplicationWindowClass(PGTypeInstance(inst)^.g_class);
end;


end.
