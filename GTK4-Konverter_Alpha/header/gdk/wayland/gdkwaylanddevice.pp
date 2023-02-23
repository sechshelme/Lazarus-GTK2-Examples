
unit gdkwaylanddevice;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylanddevice.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylanddevice.h
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
    PGdkDevice  = ^GdkDevice;
    PGdkWaylandDevice  = ^GdkWaylandDevice;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_WAYLAND_DEVICE_H__}
{$define __GDK_WAYLAND_DEVICE_H__}
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkWaylandDevice = ^TGdkWaylandDevice;
  TGdkWaylandDevice = TGdkDevice;
{$endif}
type

function GDK_TYPE_WAYLAND_DEVICE : longint; { return type might be wrong }

function GDK_WAYLAND_DEVICE(o : longint) : longint;

function GDK_WAYLAND_DEVICE_CLASS(c : longint) : longint;

function GDK_IS_WAYLAND_DEVICE(o : longint) : longint;

function GDK_IS_WAYLAND_DEVICE_CLASS(c : longint) : longint;

function GDK_WAYLAND_DEVICE_GET_CLASS(o : longint) : longint;


function gdk_wayland_device_get_type:TGType;cdecl;external;

(* error 
struct wl_seat      *gdk_wayland_device_get_wl_seat         (GdkDevice *device);
in declaration at line 50 *)

(* error 
struct wl_pointer   *gdk_wayland_device_get_wl_pointer      (GdkDevice *device);
in declaration at line 52 *)

(* error 
struct wl_keyboard  *gdk_wayland_device_get_wl_keyboard     (GdkDevice *device);
in declaration at line 54 *)

(* error 
struct xkb_keymap   *gdk_wayland_device_get_xkb_keymap      (GdkDevice *device);
in declaration at line 56 *)

function gdk_wayland_device_get_node_path(device:PGdkDevice):Pchar;cdecl;external;

{$endif}


implementation

function GDK_TYPE_WAYLAND_DEVICE : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_DEVICE:=gdk_wayland_device_get_type;
  end;

function GDK_WAYLAND_DEVICE(o : longint) : longint;
begin
  GDK_WAYLAND_DEVICE:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDevice);
end;

function GDK_WAYLAND_DEVICE_CLASS(c : longint) : longint;
begin
  GDK_WAYLAND_DEVICE_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDeviceClass);
end;

function GDK_IS_WAYLAND_DEVICE(o : longint) : longint;
begin
  GDK_IS_WAYLAND_DEVICE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_WAYLAND_DEVICE);
end;

function GDK_IS_WAYLAND_DEVICE_CLASS(c : longint) : longint;
begin
  GDK_IS_WAYLAND_DEVICE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_WAYLAND_DEVICE);
end;

function GDK_WAYLAND_DEVICE_GET_CLASS(o : longint) : longint;
begin
  GDK_WAYLAND_DEVICE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDeviceClass);
end;


end.
