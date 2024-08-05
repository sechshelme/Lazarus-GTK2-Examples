/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGdkBroadwayMonitor = record
  end;
  PGdkBroadwayMonitor = ^TGdkBroadwayMonitor;

function gdk_broadway_monitor_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 18:13:33 ===

function GDK_TYPE_BROADWAY_MONITOR: TGType;
function GDK_BROADWAY_MONITOR(obj: Pointer): PGdkBroadwayMonitor;
function GDK_IS_BROADWAY_MONITOR(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

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



{$ENDIF read_implementation}
