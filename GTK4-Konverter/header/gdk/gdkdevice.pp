
  Type
  Pchar  = ^char;
  Pdouble  = ^double;
  PGdkDevice  = ^GdkDevice;
  PGdkDeviceTool  = ^GdkDeviceTool;
  PGdkDisplay  = ^GdkDisplay;
  PGdkSeat  = ^GdkSeat;
  PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2009 Carlos Garnacho <carlosg@gnome.org>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GDK_DEVICE_H__}
{$define __GDK_DEVICE_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkdevicetool.h>}
{$include <gdk/gdkenums.h>}

  { was #define dname def_expr }
  function GDK_TYPE_DEVICE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEVICE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DEVICE(o : longint) : longint;  


  type
    _GdkTimeCoord = GdkTimeCoord;
  {*
   * GdkInputSource:
   * @GDK_SOURCE_MOUSE: the device is a mouse. (This will be reported for the core
   *   pointer, even if it is something else, such as a trackball.)
   * @GDK_SOURCE_PEN: the device is a stylus of a graphics tablet or similar device.
   * @GDK_SOURCE_KEYBOARD: the device is a keyboard.
   * @GDK_SOURCE_TOUCHSCREEN: the device is a direct-input touch device, such
   *   as a touchscreen or tablet
   * @GDK_SOURCE_TOUCHPAD: the device is an indirect touch device, such
   *   as a touchpad
   * @GDK_SOURCE_TRACKPOINT: the device is a trackpoint
   * @GDK_SOURCE_TABLET_PAD: the device is a "pad", a collection of buttons,
   *   rings and strips found in drawing tablets
   *
   * An enumeration describing the type of an input device in general terms.
    }

    GdkInputSource = (GDK_SOURCE_MOUSE,GDK_SOURCE_PEN,GDK_SOURCE_KEYBOARD,
      GDK_SOURCE_TOUCHSCREEN,GDK_SOURCE_TOUCHPAD,
      GDK_SOURCE_TRACKPOINT,GDK_SOURCE_TABLET_PAD
      );
  {*
   * GdkTimeCoord:
   * @time: The timestamp for this event
   * @flags: Flags indicating what axes are present, see [flags@Gdk.AxisFlags]
   * @axes: (array fixed-size=12): axis values, indexed by [enum@Gdk.AxisUse]
   *
   * A `GdkTimeCoord` stores a single event in a motion history.
   *
   * To check whether an axis is present, check whether the corresponding
   * flag from the [flags@Gdk.AxisFlags] enumeration is set in the @flags
   * To access individual axis values, use the values of the values of
   * the [enum@Gdk.AxisUse] enumerations as indices.
    }
    _GdkTimeCoord = record
        time : guint32;
        flags : GdkAxisFlags;
        axes : array[0..(GDK_AXIS_LAST)-1] of double;
      end;

(* error 
GType               gdk_device_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gdk_device_get_name(device:PGdkDevice):^char;

(* Const before type ignored *)
  function gdk_device_get_vendor_id(device:PGdkDevice):^char;

(* Const before type ignored *)
  function gdk_device_get_product_id(device:PGdkDevice):^char;

  function gdk_device_get_display(device:PGdkDevice):^GdkDisplay;

  function gdk_device_get_seat(device:PGdkDevice):^GdkSeat;

  function gdk_device_get_device_tool(device:PGdkDevice):^GdkDeviceTool;

  function gdk_device_get_source(device:PGdkDevice):GdkInputSource;

  function gdk_device_get_has_cursor(device:PGdkDevice):gboolean;

  function gdk_device_get_num_touches(device:PGdkDevice):guint;

  function gdk_device_get_modifier_state(device:PGdkDevice):GdkModifierType;

  function gdk_device_get_direction(device:PGdkDevice):PangoDirection;

  function gdk_device_has_bidi_layouts(device:PGdkDevice):gboolean;

  function gdk_device_get_caps_lock_state(device:PGdkDevice):gboolean;

  function gdk_device_get_num_lock_state(device:PGdkDevice):gboolean;

  function gdk_device_get_scroll_lock_state(device:PGdkDevice):gboolean;

  function gdk_device_get_surface_at_position(device:PGdkDevice; win_x:Pdouble; win_y:Pdouble):^GdkSurface;

(* error 
guint32             gdk_device_get_timestamp            (GdkDevice *device);
 in declarator_list *)
{$endif}
  { __GDK_DEVICE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_DEVICE : longint; { return type might be wrong }
    begin
      GDK_TYPE_DEVICE:=gdk_device_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEVICE(o : longint) : longint;
  begin
    GDK_DEVICE:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE,GdkDevice);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DEVICE(o : longint) : longint;
  begin
    GDK_IS_DEVICE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE);
  end;

  function gdk_device_get_name(device:PGdkDevice):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_vendor_id(device:PGdkDevice):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_product_id(device:PGdkDevice):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_display(device:PGdkDevice):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_seat(device:PGdkDevice):PGdkSeat;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_device_tool(device:PGdkDevice):PGdkDeviceTool;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_source(device:PGdkDevice):GdkInputSource;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_has_cursor(device:PGdkDevice):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_num_touches(device:PGdkDevice):guint;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_modifier_state(device:PGdkDevice):GdkModifierType;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_direction(device:PGdkDevice):PangoDirection;
  begin
    { You must implement this function }
  end;
  function gdk_device_has_bidi_layouts(device:PGdkDevice):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_caps_lock_state(device:PGdkDevice):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_num_lock_state(device:PGdkDevice):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_scroll_lock_state(device:PGdkDevice):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_device_get_surface_at_position(device:PGdkDevice; win_x:Pdouble; win_y:Pdouble):PGdkSurface;
  begin
    { You must implement this function }
  end;

