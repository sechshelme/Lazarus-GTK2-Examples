/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGdkFrameClock = record
  end;
  PGdkFrameClock = ^TGdkFrameClock;

  TGdkFrameClockClass = record
  end;
  PGdkFrameClockClass = ^TGdkFrameClockClass;

  PGdkFrameClockPhase = ^TGdkFrameClockPhase;
  TGdkFrameClockPhase = longint;

const
  GDK_FRAME_CLOCK_PHASE_NONE = 0;
  GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS = 1 shl 0;
  GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT = 1 shl 1;
  GDK_FRAME_CLOCK_PHASE_UPDATE = 1 shl 2;
  GDK_FRAME_CLOCK_PHASE_LAYOUT = 1 shl 3;
  GDK_FRAME_CLOCK_PHASE_PAINT = 1 shl 4;
  GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS = 1 shl 5;
  GDK_FRAME_CLOCK_PHASE_AFTER_PAINT = 1 shl 6;

function gdk_frame_clock_get_type: TGType; cdecl; external gtklib;
function gdk_frame_clock_get_frame_time(frame_clock: PGdkFrameClock): Tgint64; cdecl; external gtklib;
procedure gdk_frame_clock_request_phase(frame_clock: PGdkFrameClock; phase: TGdkFrameClockPhase); cdecl; external gtklib;
procedure gdk_frame_clock_begin_updating(frame_clock: PGdkFrameClock); cdecl; external gtklib;
procedure gdk_frame_clock_end_updating(frame_clock: PGdkFrameClock); cdecl; external gtklib;
function gdk_frame_clock_get_frame_counter(frame_clock: PGdkFrameClock): Tgint64; cdecl; external gtklib;
function gdk_frame_clock_get_history_start(frame_clock: PGdkFrameClock): Tgint64; cdecl; external gtklib;
function gdk_frame_clock_get_timings(frame_clock: PGdkFrameClock; frame_counter: Tgint64): PGdkFrameTimings; cdecl; external gtklib;
function gdk_frame_clock_get_current_timings(frame_clock: PGdkFrameClock): PGdkFrameTimings; cdecl; external gtklib;
procedure gdk_frame_clock_get_refresh_info(frame_clock: PGdkFrameClock; base_time: Tgint64; refresh_interval_return: Pgint64; presentation_time_return: Pgint64); cdecl; external gtklib;
function gdk_frame_clock_get_fps(frame_clock: PGdkFrameClock): Tdouble; cdecl; external gtklib;

// === Konventiert am: 31-7-24 19:15:15 ===

function GDK_TYPE_FRAME_CLOCK: TGType;
function GDK_FRAME_CLOCK(obj: Pointer): PGdkFrameClock;
function GDK_FRAME_CLOCK_CLASS(klass: Pointer): PGdkFrameClockClass;
function GDK_IS_FRAME_CLOCK(obj: Pointer): Tgboolean;
function GDK_IS_FRAME_CLOCK_CLASS(klass: Pointer): Tgboolean;
function GDK_FRAME_CLOCK_GET_CLASS(obj: Pointer): PGdkFrameClockClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_FRAME_CLOCK: TGType;
begin
  GDK_TYPE_FRAME_CLOCK := gdk_frame_clock_get_type;
end;

function GDK_FRAME_CLOCK(obj: Pointer): PGdkFrameClock;
begin
  Result := PGdkFrameClock(g_type_check_instance_cast(obj, GDK_TYPE_FRAME_CLOCK));
end;

function GDK_FRAME_CLOCK_CLASS(klass: Pointer): PGdkFrameClockClass;
begin
  Result := PGdkFrameClockClass(g_type_check_class_cast(klass, GDK_TYPE_FRAME_CLOCK));
end;

function GDK_IS_FRAME_CLOCK(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_FRAME_CLOCK);
end;

function GDK_IS_FRAME_CLOCK_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_FRAME_CLOCK);
end;

function GDK_FRAME_CLOCK_GET_CLASS(obj: Pointer): PGdkFrameClockClass;
begin
  Result := PGdkFrameClockClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
