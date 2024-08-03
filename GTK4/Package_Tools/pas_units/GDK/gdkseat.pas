unit gdkseat;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  PGdkSeatCapabilities = ^TGdkSeatCapabilities;
  TGdkSeatCapabilities = longint;

const
  GDK_SEAT_CAPABILITY_NONE = 0;
  GDK_SEAT_CAPABILITY_POINTER = 1 shl 0;
  GDK_SEAT_CAPABILITY_TOUCH = 1 shl 1;
  GDK_SEAT_CAPABILITY_TABLET_STYLUS = 1 shl 2;
  GDK_SEAT_CAPABILITY_KEYBOARD = 1 shl 3;
  GDK_SEAT_CAPABILITY_TABLET_PAD = 1 shl 4;
  GDK_SEAT_CAPABILITY_ALL_POINTING = (GDK_SEAT_CAPABILITY_POINTER or GDK_SEAT_CAPABILITY_TOUCH) or GDK_SEAT_CAPABILITY_TABLET_STYLUS;
  GDK_SEAT_CAPABILITY_ALL = (GDK_SEAT_CAPABILITY_ALL_POINTING or GDK_SEAT_CAPABILITY_KEYBOARD) or GDK_SEAT_CAPABILITY_TABLET_PAD;

type
  PGdkSeat = ^TGdkSeat;

  TGdkSeat = record
    parent_instance: TGObject;
  end;


function gdk_seat_get_type: TGType; cdecl; external gtklib;
function gdk_seat_get_display(seat: PGdkSeat): PGdkDisplay; cdecl; external gtklib;
function gdk_seat_get_capabilities(seat: PGdkSeat): TGdkSeatCapabilities; cdecl; external gtklib;
function gdk_seat_get_devices(seat: PGdkSeat; capabilities: TGdkSeatCapabilities): PGList; cdecl; external gtklib;
function gdk_seat_get_tools(seat: PGdkSeat): PGList; cdecl; external gtklib;
function gdk_seat_get_pointer(seat: PGdkSeat): PGdkDevice; cdecl; external gtklib;
function gdk_seat_get_keyboard(seat: PGdkSeat): PGdkDevice; cdecl; external gtklib;

// === Konventiert am: 30-7-24 17:45:50 ===

function GDK_TYPE_SEAT: TGType;
function GDK_SEAT(obj: Pointer): PGdkSeat;
function GDK_IS_SEAT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_SEAT: TGType;
begin
  GDK_TYPE_SEAT := gdk_seat_get_type;
end;

function GDK_SEAT(obj: Pointer): PGdkSeat;
begin
  Result := PGdkSeat(g_type_check_instance_cast(obj, GDK_TYPE_SEAT));
end;

function GDK_IS_SEAT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_SEAT);
end;



end.
