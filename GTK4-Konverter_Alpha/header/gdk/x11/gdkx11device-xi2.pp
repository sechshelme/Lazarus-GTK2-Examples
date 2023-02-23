
unit gdkx11device-xi2;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11device-xi2.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11device-xi2.h
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
PGdkX11DeviceType  = ^GdkX11DeviceType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_X11_DEVICE_XI2_H__}
{$define __GDK_X11_DEVICE_XI2_H__}
{$include <gdk/gdk.h>}


function GDK_TYPE_X11_DEVICE_XI2 : longint; { return type might be wrong }

function GDK_X11_DEVICE_XI2(o : longint) : longint;

function GDK_X11_DEVICE_XI2_CLASS(c : longint) : longint;

function GDK_IS_X11_DEVICE_XI2(o : longint) : longint;

function GDK_IS_X11_DEVICE_XI2_CLASS(c : longint) : longint;

function GDK_X11_DEVICE_XI2_GET_CLASS(o : longint) : longint;

type

  PGdkX11DeviceType = ^TGdkX11DeviceType;
  TGdkX11DeviceType = (GDK_X11_DEVICE_TYPE_LOGICAL,GDK_X11_DEVICE_TYPE_PHYSICAL,
    GDK_X11_DEVICE_TYPE_FLOATING);


function gdk_x11_device_xi2_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_X11_DEVICE_XI2 : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_DEVICE_XI2:=gdk_x11_device_xi2_get_type;
  end;

function GDK_X11_DEVICE_XI2(o : longint) : longint;
begin
  GDK_X11_DEVICE_XI2:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2);
end;

function GDK_X11_DEVICE_XI2_CLASS(c : longint) : longint;
begin
  GDK_X11_DEVICE_XI2_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2Class);
end;

function GDK_IS_X11_DEVICE_XI2(o : longint) : longint;
begin
  GDK_IS_X11_DEVICE_XI2:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_X11_DEVICE_XI2);
end;

function GDK_IS_X11_DEVICE_XI2_CLASS(c : longint) : longint;
begin
  GDK_IS_X11_DEVICE_XI2_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_X11_DEVICE_XI2);
end;

function GDK_X11_DEVICE_XI2_GET_CLASS(o : longint) : longint;
begin
  GDK_X11_DEVICE_XI2_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2Class);
end;


end.
