unit gdkevents;

interface

uses
  glib2, common_GTK, gdktypes, gdkdevice, gdkdrop, gdkenums, gdkdevicetool, gdkseat;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  GDK_PRIORITY_EVENTS = G_PRIORITY_DEFAULT;
  GDK_PRIORITY_REDRAW = G_PRIORITY_HIGH_IDLE + 20;
  //  GDK_EVENT_PROPAGATE = _FALSE;
  //  GDK_EVENT_STOP = _TRUE;
  GDK_EVENT_PROPAGATE = 0;
  GDK_EVENT_STOP = not (0);
  GDK_BUTTON_PRIMARY = 1;
  GDK_BUTTON_MIDDLE = 2;
  GDK_BUTTON_SECONDARY = 3;

type
  PGdkEventType = ^TGdkEventType;
  TGdkEventType = longint;

const
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

type
  PGdkTouchpadGesturePhase = ^TGdkTouchpadGesturePhase;
  TGdkTouchpadGesturePhase = longint;

const
  GDK_TOUCHPAD_GESTURE_PHASE_BEGIN = 0;
  GDK_TOUCHPAD_GESTURE_PHASE_UPDATE = 1;
  GDK_TOUCHPAD_GESTURE_PHASE_END = 2;
  GDK_TOUCHPAD_GESTURE_PHASE_CANCEL = 3;

type
  PGdkScrollDirection = ^TGdkScrollDirection;
  TGdkScrollDirection = longint;

const
  GDK_SCROLL_UP = 0;
  GDK_SCROLL_DOWN = 1;
  GDK_SCROLL_LEFT = 2;
  GDK_SCROLL_RIGHT = 3;
  GDK_SCROLL_SMOOTH = 4;

type
  PGdkScrollUnit = ^TGdkScrollUnit;
  TGdkScrollUnit = longint;

const
  GDK_SCROLL_UNIT_WHEEL = 0;
  GDK_SCROLL_UNIT_SURFACE = 1;

type
  PGdkNotifyType = ^TGdkNotifyType;
  TGdkNotifyType = longint;

const
  GDK_NOTIFY_ANCESTOR = 0;
  GDK_NOTIFY_VIRTUAL = 1;
  GDK_NOTIFY_INFERIOR = 2;
  GDK_NOTIFY_NONLINEAR = 3;
  GDK_NOTIFY_NONLINEAR_VIRTUAL = 4;
  GDK_NOTIFY_UNKNOWN = 5;

type
  PGdkCrossingMode = ^TGdkCrossingMode;
  TGdkCrossingMode = longint;

const
  GDK_CROSSING_NORMAL = 0;
  GDK_CROSSING_GRAB = 1;
  GDK_CROSSING_UNGRAB = 2;
  GDK_CROSSING_GTK_GRAB = 3;
  GDK_CROSSING_GTK_UNGRAB = 4;
  GDK_CROSSING_STATE_CHANGED = 5;
  GDK_CROSSING_TOUCH_BEGIN = 6;
  GDK_CROSSING_TOUCH_END = 7;
  GDK_CROSSING_DEVICE_SWITCH = 8;

type
  TGdkEventSequence = record
  end;
  PGdkEventSequence = ^TGdkEventSequence;

