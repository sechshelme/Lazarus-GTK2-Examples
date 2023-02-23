
unit gdkmonitor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkmonitor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkmonitor.h
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
PGdkDisplay  = ^GdkDisplay;
PGdkMonitor  = ^GdkMonitor;
PGdkRectangle  = ^GdkRectangle;
PGdkSubpixelLayout  = ^GdkSubpixelLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_MONITOR_H__}
{$define __GDK_MONITOR_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdkrectangle.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_MONITOR : longint; { return type might be wrong }

function GDK_MONITOR(object : longint) : longint;

function GDK_IS_MONITOR(object : longint) : longint;

type


  PGdkSubpixelLayout = ^TGdkSubpixelLayout;
  TGdkSubpixelLayout = (GDK_SUBPIXEL_LAYOUT_UNKNOWN,GDK_SUBPIXEL_LAYOUT_NONE,
    GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB,GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR,
    GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB,GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR
    );


function gdk_monitor_get_type:TGType;cdecl;external;

function gdk_monitor_get_display(monitor:PGdkMonitor):PGdkDisplay;cdecl;external;

procedure gdk_monitor_get_geometry(monitor:PGdkMonitor; geometry:PGdkRectangle);cdecl;external;

function gdk_monitor_get_width_mm(monitor:PGdkMonitor):longint;cdecl;external;

function gdk_monitor_get_height_mm(monitor:PGdkMonitor):longint;cdecl;external;

function gdk_monitor_get_manufacturer(monitor:PGdkMonitor):Pchar;cdecl;external;

function gdk_monitor_get_model(monitor:PGdkMonitor):Pchar;cdecl;external;

function gdk_monitor_get_connector(monitor:PGdkMonitor):Pchar;cdecl;external;

function gdk_monitor_get_scale_factor(monitor:PGdkMonitor):longint;cdecl;external;

function gdk_monitor_get_refresh_rate(monitor:PGdkMonitor):longint;cdecl;external;

function gdk_monitor_get_subpixel_layout(monitor:PGdkMonitor):TGdkSubpixelLayout;cdecl;external;

function gdk_monitor_is_valid(monitor:PGdkMonitor):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_MONITOR:=gdk_monitor_get_type;
  end;

function GDK_MONITOR(object : longint) : longint;
begin
  GDK_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_MONITOR,GdkMonitor);
end;

function GDK_IS_MONITOR(object : longint) : longint;
begin
  GDK_IS_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_MONITOR);
end;


end.
