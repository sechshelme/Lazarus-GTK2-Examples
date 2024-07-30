
unit gdkevents;
interface

{
  Automatically converted by H2Pas 1.0.0 from gdkevents.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gdkevents.h
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
Pdouble  = ^double;
PGdkCrossingMode  = ^GdkCrossingMode;
PGdkDevice  = ^GdkDevice;
PGdkDeviceTool  = ^GdkDeviceTool;
PGdkDisplay  = ^GdkDisplay;
PGdkDrop  = ^GdkDrop;
PGdkEvent  = ^GdkEvent;
PGdkEventSequence  = ^GdkEventSequence;
PGdkEventType  = ^GdkEventType;
PGdkKeyMatch  = ^GdkKeyMatch;
PGdkModifierType  = ^GdkModifierType;
PGdkNotifyType  = ^GdkNotifyType;
PGdkScrollDirection  = ^GdkScrollDirection;
PGdkScrollUnit  = ^GdkScrollUnit;
PGdkSeat  = ^GdkSeat;
PGdkSurface  = ^GdkSurface;
PGdkTimeCoord  = ^GdkTimeCoord;
PGdkTouchpadGesturePhase  = ^GdkTouchpadGesturePhase;
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GDK - The GIMP Drawing Kit
 * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
{
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkdevice.h>}
{$include <gdk/gdkdevicetool.h>}
{$include <gdk/gdkdrag.h>}

{ was #define dname def_expr }
function GDK_TYPE_EVENT : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_EVENT(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_IS_EVENT(obj : longint) : longint;

{ was #define dname def_expr }
function GDK_TYPE_EVENT_SEQUENCE : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_IS_EVENT_TYPE(event,_type : longint) : longint;

{*
 * GDK_PRIORITY_EVENTS: (value 0)
 *
 * This is the priority that events from the X server are given in the main loop.
  }
const
  GDK_PRIORITY_EVENTS = G_PRIORITY_DEFAULT;  
{*
 * GDK_PRIORITY_REDRAW: (value 120)
 *
 * This is the priority that the idle handler processing surface updates
 * is given in the main loop.
  }
  GDK_PRIORITY_REDRAW = G_PRIORITY_HIGH_IDLE+20;  
{*
 * GDK_EVENT_PROPAGATE:
 *
 * Use this macro as the return value for continuing the propagation of
 * an event handler.
  }
  GDK_EVENT_PROPAGATE = _FALSE;  
{*
 * GDK_EVENT_STOP:
 *
 * Use this macro as the return value for stopping the propagation of
 * an event handler.
  }
  GDK_EVENT_STOP = _TRUE;  
{*
 * GDK_BUTTON_PRIMARY:
 *
 * The primary button. This is typically the left mouse button, or the
 * right button in a left-handed setup.
  }
  GDK_BUTTON_PRIMARY = 1;  
{*
 * GDK_BUTTON_MIDDLE:
 *
 * The middle button.
  }
  GDK_BUTTON_MIDDLE = 2;  
{*
 * GDK_BUTTON_SECONDARY:
 *
 * The secondary button. This is typically the right mouse button, or the
 * left button in a left-handed setup.
  }
  GDK_BUTTON_SECONDARY = 3;  
type

{ was #define dname def_expr }
function GDK_TYPE_BUTTON_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_CROSSING_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_DELETE_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_DND_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_FOCUS_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_GRAB_BROKEN_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_KEY_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_MOTION_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_PAD_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_PROXIMITY_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_SCROLL_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_TOUCH_EVENT : longint; { return type might be wrong }

{ was #define dname def_expr }
function GDK_TYPE_TOUCHPAD_EVENT : longint; { return type might be wrong }

type
{*
 * GdkEventType:
 * @GDK_DELETE: the window manager has requested that the toplevel surface be
 *   hidden or destroyed, usually when the user clicks on a special icon in the
 *   title bar.
 * @GDK_MOTION_NOTIFY: the pointer (usually a mouse) has moved.
 * @GDK_BUTTON_PRESS: a mouse button has been pressed.
 * @GDK_BUTTON_RELEASE: a mouse button has been released.
 * @GDK_KEY_PRESS: a key has been pressed.
 * @GDK_KEY_RELEASE: a key has been released.
 * @GDK_ENTER_NOTIFY: the pointer has entered the surface.
 * @GDK_LEAVE_NOTIFY: the pointer has left the surface.
 * @GDK_FOCUS_CHANGE: the keyboard focus has entered or left the surface.
 * @GDK_PROXIMITY_IN: an input device has moved into contact with a sensing
 *   surface (e.g. a touchscreen or graphics tablet).
 * @GDK_PROXIMITY_OUT: an input device has moved out of contact with a sensing
 *   surface.
 * @GDK_DRAG_ENTER: the mouse has entered the surface while a drag is in progress.
 * @GDK_DRAG_LEAVE: the mouse has left the surface while a drag is in progress.
 * @GDK_DRAG_MOTION: the mouse has moved in the surface while a drag is in
 *   progress.
 * @GDK_DROP_START: a drop operation onto the surface has started.
 * @GDK_SCROLL: the scroll wheel was turned
 * @GDK_GRAB_BROKEN: a pointer or keyboard grab was broken.
 * @GDK_TOUCH_BEGIN: A new touch event sequence has just started.
 * @GDK_TOUCH_UPDATE: A touch event sequence has been updated.
 * @GDK_TOUCH_END: A touch event sequence has finished.
 * @GDK_TOUCH_CANCEL: A touch event sequence has been canceled.
 * @GDK_TOUCHPAD_SWIPE: A touchpad swipe gesture event, the current state
 *   is determined by its phase field.
 * @GDK_TOUCHPAD_PINCH: A touchpad pinch gesture event, the current state
 *   is determined by its phase field.
 * @GDK_PAD_BUTTON_PRESS: A tablet pad button press event.
 * @GDK_PAD_BUTTON_RELEASE: A tablet pad button release event.
 * @GDK_PAD_RING: A tablet pad axis event from a "ring".
 * @GDK_PAD_STRIP: A tablet pad axis event from a "strip".
 * @GDK_PAD_GROUP_MODE: A tablet pad group mode change.
 * @GDK_EVENT_LAST: marks the end of the GdkEventType enumeration.
 *
 * Specifies the type of the event.
  }
{*
  * GDK_TOUCHPAD_HOLD:
  *
  * A touchpad hold gesture event, the current state is determined by its phase
  * field.
  *
  * Since: 4.6
   }
{ helper variable for decls  }

  PGdkEventType = ^TGdkEventType;
  TGdkEventType =  Longint;
  Const
    GDK_DELETE = 0;
    GDK_MOTION_NOTIFY = 1;
    GDK_BUTTON_PRESS = 2;
    GDK_BUTTON_RELEASE = 3;
    GDK_KEY_PRESS = 4;
    GDK_KEY_RELEASE = 5;
    GDK_ENTER_NOTIFY = 6;
    GDK_LEAVE_NOTIFY = 7;
    GDK_FOCUS_CHANGE = 8;
    GDK_PROXIMITY_IN = 9;
    GDK_PROXIMITY_OUT = 10;
    GDK_DRAG_ENTER = 11;
    GDK_DRAG_LEAVE = 12;
    GDK_DRAG_MOTION = 13;
    GDK_DROP_START = 14;
    GDK_SCROLL = 15;
    GDK_GRAB_BROKEN = 16;
    GDK_TOUCH_BEGIN = 17;
    GDK_TOUCH_UPDATE = 18;
    GDK_TOUCH_END = 19;
    GDK_TOUCH_CANCEL = 20;
    GDK_TOUCHPAD_SWIPE = 21;
    GDK_TOUCHPAD_PINCH = 22;
    GDK_PAD_BUTTON_PRESS = 23;
    GDK_PAD_BUTTON_RELEASE = 24;
    GDK_PAD_RING = 25;
    GDK_PAD_STRIP = 26;
    GDK_PAD_GROUP_MODE = 27;
    GDK_TOUCHPAD_HOLD = 28;
    GDK_EVENT_LAST = 29;
;
{*
 * GdkTouchpadGesturePhase:
 * @GDK_TOUCHPAD_GESTURE_PHASE_BEGIN: The gesture has begun.
 * @GDK_TOUCHPAD_GESTURE_PHASE_UPDATE: The gesture has been updated.
 * @GDK_TOUCHPAD_GESTURE_PHASE_END: The gesture was finished, changes
 *   should be permanently applied.
 * @GDK_TOUCHPAD_GESTURE_PHASE_CANCEL: The gesture was cancelled, all
 *   changes should be undone.
 *
 * Specifies the current state of a touchpad gesture.
 *
 * All gestures are guaranteed to begin with an event with phase
 * %GDK_TOUCHPAD_GESTURE_PHASE_BEGIN, followed by 0 or several events
 * with phase %GDK_TOUCHPAD_GESTURE_PHASE_UPDATE.
 *
 * A finished gesture may have 2 possible outcomes, an event with phase
 * %GDK_TOUCHPAD_GESTURE_PHASE_END will be emitted when the gesture is
 * considered successful, this should be used as the hint to perform any
 * permanent changes.

 * Cancelled gestures may be so for a variety of reasons, due to hardware
 * or the compositor, or due to the gesture recognition layers hinting the
 * gesture did not finish resolutely (eg. a 3rd finger being added during
 * a pinch gesture). In these cases, the last event will report the phase
 * %GDK_TOUCHPAD_GESTURE_PHASE_CANCEL, this should be used as a hint
 * to undo any visible/permanent changes that were done throughout the
 * progress of the gesture.
  }
type
  PGdkTouchpadGesturePhase = ^TGdkTouchpadGesturePhase;
  TGdkTouchpadGesturePhase =  Longint;
  Const
    GDK_TOUCHPAD_GESTURE_PHASE_BEGIN = 0;
    GDK_TOUCHPAD_GESTURE_PHASE_UPDATE = 1;
    GDK_TOUCHPAD_GESTURE_PHASE_END = 2;
    GDK_TOUCHPAD_GESTURE_PHASE_CANCEL = 3;
;
{*
 * GdkScrollDirection:
 * @GDK_SCROLL_UP: the surface is scrolled up.
 * @GDK_SCROLL_DOWN: the surface is scrolled down.
 * @GDK_SCROLL_LEFT: the surface is scrolled to the left.
 * @GDK_SCROLL_RIGHT: the surface is scrolled to the right.
 * @GDK_SCROLL_SMOOTH: the scrolling is determined by the delta values
 *   in scroll events. See gdk_scroll_event_get_deltas()
 *
 * Specifies the direction for scroll events.
  }
type
  PGdkScrollDirection = ^TGdkScrollDirection;
  TGdkScrollDirection =  Longint;
  Const
    GDK_SCROLL_UP = 0;
    GDK_SCROLL_DOWN = 1;
    GDK_SCROLL_LEFT = 2;
    GDK_SCROLL_RIGHT = 3;
    GDK_SCROLL_SMOOTH = 4;
;
{*
 * GdkScrollUnit:
 * @GDK_SCROLL_UNIT_WHEEL: The delta is in number of wheel clicks.
 * @GDK_SCROLL_UNIT_SURFACE: The delta is in surface pixels to scroll directly
 *   on screen.
 *
 * Specifies the unit of scroll deltas.
 *
 * When you get %GDK_SCROLL_UNIT_WHEEL, a delta of 1.0 means 1 wheel detent
 * click in the south direction, 2.0 means 2 wheel detent clicks in the south
 * direction... This is the same logic for negative values but in the north
 * direction.
 *
 * If you get %GDK_SCROLL_UNIT_SURFACE, are managing a scrollable view and get a
 * value of 123, you have to scroll 123 surface logical pixels right if it's
 * @delta_x or down if it's @delta_y. This is the same logic for negative values
 * but you have to scroll left instead of right if it's @delta_x and up instead
 * of down if it's @delta_y.
 *
 * 1 surface logical pixel is equal to 1 real screen pixel multiplied by the
 * final scale factor of your graphical interface (the product of the desktop
 * scale factor and eventually a custom scale factor in your app).
 *
 * Since: 4.8
  }
type
  PGdkScrollUnit = ^TGdkScrollUnit;
  TGdkScrollUnit =  Longint;
  Const
    GDK_SCROLL_UNIT_WHEEL = 0;
    GDK_SCROLL_UNIT_SURFACE = 1;
;
{*
 * GdkNotifyType:
 * @GDK_NOTIFY_ANCESTOR: the surface is entered from an ancestor or
 *   left towards an ancestor.
 * @GDK_NOTIFY_VIRTUAL: the pointer moves between an ancestor and an
 *   inferior of the surface.
 * @GDK_NOTIFY_INFERIOR: the surface is entered from an inferior or
 *   left towards an inferior.
 * @GDK_NOTIFY_NONLINEAR: the surface is entered from or left towards
 *   a surface which is neither an ancestor nor an inferior.
 * @GDK_NOTIFY_NONLINEAR_VIRTUAL: the pointer moves between two surfaces
 *   which are not ancestors of each other and the surface is part of
 *   the ancestor chain between one of these surfaces and their least
 *   common ancestor.
 * @GDK_NOTIFY_UNKNOWN: an unknown type of enter/leave event occurred.
 *
 * Specifies the kind of crossing for enter and leave events.
 *
 * See the X11 protocol specification of LeaveNotify for
 * full details of crossing event generation.
  }
type
  PGdkNotifyType = ^TGdkNotifyType;
  TGdkNotifyType =  Longint;
  Const
    GDK_NOTIFY_ANCESTOR = 0;
    GDK_NOTIFY_VIRTUAL = 1;
    GDK_NOTIFY_INFERIOR = 2;
    GDK_NOTIFY_NONLINEAR = 3;
    GDK_NOTIFY_NONLINEAR_VIRTUAL = 4;
    GDK_NOTIFY_UNKNOWN = 5;
;
{*
 * GdkCrossingMode:
 * @GDK_CROSSING_NORMAL: crossing because of pointer motion.
 * @GDK_CROSSING_GRAB: crossing because a grab is activated.
 * @GDK_CROSSING_UNGRAB: crossing because a grab is deactivated.
 * @GDK_CROSSING_GTK_GRAB: crossing because a GTK grab is activated.
 * @GDK_CROSSING_GTK_UNGRAB: crossing because a GTK grab is deactivated.
 * @GDK_CROSSING_STATE_CHANGED: crossing because a GTK widget changed
 *   state (e.g. sensitivity).
 * @GDK_CROSSING_TOUCH_BEGIN: crossing because a touch sequence has begun,
 *   this event is synthetic as the pointer might have not left the surface.
 * @GDK_CROSSING_TOUCH_END: crossing because a touch sequence has ended,
 *   this event is synthetic as the pointer might have not left the surface.
 * @GDK_CROSSING_DEVICE_SWITCH: crossing because of a device switch (i.e.
 *   a mouse taking control of the pointer after a touch device), this event
 *   is synthetic as the pointer didn’t leave the surface.
 *
 * Specifies the crossing mode for enter and leave events.
  }
type
  PGdkCrossingMode = ^TGdkCrossingMode;
  TGdkCrossingMode =  Longint;
  Const
    GDK_CROSSING_NORMAL = 0;
    GDK_CROSSING_GRAB = 1;
    GDK_CROSSING_UNGRAB = 2;
    GDK_CROSSING_GTK_GRAB = 3;
    GDK_CROSSING_GTK_UNGRAB = 4;
    GDK_CROSSING_STATE_CHANGED = 5;
    GDK_CROSSING_TOUCH_BEGIN = 6;
    GDK_CROSSING_TOUCH_END = 7;
    GDK_CROSSING_DEVICE_SWITCH = 8;
;

function gdk_event_get_type:TGType;cdecl;external;
function gdk_event_sequence_get_type:TGType;cdecl;external;
function gdk_event_ref(event:PGdkEvent):PGdkEvent;cdecl;external;
procedure gdk_event_unref(event:PGdkEvent);cdecl;external;
function gdk_event_get_event_type(event:PGdkEvent):TGdkEventType;cdecl;external;
function gdk_event_get_surface(event:PGdkEvent):PGdkSurface;cdecl;external;
function gdk_event_get_seat(event:PGdkEvent):PGdkSeat;cdecl;external;
function gdk_event_get_device(event:PGdkEvent):PGdkDevice;cdecl;external;
function gdk_event_get_device_tool(event:PGdkEvent):PGdkDeviceTool;cdecl;external;
function gdk_event_get_time(event:PGdkEvent):Tguint32;cdecl;external;
function gdk_event_get_display(event:PGdkEvent):PGdkDisplay;cdecl;external;
function gdk_event_get_event_sequence(event:PGdkEvent):PGdkEventSequence;cdecl;external;
function gdk_event_get_modifier_state(event:PGdkEvent):TGdkModifierType;cdecl;external;
function gdk_event_get_position(event:PGdkEvent; x:Pdouble; y:Pdouble):Tgboolean;cdecl;external;
function gdk_event_get_axes(event:PGdkEvent; axes:PPdouble; n_axes:Pguint):Tgboolean;cdecl;external;
function gdk_event_get_axis(event:PGdkEvent; axis_use:TGdkAxisUse; value:Pdouble):Tgboolean;cdecl;external;
function gdk_event_get_history(event:PGdkEvent; out_n_coords:Pguint):PGdkTimeCoord;cdecl;external;
function gdk_event_get_pointer_emulated(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_button_event_get_type:TGType;cdecl;external;
function gdk_button_event_get_button(event:PGdkEvent):Tguint;cdecl;external;
function gdk_scroll_event_get_type:TGType;cdecl;external;
function gdk_scroll_event_get_direction(event:PGdkEvent):TGdkScrollDirection;cdecl;external;
procedure gdk_scroll_event_get_deltas(event:PGdkEvent; delta_x:Pdouble; delta_y:Pdouble);cdecl;external;
function gdk_scroll_event_get_unit(event:PGdkEvent):TGdkScrollUnit;cdecl;external;
function gdk_scroll_event_is_stop(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_key_event_get_type:TGType;cdecl;external;
function gdk_key_event_get_keyval(event:PGdkEvent):Tguint;cdecl;external;
function gdk_key_event_get_keycode(event:PGdkEvent):Tguint;cdecl;external;
function gdk_key_event_get_consumed_modifiers(event:PGdkEvent):TGdkModifierType;cdecl;external;
function gdk_key_event_get_layout(event:PGdkEvent):Tguint;cdecl;external;
function gdk_key_event_get_level(event:PGdkEvent):Tguint;cdecl;external;
function gdk_key_event_is_modifier(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_focus_event_get_type:TGType;cdecl;external;
function gdk_focus_event_get_in(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_touch_event_get_type:TGType;cdecl;external;
function gdk_touch_event_get_emulating_pointer(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_crossing_event_get_type:TGType;cdecl;external;
function gdk_crossing_event_get_mode(event:PGdkEvent):TGdkCrossingMode;cdecl;external;
function gdk_crossing_event_get_detail(event:PGdkEvent):TGdkNotifyType;cdecl;external;
function gdk_crossing_event_get_focus(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_touchpad_event_get_type:TGType;cdecl;external;
function gdk_touchpad_event_get_gesture_phase(event:PGdkEvent):TGdkTouchpadGesturePhase;cdecl;external;
function gdk_touchpad_event_get_n_fingers(event:PGdkEvent):Tguint;cdecl;external;
procedure gdk_touchpad_event_get_deltas(event:PGdkEvent; dx:Pdouble; dy:Pdouble);cdecl;external;
function gdk_touchpad_event_get_pinch_angle_delta(event:PGdkEvent):Tdouble;cdecl;external;
function gdk_touchpad_event_get_pinch_scale(event:PGdkEvent):Tdouble;cdecl;external;
function gdk_pad_event_get_type:TGType;cdecl;external;
function gdk_pad_event_get_button(event:PGdkEvent):Tguint;cdecl;external;
procedure gdk_pad_event_get_axis_value(event:PGdkEvent; index:Pguint; value:Pdouble);cdecl;external;
procedure gdk_pad_event_get_group_mode(event:PGdkEvent; group:Pguint; mode:Pguint);cdecl;external;
function gdk_dnd_event_get_type:TGType;cdecl;external;
function gdk_dnd_event_get_drop(event:PGdkEvent):PGdkDrop;cdecl;external;
function gdk_grab_broken_event_get_type:TGType;cdecl;external;
function gdk_grab_broken_event_get_grab_surface(event:PGdkEvent):PGdkSurface;cdecl;external;
function gdk_grab_broken_event_get_implicit(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_motion_event_get_type:TGType;cdecl;external;
function gdk_delete_event_get_type:TGType;cdecl;external;
function gdk_proximity_event_get_type:TGType;cdecl;external;
function gdk_event_triggers_context_menu(event:PGdkEvent):Tgboolean;cdecl;external;
function gdk_events_get_distance(event1:PGdkEvent; event2:PGdkEvent; distance:Pdouble):Tgboolean;cdecl;external;
function gdk_events_get_angle(event1:PGdkEvent; event2:PGdkEvent; angle:Pdouble):Tgboolean;cdecl;external;
function gdk_events_get_center(event1:PGdkEvent; event2:PGdkEvent; x:Pdouble; y:Pdouble):Tgboolean;cdecl;external;
{*
 * GdkKeyMatch:
 * @GDK_KEY_MATCH_NONE: The key event does not match
 * @GDK_KEY_MATCH_PARTIAL: The key event matches if keyboard state
 *   (specifically, the currently active group) is ignored
 * @GDK_KEY_MATCH_EXACT: The key event matches
 *
 * Describes how well an event matches a given keyval and modifiers.
 *
 * `GdkKeyMatch` values are returned by [method@Gdk.KeyEvent.matches].
  }
type
  PGdkKeyMatch = ^TGdkKeyMatch;
  TGdkKeyMatch =  Longint;
  Const
    GDK_KEY_MATCH_NONE = 0;
    GDK_KEY_MATCH_PARTIAL = 1;
    GDK_KEY_MATCH_EXACT = 2;
;

function gdk_key_event_matches(event:PGdkEvent; keyval:Tguint; modifiers:TGdkModifierType):TGdkKeyMatch;cdecl;external;
function gdk_key_event_get_match(event:PGdkEvent; keyval:Pguint; modifiers:PGdkModifierType):Tgboolean;cdecl;external;

implementation

{ was #define dname def_expr }
function GDK_TYPE_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT:=gdk_event_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_EVENT(obj : longint) : longint;
begin
  GDK_EVENT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_EVENT,GdkEvent);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_IS_EVENT(obj : longint) : longint;
begin
  GDK_IS_EVENT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_EVENT);
end;

{ was #define dname def_expr }
function GDK_TYPE_EVENT_SEQUENCE : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT_SEQUENCE:=gdk_event_sequence_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GDK_IS_EVENT_TYPE(event,_type : longint) : longint;
begin
  GDK_IS_EVENT_TYPE:=(gdk_event_get_event_type(event))=_type;
end;

{ was #define dname def_expr }
function GDK_TYPE_BUTTON_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_BUTTON_EVENT:=gdk_button_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_CROSSING_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_CROSSING_EVENT:=gdk_crossing_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_DELETE_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DELETE_EVENT:=gdk_delete_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_DND_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DND_EVENT:=gdk_dnd_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_FOCUS_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_FOCUS_EVENT:=gdk_focus_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_GRAB_BROKEN_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_GRAB_BROKEN_EVENT:=gdk_grab_broken_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_KEY_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_KEY_EVENT:=gdk_key_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_MOTION_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_MOTION_EVENT:=gdk_motion_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_PAD_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_PAD_EVENT:=gdk_pad_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_PROXIMITY_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_PROXIMITY_EVENT:=gdk_proximity_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_SCROLL_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SCROLL_EVENT:=gdk_scroll_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_TOUCH_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCH_EVENT:=gdk_touch_event_get_type;
  end;

{ was #define dname def_expr }
function GDK_TYPE_TOUCHPAD_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCHPAD_EVENT:=gdk_touchpad_event_get_type;
  end;


end.