function gdk_event_get_type: TGType; cdecl; external gtklib;
function gdk_event_sequence_get_type: TGType; cdecl; external gtklib;
function gdk_event_ref(event: PGdkEvent): PGdkEvent; cdecl; external gtklib;
procedure gdk_event_unref(event: PGdkEvent); cdecl; external gtklib;
function gdk_event_get_event_type(event: PGdkEvent): TGdkEventType; cdecl; external gtklib;
function gdk_event_get_surface(event: PGdkEvent): PGdkSurface; cdecl; external gtklib;
function gdk_event_get_seat(event: PGdkEvent): PGdkSeat; cdecl; external gtklib;
function gdk_event_get_device(event: PGdkEvent): PGdkDevice; cdecl; external gtklib;
function gdk_event_get_device_tool(event: PGdkEvent): PGdkDeviceTool; cdecl; external gtklib;
function gdk_event_get_time(event: PGdkEvent): Tguint32; cdecl; external gtklib;
function gdk_event_get_display(event: PGdkEvent): PGdkDisplay; cdecl; external gtklib;
function gdk_event_get_event_sequence(event: PGdkEvent): PGdkEventSequence; cdecl; external gtklib;
function gdk_event_get_modifier_state(event: PGdkEvent): TGdkModifierType; cdecl; external gtklib;
function gdk_event_get_position(event: PGdkEvent; x: Pdouble; y: Pdouble): Tgboolean; cdecl; external gtklib;
function gdk_event_get_axes(event: PGdkEvent; axes: PPdouble; n_axes: Pguint): Tgboolean; cdecl; external gtklib;
function gdk_event_get_axis(event: PGdkEvent; axis_use: TGdkAxisUse; Value: Pdouble): Tgboolean; cdecl; external gtklib;
function gdk_event_get_history(event: PGdkEvent; out_n_coords: Pguint): PGdkTimeCoord; cdecl; external gtklib;
function gdk_event_get_pointer_emulated(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_button_event_get_type: TGType; cdecl; external gtklib;
function gdk_button_event_get_button(event: PGdkEvent): Tguint; cdecl; external gtklib;
function gdk_scroll_event_get_type: TGType; cdecl; external gtklib;
function gdk_scroll_event_get_direction(event: PGdkEvent): TGdkScrollDirection; cdecl; external gtklib;
procedure gdk_scroll_event_get_deltas(event: PGdkEvent; delta_x: Pdouble; delta_y: Pdouble); cdecl; external gtklib;
function gdk_scroll_event_get_unit(event: PGdkEvent): TGdkScrollUnit; cdecl; external gtklib;
function gdk_scroll_event_is_stop(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_key_event_get_type: TGType; cdecl; external gtklib;
function gdk_key_event_get_keyval(event: PGdkEvent): Tguint; cdecl; external gtklib;
function gdk_key_event_get_keycode(event: PGdkEvent): Tguint; cdecl; external gtklib;
function gdk_key_event_get_consumed_modifiers(event: PGdkEvent): TGdkModifierType; cdecl; external gtklib;
function gdk_key_event_get_layout(event: PGdkEvent): Tguint; cdecl; external gtklib;
function gdk_key_event_get_level(event: PGdkEvent): Tguint; cdecl; external gtklib;
function gdk_key_event_is_modifier(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_focus_event_get_type: TGType; cdecl; external gtklib;
function gdk_focus_event_get_in(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_touch_event_get_type: TGType; cdecl; external gtklib;
function gdk_touch_event_get_emulating_pointer(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_crossing_event_get_type: TGType; cdecl; external gtklib;
function gdk_crossing_event_get_mode(event: PGdkEvent): TGdkCrossingMode; cdecl; external gtklib;
function gdk_crossing_event_get_detail(event: PGdkEvent): TGdkNotifyType; cdecl; external gtklib;
function gdk_crossing_event_get_focus(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_touchpad_event_get_type: TGType; cdecl; external gtklib;
function gdk_touchpad_event_get_gesture_phase(event: PGdkEvent): TGdkTouchpadGesturePhase; cdecl; external gtklib;
function gdk_touchpad_event_get_n_fingers(event: PGdkEvent): Tguint; cdecl; external gtklib;
procedure gdk_touchpad_event_get_deltas(event: PGdkEvent; dx: Pdouble; dy: Pdouble); cdecl; external gtklib;
function gdk_touchpad_event_get_pinch_angle_delta(event: PGdkEvent): Tdouble; cdecl; external gtklib;
function gdk_touchpad_event_get_pinch_scale(event: PGdkEvent): Tdouble; cdecl; external gtklib;
function gdk_pad_event_get_type: TGType; cdecl; external gtklib;
function gdk_pad_event_get_button(event: PGdkEvent): Tguint; cdecl; external gtklib;
procedure gdk_pad_event_get_axis_value(event: PGdkEvent; index: Pguint; Value: Pdouble); cdecl; external gtklib;
procedure gdk_pad_event_get_group_mode(event: PGdkEvent; group: Pguint; mode: Pguint); cdecl; external gtklib;
function gdk_dnd_event_get_type: TGType; cdecl; external gtklib;
function gdk_dnd_event_get_drop(event: PGdkEvent): PGdkDrop; cdecl; external gtklib;
function gdk_grab_broken_event_get_type: TGType; cdecl; external gtklib;
function gdk_grab_broken_event_get_grab_surface(event: PGdkEvent): PGdkSurface; cdecl; external gtklib;
function gdk_grab_broken_event_get_implicit(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_motion_event_get_type: TGType; cdecl; external gtklib;
function gdk_delete_event_get_type: TGType; cdecl; external gtklib;
function gdk_proximity_event_get_type: TGType; cdecl; external gtklib;
function gdk_event_triggers_context_menu(event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gdk_events_get_distance(event1: PGdkEvent; event2: PGdkEvent; distance: Pdouble): Tgboolean; cdecl; external gtklib;
function gdk_events_get_angle(event1: PGdkEvent; event2: PGdkEvent; angle: Pdouble): Tgboolean; cdecl; external gtklib;
function gdk_events_get_center(event1: PGdkEvent; event2: PGdkEvent; x: Pdouble; y: Pdouble): Tgboolean; cdecl; external gtklib;

type
  PGdkKeyMatch = ^TGdkKeyMatch;
  TGdkKeyMatch = longint;

const
  GDK_KEY_MATCH_NONE = 0;
  GDK_KEY_MATCH_PARTIAL = 1;
  GDK_KEY_MATCH_EXACT = 2;


function gdk_key_event_matches(event: PGdkEvent; keyval: Tguint; modifiers: TGdkModifierType): TGdkKeyMatch; cdecl; external gtklib;
function gdk_key_event_get_match(event: PGdkEvent; keyval: Pguint; modifiers: PGdkModifierType): Tgboolean; cdecl; external gtklib;

function GDK_IS_EVENT_TYPE(event: PGdkEvent; _type: TGdkEventType): Tgboolean;

function GDK_TYPE_EVENT_SEQUENCE: TGType;
function GDK_TYPE_BUTTON_EVENT: TGType;
function GDK_TYPE_CROSSING_EVENT: TGType;
function GDK_TYPE_DELETE_EVENT: TGType;
function GDK_TYPE_DND_EVENT: TGType;
function GDK_TYPE_FOCUS_EVENT: TGType;
function GDK_TYPE_GRAB_BROKEN_EVENT: TGType;
function GDK_TYPE_KEY_EVENT: TGType;
function GDK_TYPE_MOTION_EVENT: TGType;
function GDK_TYPE_PAD_EVENT: TGType;
function GDK_TYPE_PROXIMITY_EVENT: TGType;
function GDK_TYPE_SCROLL_EVENT: TGType;
function GDK_TYPE_TOUCH_EVENT: TGType;
function GDK_TYPE_TOUCHPAD_EVENT: TGType;


// === Konventiert am: 30-7-24 17:39:47 ===

function GDK_TYPE_EVENT: TGType;
function GDK_EVENT(obj: Pointer): PGdkEvent;
function GDK_IS_EVENT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_EVENT: TGType;
begin
  GDK_TYPE_EVENT := gdk_event_get_type;
end;

function GDK_EVENT(obj: Pointer): PGdkEvent;
begin
  Result := PGdkEvent(g_type_check_instance_cast(obj, GDK_TYPE_EVENT));
end;

function GDK_IS_EVENT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_EVENT);
end;

// ====

function GDK_TYPE_EVENT_SEQUENCE: TGType;
begin
  GDK_TYPE_EVENT_SEQUENCE := gdk_event_sequence_get_type;
end;


function GDK_IS_EVENT_TYPE(event: PGdkEvent; _type: TGdkEventType): Tgboolean;
begin
  GDK_IS_EVENT_TYPE := gdk_event_get_event_type(event) = _type;
end;

function GDK_TYPE_BUTTON_EVENT: TGType;
begin
  GDK_TYPE_BUTTON_EVENT := gdk_button_event_get_type;
end;

function GDK_TYPE_CROSSING_EVENT: TGType;
begin
  GDK_TYPE_CROSSING_EVENT := gdk_crossing_event_get_type;
end;

function GDK_TYPE_DELETE_EVENT: TGType;
begin
  GDK_TYPE_DELETE_EVENT := gdk_delete_event_get_type;
end;

function GDK_TYPE_DND_EVENT: TGType;
begin
  GDK_TYPE_DND_EVENT := gdk_dnd_event_get_type;
end;

function GDK_TYPE_FOCUS_EVENT: TGType;
begin
  GDK_TYPE_FOCUS_EVENT := gdk_focus_event_get_type;
end;

function GDK_TYPE_GRAB_BROKEN_EVENT: TGType;
begin
  GDK_TYPE_GRAB_BROKEN_EVENT := gdk_grab_broken_event_get_type;
end;

function GDK_TYPE_KEY_EVENT: TGType;
begin
  GDK_TYPE_KEY_EVENT := gdk_key_event_get_type;
end;

function GDK_TYPE_MOTION_EVENT: TGType;
begin
  GDK_TYPE_MOTION_EVENT := gdk_motion_event_get_type;
end;

function GDK_TYPE_PAD_EVENT: TGType;
begin
  GDK_TYPE_PAD_EVENT := gdk_pad_event_get_type;
end;

function GDK_TYPE_PROXIMITY_EVENT: TGType;
begin
  GDK_TYPE_PROXIMITY_EVENT := gdk_proximity_event_get_type;
end;

function GDK_TYPE_SCROLL_EVENT: TGType;
begin
  GDK_TYPE_SCROLL_EVENT := gdk_scroll_event_get_type;
end;

function GDK_TYPE_TOUCH_EVENT: TGType;
begin
  GDK_TYPE_TOUCH_EVENT := gdk_touch_event_get_type;
end;

function GDK_TYPE_TOUCHPAD_EVENT: TGType;
begin
  GDK_TYPE_TOUCHPAD_EVENT := gdk_touchpad_event_get_type;
end;


end.
