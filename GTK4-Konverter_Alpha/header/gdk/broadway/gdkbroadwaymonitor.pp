
unit gdkbroadwaymonitor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaymonitor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaymonitor.h
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



{$ifndef __GDK_BROADWAY_MONITOR_H__}
{$define __GDK_BROADWAY_MONITOR_H__}
{$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}


function GDK_TYPE_BROADWAY_MONITOR : longint; { return type might be wrong }

function GDK_BROADWAY_MONITOR(object : longint) : longint;

function GDK_IS_BROADWAY_MONITOR(object : longint) : longint;

type


function gdk_broadway_monitor_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_BROADWAY_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_MONITOR:=gdk_broadway_monitor_get_type;
  end;

function GDK_BROADWAY_MONITOR(object : longint) : longint;
begin
  GDK_BROADWAY_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_MONITOR,GdkBroadwayMonitor);
end;

function GDK_IS_BROADWAY_MONITOR(object : longint) : longint;
begin
  GDK_IS_BROADWAY_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_MONITOR);
end;


end.
