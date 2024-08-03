unit gdkx11screen;

interface

uses
  x, xlib, glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkX11Screen = record
  end;
  PGdkX11Screen = ^TGdkX11Screen;

  TGdkX11ScreenClass = record
  end;
  PGdkX11ScreenClass = ^TGdkX11ScreenClass;

function gdk_x11_screen_get_type: TGType; cdecl; external gtklib;
function gdk_x11_screen_get_xscreen(screen: PGdkX11Screen): PScreen; cdecl; external gtklib;
function gdk_x11_screen_get_screen_number(screen: PGdkX11Screen): longint; cdecl; external gtklib;
function gdk_x11_screen_get_window_manager_name(screen: PGdkX11Screen): PChar; cdecl; external gtklib;
function gdk_x11_screen_supports_net_wm_hint(screen: PGdkX11Screen; property_name: PChar): Tgboolean; cdecl; external gtklib;
function gdk_x11_screen_get_monitor_output(screen: PGdkX11Screen; monitor_num: longint): TXID; cdecl; external gtklib;
function gdk_x11_screen_get_number_of_desktops(screen: PGdkX11Screen): Tguint32; cdecl; external gtklib;
function gdk_x11_screen_get_current_desktop(screen: PGdkX11Screen): Tguint32; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:50:33 ===

function GDK_TYPE_X11_SCREEN: TGType;
function GDK_X11_SCREEN(obj: Pointer): PGdkX11Screen;
function GDK_X11_SCREEN_CLASS(klass: Pointer): PGdkX11ScreenClass;
function GDK_IS_X11_SCREEN(obj: Pointer): Tgboolean;
function GDK_IS_X11_SCREEN_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_SCREEN_GET_CLASS(obj: Pointer): PGdkX11ScreenClass;

implementation

function GDK_TYPE_X11_SCREEN: TGType;
begin
  GDK_TYPE_X11_SCREEN := gdk_x11_screen_get_type;
end;

function GDK_X11_SCREEN(obj: Pointer): PGdkX11Screen;
begin
  Result := PGdkX11Screen(g_type_check_instance_cast(obj, GDK_TYPE_X11_SCREEN));
end;

function GDK_X11_SCREEN_CLASS(klass: Pointer): PGdkX11ScreenClass;
begin
  Result := PGdkX11ScreenClass(g_type_check_class_cast(klass, GDK_TYPE_X11_SCREEN));
end;

function GDK_IS_X11_SCREEN(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_SCREEN);
end;

function GDK_IS_X11_SCREEN_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_SCREEN);
end;

function GDK_X11_SCREEN_GET_CLASS(obj: Pointer): PGdkX11ScreenClass;
begin
  Result := PGdkX11ScreenClass(PGTypeInstance(obj)^.g_class);
end;



end.
