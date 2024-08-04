unit gdkdevicepad;

interface

uses
  glib2, common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
  TGdkDevicePad = record
  end;
  PGdkDevicePad = ^TGdkDevicePad;

  PGdkDevicePadFeature = ^TGdkDevicePadFeature;
  TGdkDevicePadFeature = longint;

const
  GDK_DEVICE_PAD_FEATURE_BUTTON = 0;
  GDK_DEVICE_PAD_FEATURE_RING = 1;
  GDK_DEVICE_PAD_FEATURE_STRIP = 2;

function gdk_device_pad_get_type: TGType; cdecl; external gtklib;
function gdk_device_pad_get_n_groups(pad: PGdkDevicePad): longint; cdecl; external gtklib;
function gdk_device_pad_get_group_n_modes(pad: PGdkDevicePad; group_idx: longint): longint; cdecl; external gtklib;
function gdk_device_pad_get_n_features(pad: PGdkDevicePad; feature: TGdkDevicePadFeature): longint; cdecl; external gtklib;
function gdk_device_pad_get_feature_group(pad: PGdkDevicePad; feature: TGdkDevicePadFeature; feature_idx: longint): longint; cdecl; external gtklib;

// === Konventiert am: 2-8-24 15:57:57 ===

function GDK_TYPE_DEVICE_PAD: TGType;
function GDK_DEVICE_PAD(obj: Pointer): PGdkDevicePad;
function GDK_IS_DEVICE_PAD(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_DEVICE_PAD: TGType;
begin
  GDK_TYPE_DEVICE_PAD := gdk_device_pad_get_type;
end;

function GDK_DEVICE_PAD(obj: Pointer): PGdkDevicePad;
begin
  Result := PGdkDevicePad(g_type_check_instance_cast(obj, GDK_TYPE_DEVICE_PAD));
end;

function GDK_IS_DEVICE_PAD(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DEVICE_PAD);
end;



end.
