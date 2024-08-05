unit gdkx11devicemanager;

interface

uses
  glib2, common_GTK, gdktypes, gdkx11devicemanager_xi2;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

function gdk_x11_device_manager_lookup(device_manager: PGdkX11DeviceManagerXI2; device_id: longint): PGdkDevice; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:26:55 ===


implementation



end.
