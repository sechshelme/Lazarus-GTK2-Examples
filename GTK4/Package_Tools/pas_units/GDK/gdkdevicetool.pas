unit gdkdevicetool;

interface

uses
  glib2, common_GTK, gdkenums;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkDeviceToolType = ^TGdkDeviceToolType;
  TGdkDeviceToolType = longint;

const
  GDK_DEVICE_TOOL_TYPE_UNKNOWN = 0;
  GDK_DEVICE_TOOL_TYPE_PEN = 1;
  GDK_DEVICE_TOOL_TYPE_ERASER = 2;
  GDK_DEVICE_TOOL_TYPE_BRUSH = 3;
  GDK_DEVICE_TOOL_TYPE_PENCIL = 4;
  GDK_DEVICE_TOOL_TYPE_AIRBRUSH = 5;
  GDK_DEVICE_TOOL_TYPE_MOUSE = 6;
  GDK_DEVICE_TOOL_TYPE_LENS = 7;

type
  TGdkDeviceTool = record
  end;
  PGdkDeviceTool = ^TGdkDeviceTool;

function gdk_device_tool_get_type: TGType; cdecl; external gtklib;
function gdk_device_tool_get_serial(tool: PGdkDeviceTool): Tguint64; cdecl; external gtklib;
function gdk_device_tool_get_hardware_id(tool: PGdkDeviceTool): Tguint64; cdecl; external gtklib;
function gdk_device_tool_get_tool_type(tool: PGdkDeviceTool): TGdkDeviceToolType; cdecl; external gtklib;
function gdk_device_tool_get_axes(tool: PGdkDeviceTool): TGdkAxisFlags; cdecl; external gtklib;

// === Konventiert am: 2-8-24 14:38:17 ===

function GDK_TYPE_DEVICE_TOOL: TGType;
function GDK_DEVICE_TOOL(obj: Pointer): PGdkDeviceTool;
function GDK_IS_DEVICE_TOOL(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_DEVICE_TOOL: TGType;
begin
  GDK_TYPE_DEVICE_TOOL := gdk_device_tool_get_type;
end;

function GDK_DEVICE_TOOL(obj: Pointer): PGdkDeviceTool;
begin
  Result := PGdkDeviceTool(g_type_check_instance_cast(obj, GDK_TYPE_DEVICE_TOOL));
end;

function GDK_IS_DEVICE_TOOL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DEVICE_TOOL);
end;



end.
