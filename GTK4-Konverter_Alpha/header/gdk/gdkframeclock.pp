
unit gdkframeclock;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkframeclock.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkframeclock.h
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
PGdkFrameClock  = ^GdkFrameClock;
PGdkFrameClockPhase  = ^GdkFrameClockPhase;
PGdkFrameTimings  = ^GdkFrameTimings;
Pgint64  = ^gint64;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_FRAME_CLOCK_H__}
{$define __GDK_FRAME_CLOCK_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkframetimings.h>}


function GDK_TYPE_FRAME_CLOCK : longint; { return type might be wrong }

function GDK_FRAME_CLOCK(obj : longint) : longint;

function GDK_FRAME_CLOCK_CLASS(klass : longint) : longint;

function GDK_IS_FRAME_CLOCK(obj : longint) : longint;

function GDK_IS_FRAME_CLOCK_CLASS(klass : longint) : longint;

function GDK_FRAME_CLOCK_GET_CLASS(obj : longint) : longint;

type


  PGdkFrameClockPhase = ^TGdkFrameClockPhase;
  TGdkFrameClockPhase = (GDK_FRAME_CLOCK_PHASE_NONE := 0,GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS := 1 shl 0,
    GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT := 1 shl 1,
    GDK_FRAME_CLOCK_PHASE_UPDATE := 1 shl 2,GDK_FRAME_CLOCK_PHASE_LAYOUT := 1 shl 3,
    GDK_FRAME_CLOCK_PHASE_PAINT := 1 shl 4,GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS := 1 shl 5,
    GDK_FRAME_CLOCK_PHASE_AFTER_PAINT := 1 shl 6
    );


function gdk_frame_clock_get_type:TGType;cdecl;external;

function gdk_frame_clock_get_frame_time(frame_clock:PGdkFrameClock):Tgint64;cdecl;external;

procedure gdk_frame_clock_request_phase(frame_clock:PGdkFrameClock; phase:TGdkFrameClockPhase);cdecl;external;

procedure gdk_frame_clock_begin_updating(frame_clock:PGdkFrameClock);cdecl;external;

procedure gdk_frame_clock_end_updating(frame_clock:PGdkFrameClock);cdecl;external;


function gdk_frame_clock_get_frame_counter(frame_clock:PGdkFrameClock):Tgint64;cdecl;external;

function gdk_frame_clock_get_history_start(frame_clock:PGdkFrameClock):Tgint64;cdecl;external;

function gdk_frame_clock_get_timings(frame_clock:PGdkFrameClock; frame_counter:Tgint64):PGdkFrameTimings;cdecl;external;

function gdk_frame_clock_get_current_timings(frame_clock:PGdkFrameClock):PGdkFrameTimings;cdecl;external;

procedure gdk_frame_clock_get_refresh_info(frame_clock:PGdkFrameClock; base_time:Tgint64; refresh_interval_return:Pgint64; presentation_time_return:Pgint64);cdecl;external;

function gdk_frame_clock_get_fps(frame_clock:PGdkFrameClock):Tdouble;cdecl;external;

{$endif}


implementation

function GDK_TYPE_FRAME_CLOCK : longint; { return type might be wrong }
  begin
    GDK_TYPE_FRAME_CLOCK:=gdk_frame_clock_get_type;
  end;

function GDK_FRAME_CLOCK(obj : longint) : longint;
begin
  GDK_FRAME_CLOCK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_FRAME_CLOCK,GdkFrameClock);
end;

function GDK_FRAME_CLOCK_CLASS(klass : longint) : longint;
begin
  GDK_FRAME_CLOCK_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_FRAME_CLOCK,GdkFrameClockClass);
end;

function GDK_IS_FRAME_CLOCK(obj : longint) : longint;
begin
  GDK_IS_FRAME_CLOCK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_FRAME_CLOCK);
end;

function GDK_IS_FRAME_CLOCK_CLASS(klass : longint) : longint;
begin
  GDK_IS_FRAME_CLOCK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_FRAME_CLOCK);
end;

function GDK_FRAME_CLOCK_GET_CLASS(obj : longint) : longint;
begin
  GDK_FRAME_CLOCK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_FRAME_CLOCK,GdkFrameClockClass);
end;


end.
