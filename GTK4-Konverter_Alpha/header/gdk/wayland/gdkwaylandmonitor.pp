
unit gdkwaylandmonitor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandmonitor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandmonitor.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_WAYLAND_MONITOR_H__}
{$define __GDK_WAYLAND_MONITOR_H__}
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}


function GDK_TYPE_WAYLAND_MONITOR : longint; { return type might be wrong }

function GDK_WAYLAND_MONITOR(object : longint) : longint;

function GDK_IS_WAYLAND_MONITOR(object : longint) : longint;

type


function gdk_wayland_monitor_get_type:TGType;cdecl;external;

(* error 
struct wl_output *gdk_wayland_monitor_get_wl_output       (GdkMonitor *monitor);
in declaration at line 44 *)

{$endif}


implementation

function GDK_TYPE_WAYLAND_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_MONITOR:=gdk_wayland_monitor_get_type;
  end;

function GDK_WAYLAND_MONITOR(object : longint) : longint;
begin
  GDK_WAYLAND_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_MONITOR,GdkWaylandMonitor);
end;

function GDK_IS_WAYLAND_MONITOR(object : longint) : longint;
begin
  GDK_IS_WAYLAND_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_MONITOR);
end;


end.
