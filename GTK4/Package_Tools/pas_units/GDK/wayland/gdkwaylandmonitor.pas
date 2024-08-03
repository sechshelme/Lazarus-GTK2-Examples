unit gdkwaylandmonitor;

interface

uses
  glib2, common_GTK, gdkmonitor;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



type
  TGdkWaylandMonitor = record
  end;
  PGdkWaylandMonitor = ^TGdkWaylandMonitor;

function gdk_wayland_monitor_get_type: TGType; cdecl; external gtklib;
function gdk_wayland_monitor_get_wl_output(monitor: PGdkMonitor): Pwl_output; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:31 ===

function GDK_TYPE_WAYLAND_MONITOR: TGType;
function GDK_WAYLAND_MONITOR(obj: Pointer): PGdkWaylandMonitor;
function GDK_IS_WAYLAND_MONITOR(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_WAYLAND_MONITOR: TGType;
begin
  GDK_TYPE_WAYLAND_MONITOR := gdk_wayland_monitor_get_type;
end;

function GDK_WAYLAND_MONITOR(obj: Pointer): PGdkWaylandMonitor;
begin
  Result := PGdkWaylandMonitor(g_type_check_instance_cast(obj, GDK_TYPE_WAYLAND_MONITOR));
end;

function GDK_IS_WAYLAND_MONITOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_WAYLAND_MONITOR);
end;



end.
