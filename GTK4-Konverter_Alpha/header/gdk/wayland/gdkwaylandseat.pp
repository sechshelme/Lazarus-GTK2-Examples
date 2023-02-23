
unit gdkwaylandseat;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandseat.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandseat.h
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
    PGdkWaylandSeat  = ^GdkWaylandSeat;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkWaylandSeat = ^TGdkWaylandSeat;
  TGdkWaylandSeat = TGdkSeat;
{$endif}
type

function GDK_TYPE_WAYLAND_SEAT : longint; { return type might be wrong }

function GDK_WAYLAND_SEAT(o : longint) : longint;

function GDK_IS_WAYLAND_SEAT(o : longint) : longint;


function gdk_wayland_seat_get_type:TGType;cdecl;external;

(* error 
struct wl_seat *        gdk_wayland_seat_get_wl_seat    (GdkSeat *seat);
in declaration at line 47 *)


implementation

function GDK_TYPE_WAYLAND_SEAT : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_SEAT:=gdk_wayland_seat_get_type;
  end;

function GDK_WAYLAND_SEAT(o : longint) : longint;
begin
  GDK_WAYLAND_SEAT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_WAYLAND_SEAT,GdkWaylandSeat);
end;

function GDK_IS_WAYLAND_SEAT(o : longint) : longint;
begin
  GDK_IS_WAYLAND_SEAT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_WAYLAND_SEAT);
end;


end.
