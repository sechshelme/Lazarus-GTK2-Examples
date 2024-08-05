/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


function gdk_input_source_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_INPUT_SOURCE: TGType;

function gdk_device_pad_feature_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_DEVICE_PAD_FEATURE: TGType;

function gdk_device_tool_type_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_DEVICE_TOOL_TYPE: TGType;

function gdk_drag_cancel_reason_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_DRAG_CANCEL_REASON: TGType;

function gdk_gl_api_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_GL_API: TGType;

function gdk_gravity_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_GRAVITY: TGType;

function gdk_modifier_type_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_MODIFIER_TYPE: TGType;

function gdk_dmabuf_error_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_DMABUF_ERROR: TGType;

function gdk_gl_error_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_GL_ERROR: TGType;

function gdk_vulkan_error_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_VULKAN_ERROR: TGType;

function gdk_axis_use_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_AXIS_USE: TGType;

function gdk_axis_flags_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_AXIS_FLAGS: TGType;

function gdk_drag_action_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_DRAG_ACTION: TGType;

function gdk_memory_format_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_MEMORY_FORMAT: TGType;

{ enumerations from "gdkevents.h"  }
function gdk_event_type_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_EVENT_TYPE: TGType;

function gdk_touchpad_gesture_phase_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_TOUCHPAD_GESTURE_PHASE: TGType;

function gdk_scroll_direction_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_SCROLL_DIRECTION: TGType;

function gdk_scroll_unit_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_SCROLL_UNIT: TGType;

function gdk_notify_type_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_NOTIFY_TYPE: TGType;

function gdk_crossing_mode_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_CROSSING_MODE: TGType;

function gdk_key_match_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_KEY_MATCH: TGType;

{ enumerations from "gdkframeclock.h"  }
function gdk_frame_clock_phase_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_FRAME_CLOCK_PHASE: TGType;

{ enumerations from "gdkmonitor.h"  }
function gdk_subpixel_layout_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_SUBPIXEL_LAYOUT: TGType;

{ enumerations from "gdkpaintable.h"  }
function gdk_paintable_flags_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_PAINTABLE_FLAGS: TGType;

{ enumerations from "gdkpopuplayout.h"  }
function gdk_anchor_hints_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_ANCHOR_HINTS: TGType;

{ enumerations from "gdkseat.h"  }
function gdk_seat_capabilities_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_SEAT_CAPABILITIES: TGType;

{ enumerations from "gdktexture.h"  }
function gdk_texture_error_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_TEXTURE_ERROR: TGType;

{ enumerations from "gdktoplevel.h"  }
function gdk_surface_edge_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_SURFACE_EDGE: TGType;

function gdk_fullscreen_mode_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_FULLSCREEN_MODE: TGType;

function gdk_toplevel_state_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_TOPLEVEL_STATE: TGType;

function gdk_titlebar_gesture_get_type: TGType; cdecl; external gtklib;
function GDK_TYPE_TITLEBAR_GESTURE: TGType;

{ Generated data ends here  }

// === Konventiert am: 31-7-24 19:26:16 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}


function GDK_TYPE_INPUT_SOURCE: TGType;
begin
  GDK_TYPE_INPUT_SOURCE := gdk_input_source_get_type;
end;

function GDK_TYPE_DEVICE_PAD_FEATURE: TGType;
begin
  GDK_TYPE_DEVICE_PAD_FEATURE := gdk_device_pad_feature_get_type;
end;

function GDK_TYPE_DEVICE_TOOL_TYPE: TGType;
begin
  GDK_TYPE_DEVICE_TOOL_TYPE := gdk_device_tool_type_get_type;
end;

function GDK_TYPE_DRAG_CANCEL_REASON: TGType;
begin
  GDK_TYPE_DRAG_CANCEL_REASON := gdk_drag_cancel_reason_get_type;
end;

function GDK_TYPE_GL_API: TGType;
begin
  GDK_TYPE_GL_API := gdk_gl_api_get_type;
end;

function GDK_TYPE_GRAVITY: TGType;
begin
  GDK_TYPE_GRAVITY := gdk_gravity_get_type;
end;

function GDK_TYPE_MODIFIER_TYPE: TGType;
begin
  GDK_TYPE_MODIFIER_TYPE := gdk_modifier_type_get_type;
end;

