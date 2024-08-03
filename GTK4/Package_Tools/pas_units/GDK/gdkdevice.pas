unit gdkdevice;

interface

uses
  glib2, pango, common_GTK, gdkenums, gdktypes, gdkseat, gdkdevicetool;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  // ausgelagert wegen gdkseat.h
  //TGdkDevice = record
  //end;
  //PGdkDevice = ^TGdkDevice;

  PGdkInputSource = ^TGdkInputSource;
  TGdkInputSource = longint;

const
  GDK_SOURCE_MOUSE = 0;
  GDK_SOURCE_PEN = 1;
  GDK_SOURCE_KEYBOARD = 2;
  GDK_SOURCE_TOUCHSCREEN = 3;
  GDK_SOURCE_TOUCHPAD = 4;
  GDK_SOURCE_TRACKPOINT = 5;
  GDK_SOURCE_TABLET_PAD = 6;

type
  TGdkTimeCoord = record
    time: Tguint32;
    flags: TGdkAxisFlags;
    axes: array[0..(GDK_AXIS_LAST) - 1] of Tdouble;
  end;
  PGdkTimeCoord = ^TGdkTimeCoord;
  PPGdkTimeCoord = ^PGdkTimeCoord;

function gdk_device_get_type: TGType; cdecl; external gtklib;
function gdk_device_get_name(device: PGdkDevice): PChar; cdecl; external gtklib;
function gdk_device_get_vendor_id(device: PGdkDevice): PChar; cdecl; external gtklib;
function gdk_device_get_product_id(device: PGdkDevice): PChar; cdecl; external gtklib;
function gdk_device_get_display(device: PGdkDevice): PGdkDisplay; cdecl; external gtklib;
function gdk_device_get_seat(device: PGdkDevice): PGdkSeat; cdecl; external gtklib;
function gdk_device_get_device_tool(device: PGdkDevice): PGdkDeviceTool; cdecl; external gtklib;
function gdk_device_get_source(device: PGdkDevice): TGdkInputSource; cdecl; external gtklib;
function gdk_device_get_has_cursor(device: PGdkDevice): Tgboolean; cdecl; external gtklib;
function gdk_device_get_num_touches(device: PGdkDevice): Tguint; cdecl; external gtklib;
function gdk_device_get_modifier_state(device: PGdkDevice): TGdkModifierType; cdecl; external gtklib;
function gdk_device_get_direction(device: PGdkDevice): TPangoDirection; cdecl; external gtklib;
function gdk_device_has_bidi_layouts(device: PGdkDevice): Tgboolean; cdecl; external gtklib;
function gdk_device_get_caps_lock_state(device: PGdkDevice): Tgboolean; cdecl; external gtklib;
function gdk_device_get_num_lock_state(device: PGdkDevice): Tgboolean; cdecl; external gtklib;
function gdk_device_get_scroll_lock_state(device: PGdkDevice): Tgboolean; cdecl; external gtklib;
function gdk_device_get_surface_at_position(device: PGdkDevice; win_x: Pdouble; win_y: Pdouble): PGdkSurface; cdecl; external gtklib;
function gdk_device_get_timestamp(device: PGdkDevice): Tguint32; cdecl; external gtklib;

// === Konventiert am: 31-7-24 19:15:07 ===

function GDK_TYPE_DEVICE: TGType;
function GDK_DEVICE(obj: Pointer): PGdkDevice;
function GDK_IS_DEVICE(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_DEVICE: TGType;
begin
  GDK_TYPE_DEVICE := gdk_device_get_type;
end;

function GDK_DEVICE(obj: Pointer): PGdkDevice;
begin
  Result := PGdkDevice(g_type_check_instance_cast(obj, GDK_TYPE_DEVICE));
end;

function GDK_IS_DEVICE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DEVICE);
end;



end.
