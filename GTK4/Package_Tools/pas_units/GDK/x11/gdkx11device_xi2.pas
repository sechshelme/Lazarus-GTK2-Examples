unit gdkx11device_xi2;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkX11DeviceType = ^TGdkX11DeviceType;
  TGdkX11DeviceType = longint;

const
  GDK_X11_DEVICE_TYPE_LOGICAL = 0;
  GDK_X11_DEVICE_TYPE_PHYSICAL = 1;
  GDK_X11_DEVICE_TYPE_FLOATING = 2;

type
  TGdkX11DeviceXI2 = record
  end;
  PGdkX11DeviceXI2 = ^TGdkX11DeviceXI2;

  TGdkX11DeviceXI2Class = record
  end;
  PGdkX11DeviceXI2Class = ^TGdkX11DeviceXI2Class;


function gdk_x11_device_xi2_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:29:06 ===

function GDK_TYPE_X11_DEVICE_XI2: TGType;
function GDK_X11_DEVICE_XI2(obj: Pointer): PGdkX11DeviceXI2;
function GDK_X11_DEVICE_XI2_CLASS(klass: Pointer): PGdkX11DeviceXI2Class;
function GDK_IS_X11_DEVICE_XI2(obj: Pointer): Tgboolean;
function GDK_IS_X11_DEVICE_XI2_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_DEVICE_XI2_GET_CLASS(obj: Pointer): PGdkX11DeviceXI2Class;

implementation

function GDK_TYPE_X11_DEVICE_XI2: TGType;
begin
  GDK_TYPE_X11_DEVICE_XI2 := gdk_x11_device_xi2_get_type;
end;

function GDK_X11_DEVICE_XI2(obj: Pointer): PGdkX11DeviceXI2;
begin
  Result := PGdkX11DeviceXI2(g_type_check_instance_cast(obj, GDK_TYPE_X11_DEVICE_XI2));
end;

function GDK_X11_DEVICE_XI2_CLASS(klass: Pointer): PGdkX11DeviceXI2Class;
begin
  Result := PGdkX11DeviceXI2Class(g_type_check_class_cast(klass, GDK_TYPE_X11_DEVICE_XI2));
end;

function GDK_IS_X11_DEVICE_XI2(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_DEVICE_XI2);
end;

function GDK_IS_X11_DEVICE_XI2_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_DEVICE_XI2);
end;

function GDK_X11_DEVICE_XI2_GET_CLASS(obj: Pointer): PGdkX11DeviceXI2Class;
begin
  Result := PGdkX11DeviceXI2Class(PGTypeInstance(obj)^.g_class);
end;



end.
