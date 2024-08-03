unit gdkx11monitor;

interface

uses
  x, glib2, common_GTK, gdkmonitor, gdkrectangle;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkX11Monitor = record
  end;
  PGdkX11Monitor = ^TGdkX11Monitor;

function gdk_x11_monitor_get_type: TGType; cdecl; external gtklib;
function gdk_x11_monitor_get_output(monitor: PGdkMonitor): TXID; cdecl; external gtklib;
procedure gdk_x11_monitor_get_workarea(monitor: PGdkMonitor; workarea: PGdkRectangle); cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:42:43 ===

function GDK_TYPE_X11_MONITOR: TGType;
function GDK_X11_MONITOR(obj: Pointer): PGdkX11Monitor;
function GDK_IS_X11_MONITOR(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_X11_MONITOR: TGType;
begin
  GDK_TYPE_X11_MONITOR := gdk_x11_monitor_get_type;
end;

function GDK_X11_MONITOR(obj: Pointer): PGdkX11Monitor;
begin
  Result := PGdkX11Monitor(g_type_check_instance_cast(obj, GDK_TYPE_X11_MONITOR));
end;

function GDK_IS_X11_MONITOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_MONITOR);
end;



end.
