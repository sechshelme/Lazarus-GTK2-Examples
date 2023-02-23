
unit gdkseat;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkseat.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkseat.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkSeat  = ^GdkSeat;
PGdkSeatCapabilities  = ^GdkSeatCapabilities;
PGList  = ^GList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_SEAT_H__}
{$define __GDK_SEAT_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdksurface.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_SEAT : longint; { return type might be wrong }

function GDK_SEAT(o : longint) : longint;

function GDK_IS_SEAT(o : longint) : longint;


type
  PGdkSeatCapabilities = ^TGdkSeatCapabilities;
  TGdkSeatCapabilities = (GDK_SEAT_CAPABILITY_NONE := 0,GDK_SEAT_CAPABILITY_POINTER := 1 shl 0,
    GDK_SEAT_CAPABILITY_TOUCH := 1 shl 1,GDK_SEAT_CAPABILITY_TABLET_STYLUS := 1 shl 2,
    GDK_SEAT_CAPABILITY_KEYBOARD := 1 shl 3,GDK_SEAT_CAPABILITY_TABLET_PAD := 1 shl 4,
    GDK_SEAT_CAPABILITY_ALL_POINTING := (GDK_SEAT_CAPABILITY_POINTER or GDK_SEAT_CAPABILITY_TOUCH) or GDK_SEAT_CAPABILITY_TABLET_STYLUS,
    GDK_SEAT_CAPABILITY_ALL := GDK_SEAT_CAPABILITY_ALL_POINTING or GDK_SEAT_CAPABILITY_KEYBOARD);
  PGdkSeat = ^TGdkSeat;
  TGdkSeat = record
      parent_instance : TGObject;
    end;



function gdk_seat_get_type:TGType;cdecl;external;

function gdk_seat_get_display(seat:PGdkSeat):PGdkDisplay;cdecl;external;

function gdk_seat_get_capabilities(seat:PGdkSeat):TGdkSeatCapabilities;cdecl;external;

function gdk_seat_get_devices(seat:PGdkSeat; capabilities:TGdkSeatCapabilities):PGList;cdecl;external;

function gdk_seat_get_tools(seat:PGdkSeat):PGList;cdecl;external;

function gdk_seat_get_pointer(seat:PGdkSeat):PGdkDevice;cdecl;external;

function gdk_seat_get_keyboard(seat:PGdkSeat):PGdkDevice;cdecl;external;

{$endif}


implementation

function GDK_TYPE_SEAT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SEAT:=gdk_seat_get_type;
  end;

function GDK_SEAT(o : longint) : longint;
begin
  GDK_SEAT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_SEAT,GdkSeat);
end;

function GDK_IS_SEAT(o : longint) : longint;
begin
  GDK_IS_SEAT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_SEAT);
end;


end.
