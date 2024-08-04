unit gtkwindow;

interface

uses
  glib2, common_GTK, GDK4, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkWindow = record
    parent_instance: TGtkWidget;
  end;
  PGtkWindow = ^TGtkWindow;

  TGtkWindowClass = record
    parent_class: TGtkWidgetClass;
    activate_focus: procedure(window: PGtkWindow); cdecl;
    activate_default: procedure(window: PGtkWindow); cdecl;
    keys_changed: procedure(window: PGtkWindow); cdecl;
    enable_debugging: function(window: PGtkWindow; toggle: Tgboolean): Tgboolean; cdecl;
    close_request: function(window: PGtkWindow): Tgboolean; cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkWindowClass = ^TGtkWindowClass;

function gtk_window_get_type: TGType; cdecl; external gtklib;
function gtk_window_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_window_set_title(window: PGtkWindow; title: PChar); cdecl; external gtklib;
function gtk_window_get_title(window: PGtkWindow): PChar; cdecl; external gtklib;
procedure gtk_window_set_startup_id(window: PGtkWindow; startup_id: PChar); cdecl; external gtklib;
procedure gtk_window_set_focus(window: PGtkWindow; focus: PGtkWidget); cdecl; external gtklib;
function gtk_window_get_focus(window: PGtkWindow): PGtkWidget; cdecl; external gtklib;
procedure gtk_window_set_default_widget(window: PGtkWindow; default_widget: PGtkWidget); cdecl; external gtklib;
function gtk_window_get_default_widget(window: PGtkWindow): PGtkWidget; cdecl; external gtklib;
procedure gtk_window_set_transient_for(window: PGtkWindow; parent: PGtkWindow); cdecl; external gtklib;
function gtk_window_get_transient_for(window: PGtkWindow): PGtkWindow; cdecl; external gtklib;
procedure gtk_window_set_destroy_with_parent(window: PGtkWindow; setting: Tgboolean); cdecl; external gtklib;
function gtk_window_get_destroy_with_parent(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_hide_on_close(window: PGtkWindow; setting: Tgboolean); cdecl; external gtklib;
function gtk_window_get_hide_on_close(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_mnemonics_visible(window: PGtkWindow; setting: Tgboolean); cdecl; external gtklib;
function gtk_window_get_mnemonics_visible(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_focus_visible(window: PGtkWindow; setting: Tgboolean); cdecl; external gtklib;
function gtk_window_get_focus_visible(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_resizable(window: PGtkWindow; resizable: Tgboolean); cdecl; external gtklib;
function gtk_window_get_resizable(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_display(window: PGtkWindow; display: PGdkDisplay); cdecl; external gtklib;
function gtk_window_is_active(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_decorated(window: PGtkWindow; setting: Tgboolean); cdecl; external gtklib;
function gtk_window_get_decorated(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_deletable(window: PGtkWindow; setting: Tgboolean); cdecl; external gtklib;
function gtk_window_get_deletable(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_set_icon_name(window: PGtkWindow; Name: PChar); cdecl; external gtklib;
function gtk_window_get_icon_name(window: PGtkWindow): PChar; cdecl; external gtklib;
procedure gtk_window_set_default_icon_name(Name: PChar); cdecl; external gtklib;
function gtk_window_get_default_icon_name: PChar; cdecl; external gtklib;
procedure gtk_window_set_auto_startup_notification(setting: Tgboolean); cdecl; external gtklib;
procedure gtk_window_set_modal(window: PGtkWindow; modal: Tgboolean); cdecl; external gtklib;
function gtk_window_get_modal(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
function gtk_window_get_toplevels: PGListModel; cdecl; external gtklib;
function gtk_window_list_toplevels: PGList; cdecl; external gtklib;
procedure gtk_window_present(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_present_with_time(window: PGtkWindow; timestamp: Tguint32); cdecl; external gtklib;
procedure gtk_window_minimize(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_unminimize(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_maximize(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_unmaximize(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_fullscreen(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_unfullscreen(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_fullscreen_on_monitor(window: PGtkWindow; monitor: PGdkMonitor); cdecl; external gtklib;
procedure gtk_window_close(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_set_default_size(window: PGtkWindow; Width: longint; Height: longint); cdecl; external gtklib;
procedure gtk_window_get_default_size(window: PGtkWindow; Width: Plongint; Height: Plongint); cdecl; external gtklib;
function gtk_window_get_group(window: PGtkWindow): PGtkWindowGroup; cdecl; external gtklib;
function gtk_window_has_group(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
function gtk_window_get_application(window: PGtkWindow): PGtkApplication; cdecl; external gtklib;
procedure gtk_window_set_application(window: PGtkWindow; application: PGtkApplication); cdecl; external gtklib;
procedure gtk_window_set_child(window: PGtkWindow; child: PGtkWidget); cdecl; external gtklib;
function gtk_window_get_child(window: PGtkWindow): PGtkWidget; cdecl; external gtklib;
procedure gtk_window_set_titlebar(window: PGtkWindow; titlebar: PGtkWidget); cdecl; external gtklib;
function gtk_window_get_titlebar(window: PGtkWindow): PGtkWidget; cdecl; external gtklib;
function gtk_window_is_maximized(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
function gtk_window_is_fullscreen(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
function gtk_window_is_suspended(window: PGtkWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_window_destroy(window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_set_interactive_debugging(enable: Tgboolean); cdecl; external gtklib;
procedure gtk_window_set_handle_menubar_accel(window: PGtkWindow; handle_menubar_accel: Tgboolean); cdecl; external gtklib;
function gtk_window_get_handle_menubar_accel(window: PGtkWindow): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 11-7-24 22:34:30 ===

function GTK_TYPE_WINDOW: TGType;
function GTK_WINDOW(obj: Pointer): PGtkWindow;
function GTK_WINDOW_CLASS(klass: Pointer): PGtkWindowClass;
function GTK_IS_WINDOW(obj: Pointer): Tgboolean;
function GTK_IS_WINDOW_CLASS(klass: Pointer): Tgboolean;
function GTK_WINDOW_GET_CLASS(obj: Pointer): PGtkWindowClass;

implementation

function GTK_TYPE_WINDOW: TGType;
begin
  GTK_TYPE_WINDOW := gtk_window_get_type;
end;

function GTK_WINDOW(obj: Pointer): PGtkWindow;
begin
  Result := PGtkWindow(g_type_check_instance_cast(obj, GTK_TYPE_WINDOW));
end;

function GTK_WINDOW_CLASS(klass: Pointer): PGtkWindowClass;
begin
  Result := PGtkWindowClass(g_type_check_class_cast(klass, GTK_TYPE_WINDOW));
end;

function GTK_IS_WINDOW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_WINDOW);
end;

function GTK_IS_WINDOW_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_WINDOW);
end;

function GTK_WINDOW_GET_CLASS(obj: Pointer): PGtkWindowClass;
begin
  Result := PGtkWindowClass(PGTypeInstance(obj)^.g_class);
end;



end.
