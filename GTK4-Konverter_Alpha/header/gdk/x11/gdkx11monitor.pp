
unit gdkx11monitor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11monitor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11monitor.h
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
PGdkMonitor  = ^GdkMonitor;
PGdkRectangle  = ^GdkRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_X11_MONITOR_H__}
{$define __GDK_X11_MONITOR_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}


function GDK_TYPE_X11_MONITOR : longint; { return type might be wrong }

function GDK_X11_MONITOR(object : longint) : longint;

function GDK_IS_X11_MONITOR(object : longint) : longint;

type


function gdk_x11_monitor_get_type:TGType;cdecl;external;

function gdk_x11_monitor_get_output(monitor:PGdkMonitor):TXID;cdecl;external;

procedure gdk_x11_monitor_get_workarea(monitor:PGdkMonitor; workarea:PGdkRectangle);cdecl;external;

{$endif}


implementation

function GDK_TYPE_X11_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_MONITOR:=gdk_x11_monitor_get_type;
  end;

function GDK_X11_MONITOR(object : longint) : longint;
begin
  GDK_X11_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_MONITOR,GdkX11Monitor);
end;

function GDK_IS_X11_MONITOR(object : longint) : longint;
begin
  GDK_IS_X11_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_MONITOR);
end;


end.
