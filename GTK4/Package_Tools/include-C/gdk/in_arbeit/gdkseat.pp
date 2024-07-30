
unit gdkseat;
interface

{
  Automatically converted by H2Pas 1.0.0 from gdkseat.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gdkseat.h
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
PGdkDisplay  = ^GdkDisplay;
PGdkSeat  = ^GdkSeat;
PGdkSeatCapabilities  = ^GdkSeatCapabilities;
PGList  = ^GList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GDK - The GIMP Drawing Kit
 * Copyright (C) 2015 Red Hat
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
 *
 * Author: Carlos Garnacho <carlosg@gnome.org>
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdksurface.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdktypes.h>}

{ was #define dname def_expr }
function GDK_TYPE_SEAT : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_SEAT(o : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_IS_SEAT(o : longint) : longint;

{*
 * GdkSeatCapabilities:
 * @GDK_SEAT_CAPABILITY_NONE: No input capabilities
 * @GDK_SEAT_CAPABILITY_POINTER: The seat has a pointer (e.g. mouse)
 * @GDK_SEAT_CAPABILITY_TOUCH: The seat has touchscreen(s) attached
 * @GDK_SEAT_CAPABILITY_TABLET_STYLUS: The seat has drawing tablet(s) attached
 * @GDK_SEAT_CAPABILITY_KEYBOARD: The seat has keyboard(s) attached
 * @GDK_SEAT_CAPABILITY_TABLET_PAD: The seat has drawing tablet pad(s) attached
 * @GDK_SEAT_CAPABILITY_ALL_POINTING: The union of all pointing capabilities
 * @GDK_SEAT_CAPABILITY_ALL: The union of all capabilities
 *
 * Flags describing the seat capabilities.
  }
type
  PGdkSeatCapabilities = ^TGdkSeatCapabilities;
  TGdkSeatCapabilities =  Longint;
  Const
    GDK_SEAT_CAPABILITY_NONE = 0;
    GDK_SEAT_CAPABILITY_POINTER = 1 shl 0;
    GDK_SEAT_CAPABILITY_TOUCH = 1 shl 1;
    GDK_SEAT_CAPABILITY_TABLET_STYLUS = 1 shl 2;
    GDK_SEAT_CAPABILITY_KEYBOARD = 1 shl 3;
    GDK_SEAT_CAPABILITY_TABLET_PAD = 1 shl 4;
    GDK_SEAT_CAPABILITY_ALL_POINTING = (GDK_SEAT_CAPABILITY_POINTER or GDK_SEAT_CAPABILITY_TOUCH) or GDK_SEAT_CAPABILITY_TABLET_STYLUS;
    GDK_SEAT_CAPABILITY_ALL = (GDK_SEAT_CAPABILITY_ALL_POINTING or GDK_SEAT_CAPABILITY_KEYBOARD) or GDK_SEAT_CAPABILITY_TABLET_PAD;
;
type
  PGdkSeat = ^TGdkSeat;
  TGdkSeat = record
      parent_instance : TGObject;
    end;


function gdk_seat_get_type:TGType;cdecl;external;
function gdk_seat_get_display(seat:PGdkSeat):PGdkDisplay;cdecl;external;
function gdk_seat_get_capabilities(seat:PGdkSeat):TGdkSeatCapabilities;cdecl;external;
function gdk_seat_get_devices(seat:PGdkSeat; capabilities:TGdkSeatCapabilities):PGList;cdecl;external;
function gdk_seat_get_tools(seat:PGdkSeat):PGList;cdecl;external;
function gdk_seat_get_pointer(seat:PGdkSeat):PGdkDevice;cdecl;external;
function gdk_seat_get_keyboard(seat:PGdkSeat):PGdkDevice;cdecl;external;

implementation

{ was #define dname def_expr }
function GDK_TYPE_SEAT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SEAT:=gdk_seat_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_SEAT(o : longint) : longint;
begin
  GDK_SEAT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_SEAT,GdkSeat);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_IS_SEAT(o : longint) : longint;
begin
  GDK_IS_SEAT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_SEAT);
end;


end.
