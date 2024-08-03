unit gdkx11display;

interface

uses
  x, xlib, glib2, common_GTK, gdktypes, gdkcursor, gdkmonitor, GdkX11Screen;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkX11Display = ^TGdkX11Display;
  TGdkX11Display = TGdkDisplay;

  TGdkX11DisplayClass = record
  end;
  PGdkX11DisplayClass = ^TGdkX11DisplayClass;

function gdk_x11_display_get_type: TGType; cdecl; external gtklib;
function gdk_x11_display_open(display_name: PChar): PGdkDisplay; cdecl; external gtklib;
function gdk_x11_display_get_xdisplay(display: PGdkDisplay): PDisplay; cdecl; external gtklib;
function gdk_x11_display_get_xscreen(display: PGdkDisplay): PScreen; cdecl; external gtklib;
function gdk_x11_display_get_xrootwindow(display: PGdkDisplay): TWindow; cdecl; external gtklib;
function gdk_x11_display_get_xcursor(display: PGdkDisplay; cursor: PGdkCursor): TCursor; cdecl; external gtklib;
function gdk_x11_display_get_user_time(display: PGdkDisplay): Tguint32; cdecl; external gtklib;
function gdk_x11_display_get_startup_notification_id(display: PGdkDisplay): PChar; cdecl; external gtklib;
procedure gdk_x11_display_set_startup_notification_id(display: PGdkDisplay; startup_id: PChar); cdecl; external gtklib;
procedure gdk_x11_display_set_program_class(display: PGdkDisplay; program_class: PChar); cdecl; external gtklib;
procedure gdk_x11_display_set_cursor_theme(display: PGdkDisplay; theme: PChar; size: longint); cdecl; external gtklib;
procedure gdk_x11_display_broadcast_startup_message(display: PGdkDisplay; message_type: PChar; args: array of const); cdecl; external gtklib;
procedure gdk_x11_display_broadcast_startup_message(display: PGdkDisplay; message_type: PChar); cdecl; external gtklib;
function gdk_x11_lookup_xdisplay(xdisplay: PDisplay): PGdkDisplay; cdecl; external gtklib;
function gdk_x11_display_get_screen(display: PGdkDisplay): PGdkX11Screen; cdecl; external gtklib;
function gdk_x11_display_get_primary_monitor(display: PGdkDisplay): PGdkMonitor; cdecl; external gtklib;
procedure gdk_x11_display_grab(display: PGdkDisplay); cdecl; external gtklib;
procedure gdk_x11_display_ungrab(display: PGdkDisplay); cdecl; external gtklib;
procedure gdk_x11_display_set_surface_scale(display: PGdkDisplay; scale: longint); cdecl; external gtklib;
procedure gdk_x11_display_error_trap_push(display: PGdkDisplay); cdecl; external gtklib;
function gdk_x11_display_error_trap_pop(display: PGdkDisplay): longint; cdecl; external gtklib;
procedure gdk_x11_display_error_trap_pop_ignored(display: PGdkDisplay); cdecl; external gtklib;
procedure gdk_x11_set_sm_client_id(sm_client_id: PChar); cdecl; external gtklib;
function gdk_x11_display_get_default_group(display: PGdkDisplay): PGdkSurface; cdecl; external gtklib;

function GDK_DISPLAY_XDISPLAY(display: PGdkDisplay): PDisplay;

// === Konventiert am: 3-8-24 17:42:13 ===

function GDK_TYPE_X11_DISPLAY: TGType;
function GDK_X11_DISPLAY(obj: Pointer): PGdkX11Display;
function GDK_X11_DISPLAY_CLASS(klass: Pointer): PGdkX11DisplayClass;
function GDK_IS_X11_DISPLAY(obj: Pointer): Tgboolean;
function GDK_IS_X11_DISPLAY_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_DISPLAY_GET_CLASS(obj: Pointer): PGdkX11DisplayClass;

implementation

function GDK_TYPE_X11_DISPLAY: TGType;
begin
  GDK_TYPE_X11_DISPLAY := gdk_x11_display_get_type;
end;

function GDK_X11_DISPLAY(obj: Pointer): PGdkX11Display;
begin
  Result := PGdkX11Display(g_type_check_instance_cast(obj, GDK_TYPE_X11_DISPLAY));
end;

function GDK_X11_DISPLAY_CLASS(klass: Pointer): PGdkX11DisplayClass;
begin
  Result := PGdkX11DisplayClass(g_type_check_class_cast(klass, GDK_TYPE_X11_DISPLAY));
end;

function GDK_IS_X11_DISPLAY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_DISPLAY);
end;

function GDK_IS_X11_DISPLAY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_DISPLAY);
end;

function GDK_X11_DISPLAY_GET_CLASS(obj: Pointer): PGdkX11DisplayClass;
begin
  Result := PGdkX11DisplayClass(PGTypeInstance(obj)^.g_class);
end;

// ====

function GDK_DISPLAY_XDISPLAY(display: PGdkDisplay): PDisplay;
begin
  GDK_DISPLAY_XDISPLAY := gdk_x11_display_get_xdisplay(display);
end;


end.
