/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkSubpixelLayout = ^TGdkSubpixelLayout;
  TGdkSubpixelLayout = longint;

const
  GDK_SUBPIXEL_LAYOUT_UNKNOWN = 0;
  GDK_SUBPIXEL_LAYOUT_NONE = 1;
  GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB = 2;
  GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR = 3;
  GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB = 4;
  GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR = 5;

type
  TGdkMonitor = record
  end;
  PGdkMonitor = ^TGdkMonitor;

function gdk_monitor_get_type: TGType; cdecl; external gtklib;
function gdk_monitor_get_display(monitor: PGdkMonitor): PGdkDisplay; cdecl; external gtklib;
procedure gdk_monitor_get_geometry(monitor: PGdkMonitor; geometry: PGdkRectangle); cdecl; external gtklib;
function gdk_monitor_get_width_mm(monitor: PGdkMonitor): longint; cdecl; external gtklib;
function gdk_monitor_get_height_mm(monitor: PGdkMonitor): longint; cdecl; external gtklib;
function gdk_monitor_get_manufacturer(monitor: PGdkMonitor): PChar; cdecl; external gtklib;
function gdk_monitor_get_model(monitor: PGdkMonitor): PChar; cdecl; external gtklib;
function gdk_monitor_get_connector(monitor: PGdkMonitor): PChar; cdecl; external gtklib;
function gdk_monitor_get_scale_factor(monitor: PGdkMonitor): longint; cdecl; external gtklib;
function gdk_monitor_get_scale(monitor: PGdkMonitor): Tdouble; cdecl; external gtklib;
function gdk_monitor_get_refresh_rate(monitor: PGdkMonitor): longint; cdecl; external gtklib;
function gdk_monitor_get_subpixel_layout(monitor: PGdkMonitor): TGdkSubpixelLayout; cdecl; external gtklib;
function gdk_monitor_is_valid(monitor: PGdkMonitor): Tgboolean; cdecl; external gtklib;
function gdk_monitor_get_description(monitor: PGdkMonitor): PChar; cdecl; external gtklib;

// === Konventiert am: 2-8-24 14:38:31 ===

function GDK_TYPE_MONITOR: TGType;
function GDK_MONITOR(obj: Pointer): PGdkMonitor;
function GDK_IS_MONITOR(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_MONITOR: TGType;
begin
  GDK_TYPE_MONITOR := gdk_monitor_get_type;
end;

function GDK_MONITOR(obj: Pointer): PGdkMonitor;
begin
  Result := PGdkMonitor(g_type_check_instance_cast(obj, GDK_TYPE_MONITOR));
end;

function GDK_IS_MONITOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_MONITOR);
end;



{$ENDIF read_implementation}
