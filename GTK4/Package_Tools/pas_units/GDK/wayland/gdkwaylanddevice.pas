unit gdkwaylanddevice;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkWaylandDevice = ^TGdkWaylandDevice;
  TGdkWaylandDevice = TGdkDevice;

  TGdkWaylandDeviceClass = record
  end;
  PGdkWaylandDeviceClass = ^TGdkWaylandDeviceClass;

function gdk_wayland_device_get_type: TGType; cdecl; external gtklib;
function gdk_wayland_device_get_wl_seat(device: PGdkDevice): Pwl_seat; cdecl; external gtklib;
function gdk_wayland_device_get_wl_pointer(device: PGdkDevice): Pwl_pointer; cdecl; external gtklib;
function gdk_wayland_device_get_wl_keyboard(device: PGdkDevice): Pwl_keyboard; cdecl; external gtklib;
function gdk_wayland_device_get_xkb_keymap(device: PGdkDevice): Pxkb_keymap; cdecl; external gtklib;
function gdk_wayland_device_get_node_path(device: PGdkDevice): PChar; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:13 ===

function GDK_TYPE_WAYLAND_DEVICE: TGType;
function GDK_WAYLAND_DEVICE(obj: Pointer): PGdkWaylandDevice;
function GDK_WAYLAND_DEVICE_CLASS(klass: Pointer): PGdkWaylandDeviceClass;
function GDK_IS_WAYLAND_DEVICE(obj: Pointer): Tgboolean;
function GDK_IS_WAYLAND_DEVICE_CLASS(klass: Pointer): Tgboolean;
function GDK_WAYLAND_DEVICE_GET_CLASS(obj: Pointer): PGdkWaylandDeviceClass;

implementation

function GDK_TYPE_WAYLAND_DEVICE: TGType;
begin
  GDK_TYPE_WAYLAND_DEVICE := gdk_wayland_device_get_type;
end;

function GDK_WAYLAND_DEVICE(obj: Pointer): PGdkWaylandDevice;
begin
  Result := PGdkWaylandDevice(g_type_check_instance_cast(obj, GDK_TYPE_WAYLAND_DEVICE));
end;

function GDK_WAYLAND_DEVICE_CLASS(klass: Pointer): PGdkWaylandDeviceClass;
begin
  Result := PGdkWaylandDeviceClass(g_type_check_class_cast(klass, GDK_TYPE_WAYLAND_DEVICE));
end;

function GDK_IS_WAYLAND_DEVICE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_WAYLAND_DEVICE);
end;

function GDK_IS_WAYLAND_DEVICE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_WAYLAND_DEVICE);
end;

function GDK_WAYLAND_DEVICE_GET_CLASS(obj: Pointer): PGdkWaylandDeviceClass;
begin
  Result := PGdkWaylandDeviceClass(PGTypeInstance(obj)^.g_class);
end;



end.
