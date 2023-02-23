
unit gdkdevicetool;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdevicetool.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdevicetool.h
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
PGdkDeviceTool  = ^GdkDeviceTool;
PGdkDeviceToolType  = ^GdkDeviceToolType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DEVICE_TOOL_H__}
{$define __GDK_DEVICE_TOOL_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}


function GDK_TYPE_DEVICE_TOOL : longint; { return type might be wrong }

function GDK_DEVICE_TOOL(o : longint) : longint;

function GDK_IS_DEVICE_TOOL(o : longint) : longint;

type


  PGdkDeviceToolType = ^TGdkDeviceToolType;
  TGdkDeviceToolType = (GDK_DEVICE_TOOL_TYPE_UNKNOWN,GDK_DEVICE_TOOL_TYPE_PEN,
    GDK_DEVICE_TOOL_TYPE_ERASER,GDK_DEVICE_TOOL_TYPE_BRUSH,
    GDK_DEVICE_TOOL_TYPE_PENCIL,GDK_DEVICE_TOOL_TYPE_AIRBRUSH,
    GDK_DEVICE_TOOL_TYPE_MOUSE,GDK_DEVICE_TOOL_TYPE_LENS
    );


function gdk_device_tool_get_type:TGType;cdecl;external;

function gdk_device_tool_get_serial(tool:PGdkDeviceTool):Tguint64;cdecl;external;

function gdk_device_tool_get_hardware_id(tool:PGdkDeviceTool):Tguint64;cdecl;external;

function gdk_device_tool_get_tool_type(tool:PGdkDeviceTool):TGdkDeviceToolType;cdecl;external;

function gdk_device_tool_get_axes(tool:PGdkDeviceTool):TGdkAxisFlags;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DEVICE_TOOL : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE_TOOL:=gdk_device_tool_get_type;
  end;

function GDK_DEVICE_TOOL(o : longint) : longint;
begin
  GDK_DEVICE_TOOL:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE_TOOL,GdkDeviceTool);
end;

function GDK_IS_DEVICE_TOOL(o : longint) : longint;
begin
  GDK_IS_DEVICE_TOOL:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE_TOOL);
end;


end.
