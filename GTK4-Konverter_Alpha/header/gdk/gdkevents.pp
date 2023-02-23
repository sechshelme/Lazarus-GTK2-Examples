
unit gdkevents;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkevents.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkevents.h
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
PGdkSeat  = ^GdkSeat;
PGdkSurface  = ^GdkSurface;
PGdkTimeCoord  = ^GdkTimeCoord;
PGdkTouchpadGesturePhase  = ^GdkTouchpadGesturePhase;
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_EVENTS_H__}
{$define __GDK_EVENTS_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkdevice.h>}
{$include <gdk/gdkdevicetool.h>}
{$include <gdk/gdkdrag.h>}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}


function GDK_TYPE_EVENT : longint; { return type might be wrong }

function GDK_TYPE_EVENT_SEQUENCE : longint; { return type might be wrong }

function GDK_IS_EVENT(obj : longint) : longint;

function GDK_EVENT(obj : longint) : longint;

function GDK_IS_EVENT_TYPE(event,_type : longint) : longint;


const
  GDK_PRIORITY_EVENTS = G_PRIORITY_DEFAULT;  

  GDK_PRIORITY_REDRAW = G_PRIORITY_HIGH_IDLE+20;  

  GDK_EVENT_PROPAGATE = _FALSE;  

  GDK_EVENT_STOP = _TRUE;  

  GDK_BUTTON_PRIMARY = 1;  

  GDK_BUTTON_MIDDLE = 2;  

  GDK_BUTTON_SECONDARY = 3;  
type

function GDK_TYPE_BUTTON_EVENT : longint; { return type might be wrong }

function GDK_TYPE_CROSSING_EVENT : longint; { return type might be wrong }

function GDK_TYPE_DELETE_EVENT : longint; { return type might be wrong }

function GDK_TYPE_DND_EVENT : longint; { return type might be wrong }

function GDK_TYPE_FOCUS_EVENT : longint; { return type might be wrong }

function GDK_TYPE_GRAB_BROKEN_EVENT : longint; { return type might be wrong }

function GDK_TYPE_KEY_EVENT : longint; { return type might be wrong }

function GDK_TYPE_MOTION_EVENT : longint; { return type might be wrong }

function GDK_TYPE_PAD_EVENT : longint; { return type might be wrong }

function GDK_TYPE_PROXIMITY_EVENT : longint; { return type might be wrong }

function GDK_TYPE_SCROLL_EVENT : longint; { return type might be wrong }

function GDK_TYPE_TOUCH_EVENT : longint; { return type might be wrong }

function GDK_TYPE_TOUCHPAD_EVENT : longint; { return type might be wrong }

type



  PGdkEventType = ^TGdkEventType;
  TGdkEventType = (GDK_DELETE,GDK_MOTION_NOTIFY,GDK_BUTTON_PRESS,
    GDK_BUTTON_RELEASE,GDK_KEY_PRESS,GDK_KEY_RELEASE,
    GDK_ENTER_NOTIFY,GDK_LEAVE_NOTIFY,GDK_FOCUS_CHANGE,
    GDK_PROXIMITY_IN,GDK_PROXIMITY_OUT,GDK_DRAG_ENTER,
    GDK_DRAG_LEAVE,GDK_DRAG_MOTION,GDK_DROP_START,
    GDK_SCROLL,GDK_GRAB_BROKEN,GDK_TOUCH_BEGIN,
    GDK_TOUCH_UPDATE,GDK_TOUCH_END,GDK_TOUCH_CANCEL,
    GDK_TOUCHPAD_SWIPE,GDK_TOUCHPAD_PINCH,GDK_PAD_BUTTON_PRESS,
    GDK_PAD_BUTTON_RELEASE,GDK_PAD_RING,GDK_PAD_STRIP,
    GDK_PAD_GROUP_MODE,GDK_TOUCHPAD_HOLD,GDK_EVENT_LAST
    );


  PGdkTouchpadGesturePhase = ^TGdkTouchpadGesturePhase;
  TGdkTouchpadGesturePhase = (GDK_TOUCHPAD_GESTURE_PHASE_BEGIN,GDK_TOUCHPAD_GESTURE_PHASE_UPDATE,
    GDK_TOUCHPAD_GESTURE_PHASE_END,GDK_TOUCHPAD_GESTURE_PHASE_CANCEL
    );


  PGdkScrollDirection = ^TGdkScrollDirection;
  TGdkScrollDirection = (GDK_SCROLL_UP,GDK_SCROLL_DOWN,GDK_SCROLL_LEFT,
    GDK_SCROLL_RIGHT,GDK_SCROLL_SMOOTH);


  PGdkNotifyType = ^TGdkNotifyType;
  TGdkNotifyType = (GDK_NOTIFY_ANCESTOR := 0,GDK_NOTIFY_VIRTUAL := 1,
    GDK_NOTIFY_INFERIOR := 2,GDK_NOTIFY_NONLINEAR := 3,
    GDK_NOTIFY_NONLINEAR_VIRTUAL := 4,GDK_NOTIFY_UNKNOWN := 5
    );


  PGdkCrossingMode = ^TGdkCrossingMode;
  TGdkCrossingMode = (GDK_CROSSING_NORMAL,GDK_CROSSING_GRAB,GDK_CROSSING_UNGRAB,
    GDK_CROSSING_GTK_GRAB,GDK_CROSSING_GTK_UNGRAB,
    GDK_CROSSING_STATE_CHANGED,GDK_CROSSING_TOUCH_BEGIN,
    GDK_CROSSING_TOUCH_END,GDK_CROSSING_DEVICE_SWITCH
    );


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

