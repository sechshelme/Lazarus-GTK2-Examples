unit gdkx11device;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


function gdk_x11_device_get_id(device: PGdkDevice): longint; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:26:48 ===


implementation



end.
