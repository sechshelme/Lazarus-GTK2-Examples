
unit gdkdevice;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdevice.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdevice.h
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
Pchar  = ^char;
Pdouble  = ^double;
PGdkDevice  = ^GdkDevice;
PGdkDeviceTool  = ^GdkDeviceTool;
PGdkDisplay  = ^GdkDisplay;
PGdkInputSource  = ^GdkInputSource;
PGdkSeat  = ^GdkSeat;
PGdkSurface  = ^GdkSurface;
PGdkTimeCoord  = ^GdkTimeCoord;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DEVICE_H__}
{$define __GDK_DEVICE_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkdevicetool.h>}
{$include <gdk/gdkenums.h>}


function GDK_TYPE_DEVICE : longint; { return type might be wrong }

function GDK_DEVICE(o : longint) : longint;

function GDK_IS_DEVICE(o : longint) : longint;

type


  PGdkInputSource = ^TGdkInputSource;
  TGdkInputSource = (GDK_SOURCE_MOUSE,GDK_SOURCE_PEN,GDK_SOURCE_KEYBOARD,
    GDK_SOURCE_TOUCHSCREEN,GDK_SOURCE_TOUCHPAD,
    GDK_SOURCE_TRACKPOINT,GDK_SOURCE_TABLET_PAD
    );

  PGdkTimeCoord = ^TGdkTimeCoord;
  TGdkTimeCoord = record
      time : Tguint32;
      flags : TGdkAxisFlags;
      axes : array[0..(GDK_AXIS_LAST)-1] of Tdouble;
    end;



function gdk_device_get_type:TGType;cdecl;external;

function gdk_device_get_name(device:PGdkDevice):Pchar;cdecl;external;

function gdk_device_get_vendor_id(device:PGdkDevice):Pchar;cdecl;external;

function gdk_device_get_product_id(device:PGdkDevice):Pchar;cdecl;external;

function gdk_device_get_display(device:PGdkDevice):PGdkDisplay;cdecl;external;

function gdk_device_get_seat(device:PGdkDevice):PGdkSeat;cdecl;external;

function gdk_device_get_device_tool(device:PGdkDevice):PGdkDeviceTool;cdecl;external;

function gdk_device_get_source(device:PGdkDevice):TGdkInputSource;cdecl;external;

function gdk_device_get_has_cursor(device:PGdkDevice):Tgboolean;cdecl;external;

function gdk_device_get_num_touches(device:PGdkDevice):Tguint;cdecl;external;

function gdk_device_get_modifier_state(device:PGdkDevice):TGdkModifierType;cdecl;external;

function gdk_device_get_direction(device:PGdkDevice):TPangoDirection;cdecl;external;

function gdk_device_has_bidi_layouts(device:PGdkDevice):Tgboolean;cdecl;external;

function gdk_device_get_caps_lock_state(device:PGdkDevice):Tgboolean;cdecl;external;

function gdk_device_get_num_lock_state(device:PGdkDevice):Tgboolean;cdecl;external;

function gdk_device_get_scroll_lock_state(device:PGdkDevice):Tgboolean;cdecl;external;

function gdk_device_get_surface_at_position(device:PGdkDevice; win_x:Pdouble; win_y:Pdouble):PGdkSurface;cdecl;external;

function gdk_device_get_timestamp(device:PGdkDevice):Tguint32;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DEVICE : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE:=gdk_device_get_type;
  end;

function GDK_DEVICE(o : longint) : longint;
begin
  GDK_DEVICE:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE,GdkDevice);
end;

function GDK_IS_DEVICE(o : longint) : longint;
begin
  GDK_IS_DEVICE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE);
end;


end.
