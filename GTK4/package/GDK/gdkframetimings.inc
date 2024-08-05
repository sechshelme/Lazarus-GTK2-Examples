/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkFrameTimings = record
  end;
  PGdkFrameTimings = ^TGdkFrameTimings;

function gdk_frame_timings_get_type: TGType; cdecl; external gtklib;
function gdk_frame_timings_ref(timings: PGdkFrameTimings): PGdkFrameTimings; cdecl; external gtklib;
procedure gdk_frame_timings_unref(timings: PGdkFrameTimings); cdecl; external gtklib;
function gdk_frame_timings_get_frame_counter(timings: PGdkFrameTimings): Tgint64; cdecl; external gtklib;
function gdk_frame_timings_get_complete(timings: PGdkFrameTimings): Tgboolean; cdecl; external gtklib;
function gdk_frame_timings_get_frame_time(timings: PGdkFrameTimings): Tgint64; cdecl; external gtklib;
function gdk_frame_timings_get_presentation_time(timings: PGdkFrameTimings): Tgint64; cdecl; external gtklib;
function gdk_frame_timings_get_refresh_interval(timings: PGdkFrameTimings): Tgint64; cdecl; external gtklib;
function gdk_frame_timings_get_predicted_presentation_time(timings: PGdkFrameTimings): Tgint64; cdecl; external gtklib;

// === Konventiert am: 31-7-24 19:21:02 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
