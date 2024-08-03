unit gdkx11devicemanager_xi2;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkX11DeviceManagerXI2 = record
  end;
  PGdkX11DeviceManagerXI2 = ^TGdkX11DeviceManagerXI2;

  TGdkX11DeviceManagerXI2Class = record
  end;
  PGdkX11DeviceManagerXI2Class = ^TGdkX11DeviceManagerXI2Class;

function gdk_x11_device_manager_xi2_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:28:56 ===

function GDK_TYPE_X11_DEVICE_MANAGER_XI2: TGType;
function GDK_X11_DEVICE_MANAGER_XI2(obj: Pointer): PGdkX11DeviceManagerXI2;
function GDK_X11_DEVICE_MANAGER_XI2_CLASS(klass: Pointer): PGdkX11DeviceManagerXI2Class;
function GDK_IS_X11_DEVICE_MANAGER_XI2(obj: Pointer): Tgboolean;
function GDK_IS_X11_DEVICE_MANAGER_XI2_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_DEVICE_MANAGER_XI2_GET_CLASS(obj: Pointer): PGdkX11DeviceManagerXI2Class;

implementation

function GDK_TYPE_X11_DEVICE_MANAGER_XI2: TGType;
begin
  GDK_TYPE_X11_DEVICE_MANAGER_XI2 := gdk_x11_device_manager_xi2_get_type;
end;

function GDK_X11_DEVICE_MANAGER_XI2(obj: Pointer): PGdkX11DeviceManagerXI2;
begin
  Result := PGdkX11DeviceManagerXI2(g_type_check_instance_cast(obj, GDK_TYPE_X11_DEVICE_MANAGER_XI2));
end;

function GDK_X11_DEVICE_MANAGER_XI2_CLASS(klass: Pointer): PGdkX11DeviceManagerXI2Class;
begin
  Result := PGdkX11DeviceManagerXI2Class(g_type_check_class_cast(klass, GDK_TYPE_X11_DEVICE_MANAGER_XI2));
end;

function GDK_IS_X11_DEVICE_MANAGER_XI2(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_DEVICE_MANAGER_XI2);
end;

function GDK_IS_X11_DEVICE_MANAGER_XI2_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_DEVICE_MANAGER_XI2);
end;

function GDK_X11_DEVICE_MANAGER_XI2_GET_CLASS(obj: Pointer): PGdkX11DeviceManagerXI2Class;
begin
  Result := PGdkX11DeviceManagerXI2Class(PGTypeInstance(obj)^.g_class);
end;



end.