type
  PGdkKeyMatch = ^TGdkKeyMatch;
  TGdkKeyMatch = (GDK_KEY_MATCH_NONE,GDK_KEY_MATCH_PARTIAL,
    GDK_KEY_MATCH_EXACT);


function gdk_key_event_matches(event:PGdkEvent; keyval:Tguint; modifiers:TGdkModifierType):TGdkKeyMatch;cdecl;external;

function gdk_key_event_get_match(event:PGdkEvent; keyval:Pguint; modifiers:PGdkModifierType):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT:=gdk_event_get_type;
  end;

function GDK_TYPE_EVENT_SEQUENCE : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT_SEQUENCE:=gdk_event_sequence_get_type;
  end;

function GDK_IS_EVENT(obj : longint) : longint;
begin
  GDK_IS_EVENT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_EVENT);
end;

function GDK_EVENT(obj : longint) : longint;
begin
  GDK_EVENT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_EVENT,GdkEvent);
end;

function GDK_IS_EVENT_TYPE(event,_type : longint) : longint;
begin
  GDK_IS_EVENT_TYPE:=(gdk_event_get_event_type(event))=_type;
end;

function GDK_TYPE_BUTTON_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_BUTTON_EVENT:=gdk_button_event_get_type;
  end;

function GDK_TYPE_CROSSING_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_CROSSING_EVENT:=gdk_crossing_event_get_type;
  end;

function GDK_TYPE_DELETE_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DELETE_EVENT:=gdk_delete_event_get_type;
  end;

function GDK_TYPE_DND_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DND_EVENT:=gdk_dnd_event_get_type;
  end;

function GDK_TYPE_FOCUS_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_FOCUS_EVENT:=gdk_focus_event_get_type;
  end;

function GDK_TYPE_GRAB_BROKEN_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_GRAB_BROKEN_EVENT:=gdk_grab_broken_event_get_type;
  end;

function GDK_TYPE_KEY_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_KEY_EVENT:=gdk_key_event_get_type;
  end;

function GDK_TYPE_MOTION_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_MOTION_EVENT:=gdk_motion_event_get_type;
  end;

function GDK_TYPE_PAD_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_PAD_EVENT:=gdk_pad_event_get_type;
  end;

function GDK_TYPE_PROXIMITY_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_PROXIMITY_EVENT:=gdk_proximity_event_get_type;
  end;

function GDK_TYPE_SCROLL_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SCROLL_EVENT:=gdk_scroll_event_get_type;
  end;

function GDK_TYPE_TOUCH_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCH_EVENT:=gdk_touch_event_get_type;
  end;

function GDK_TYPE_TOUCHPAD_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCHPAD_EVENT:=gdk_touchpad_event_get_type;
  end;


end.
