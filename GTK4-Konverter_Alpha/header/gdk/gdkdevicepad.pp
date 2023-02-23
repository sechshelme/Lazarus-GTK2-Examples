
unit gdkdevicepad;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdevicepad.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdevicepad.h
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
PGdkDevicePad  = ^GdkDevicePad;
PGdkDevicePadFeature  = ^GdkDevicePadFeature;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DEVICE_PAD_H__}
{$define __GDK_DEVICE_PAD_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_DEVICE_PAD : longint; { return type might be wrong }

function GDK_DEVICE_PAD(o : longint) : longint;

function GDK_IS_DEVICE_PAD(o : longint) : longint;

type


  PGdkDevicePadFeature = ^TGdkDevicePadFeature;
  TGdkDevicePadFeature = (GDK_DEVICE_PAD_FEATURE_BUTTON,GDK_DEVICE_PAD_FEATURE_RING,
    GDK_DEVICE_PAD_FEATURE_STRIP);


function gdk_device_pad_get_type:TGType;cdecl;external;

function gdk_device_pad_get_n_groups(pad:PGdkDevicePad):longint;cdecl;external;

function gdk_device_pad_get_group_n_modes(pad:PGdkDevicePad; group_idx:longint):longint;cdecl;external;

function gdk_device_pad_get_n_features(pad:PGdkDevicePad; feature:TGdkDevicePadFeature):longint;cdecl;external;

function gdk_device_pad_get_feature_group(pad:PGdkDevicePad; feature:TGdkDevicePadFeature; feature_idx:longint):longint;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DEVICE_PAD : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE_PAD:=gdk_device_pad_get_type;
  end;

function GDK_DEVICE_PAD(o : longint) : longint;
begin
  GDK_DEVICE_PAD:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE_PAD,GdkDevicePad);
end;

function GDK_IS_DEVICE_PAD(o : longint) : longint;
begin
  GDK_IS_DEVICE_PAD:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE_PAD);
end;


end.