function GDK_TYPE_DMABUF_ERROR: TGType;
begin
  GDK_TYPE_DMABUF_ERROR := gdk_dmabuf_error_get_type;
end;

function GDK_TYPE_GL_ERROR: TGType;
begin
  GDK_TYPE_GL_ERROR := gdk_gl_error_get_type;
end;

function GDK_TYPE_VULKAN_ERROR: TGType;
begin
  GDK_TYPE_VULKAN_ERROR := gdk_vulkan_error_get_type;
end;

function GDK_TYPE_AXIS_USE: TGType;
begin
  GDK_TYPE_AXIS_USE := gdk_axis_use_get_type;
end;

function GDK_TYPE_AXIS_FLAGS: TGType;
begin
  GDK_TYPE_AXIS_FLAGS := gdk_axis_flags_get_type;
end;

function GDK_TYPE_DRAG_ACTION: TGType;
begin
  GDK_TYPE_DRAG_ACTION := gdk_drag_action_get_type;
end;

function GDK_TYPE_MEMORY_FORMAT: TGType;
begin
  GDK_TYPE_MEMORY_FORMAT := gdk_memory_format_get_type;
end;

function GDK_TYPE_EVENT_TYPE: TGType;
begin
  GDK_TYPE_EVENT_TYPE := gdk_event_type_get_type;
end;

function GDK_TYPE_TOUCHPAD_GESTURE_PHASE: TGType;
begin
  GDK_TYPE_TOUCHPAD_GESTURE_PHASE := gdk_touchpad_gesture_phase_get_type;
end;

function GDK_TYPE_SCROLL_DIRECTION: TGType;
begin
  GDK_TYPE_SCROLL_DIRECTION := gdk_scroll_direction_get_type;
end;

function GDK_TYPE_SCROLL_UNIT: TGType;
begin
  GDK_TYPE_SCROLL_UNIT := gdk_scroll_unit_get_type;
end;

function GDK_TYPE_NOTIFY_TYPE: TGType;
begin
  GDK_TYPE_NOTIFY_TYPE := gdk_notify_type_get_type;
end;

function GDK_TYPE_CROSSING_MODE: TGType;
begin
  GDK_TYPE_CROSSING_MODE := gdk_crossing_mode_get_type;
end;

function GDK_TYPE_KEY_MATCH: TGType;
begin
  GDK_TYPE_KEY_MATCH := gdk_key_match_get_type;
end;

function GDK_TYPE_FRAME_CLOCK_PHASE: TGType;
begin
  GDK_TYPE_FRAME_CLOCK_PHASE := gdk_frame_clock_phase_get_type;
end;

function GDK_TYPE_SUBPIXEL_LAYOUT: TGType;
begin
  GDK_TYPE_SUBPIXEL_LAYOUT := gdk_subpixel_layout_get_type;
end;

function GDK_TYPE_PAINTABLE_FLAGS: TGType;
begin
  GDK_TYPE_PAINTABLE_FLAGS := gdk_paintable_flags_get_type;
end;

function GDK_TYPE_ANCHOR_HINTS: TGType;
begin
  GDK_TYPE_ANCHOR_HINTS := gdk_anchor_hints_get_type;
end;

function GDK_TYPE_SEAT_CAPABILITIES: TGType;
begin
  GDK_TYPE_SEAT_CAPABILITIES := gdk_seat_capabilities_get_type;
end;

function GDK_TYPE_TEXTURE_ERROR: TGType;
begin
  GDK_TYPE_TEXTURE_ERROR := gdk_texture_error_get_type;
end;

function GDK_TYPE_SURFACE_EDGE: TGType;
begin
  GDK_TYPE_SURFACE_EDGE := gdk_surface_edge_get_type;
end;

function GDK_TYPE_FULLSCREEN_MODE: TGType;
begin
  GDK_TYPE_FULLSCREEN_MODE := gdk_fullscreen_mode_get_type;
end;

function GDK_TYPE_TOPLEVEL_STATE: TGType;
begin
  GDK_TYPE_TOPLEVEL_STATE := gdk_toplevel_state_get_type;
end;

function GDK_TYPE_TITLEBAR_GESTURE: TGType;
begin
  GDK_TYPE_TITLEBAR_GESTURE := gdk_titlebar_gesture_get_type;
end;


{$ENDIF read_implementation}
