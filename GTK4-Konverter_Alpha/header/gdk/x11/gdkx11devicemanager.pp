
unit gdkx11devicemanager;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11devicemanager.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11devicemanager.h
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
PGdkX11DeviceManagerXI2  = ^GdkX11DeviceManagerXI2;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_X11_DEVICE_MANAGER_H__}
{$define __GDK_X11_DEVICE_MANAGER_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gdk/x11/gdkx11devicemanager-xi2.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}



function gdk_x11_device_manager_lookup(device_manager:PGdkX11DeviceManagerXI2; device_id:longint):PGdkDevice;cdecl;external;

{$endif}


implementation


end.
