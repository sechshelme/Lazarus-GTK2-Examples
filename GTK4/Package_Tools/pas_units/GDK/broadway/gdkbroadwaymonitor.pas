unit gdkbroadwaymonitor;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGdkBroadwayMonitor = record
  end;
  PGdkBroadwayMonitor = ^TGdkBroadwayMonitor;

function gdk_broadway_monitor_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 18:13:33 ===

function GDK_TYPE_BROADWAY_MONITOR: TGType;
function GDK_BROADWAY_MONITOR(obj: Pointer): PGdkBroadwayMonitor;
function GDK_IS_BROADWAY_MONITOR(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_BROADWAY_MONITOR: TGType;
begin
  GDK_TYPE_BROADWAY_MONITOR := gdk_broadway_monitor_get_type;
end;

function GDK_BROADWAY_MONITOR(obj: Pointer): PGdkBroadwayMonitor;
begin
  Result := PGdkBroadwayMonitor(g_type_check_instance_cast(obj, GDK_TYPE_BROADWAY_MONITOR));
end;

function GDK_IS_BROADWAY_MONITOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_BROADWAY_MONITOR);
end;



end.
