
  Type
  PGdkFrameClock  = ^GdkFrameClock;
  PGdkFrameTimings  = ^GdkFrameTimings;
  Pgint64  = ^gint64;
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
   * License along with this library; if not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2010.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GDK_FRAME_CLOCK_H__}
{$define __GDK_FRAME_CLOCK_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkframetimings.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_FRAME_CLOCK : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_FRAME_CLOCK(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_FRAME_CLOCK_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_FRAME_CLOCK(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_FRAME_CLOCK_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_FRAME_CLOCK_GET_CLASS(obj : longint) : longint;  


  type
    _GdkFrameClock = GdkFrameClock;
    _GdkFrameClockPrivate = GdkFrameClockPrivate;
    _GdkFrameClockClass = GdkFrameClockClass;
  {*
   * GdkFrameClockPhase:
   * @GDK_FRAME_CLOCK_PHASE_NONE: no phase
   * @GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS: corresponds to GdkFrameClock::flush-events. Should not be handled by applications.
   * @GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT: corresponds to GdkFrameClock::before-paint. Should not be handled by applications.
   * @GDK_FRAME_CLOCK_PHASE_UPDATE: corresponds to GdkFrameClock::update.
   * @GDK_FRAME_CLOCK_PHASE_LAYOUT: corresponds to GdkFrameClock::layout. Should not be handled by applications.
   * @GDK_FRAME_CLOCK_PHASE_PAINT: corresponds to GdkFrameClock::paint.
   * @GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS: corresponds to GdkFrameClock::resume-events. Should not be handled by applications.
   * @GDK_FRAME_CLOCK_PHASE_AFTER_PAINT: corresponds to GdkFrameClock::after-paint. Should not be handled by applications.
   *
   * Used to represent the different paint clock phases that can be requested.
   *
   * The elements of the enumeration correspond to the signals of `GdkFrameClock`.
    }

    GdkFrameClockPhase = (GDK_FRAME_CLOCK_PHASE_NONE := 0,GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS := 1 shl 0,
      GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT := 1 shl 1,
      GDK_FRAME_CLOCK_PHASE_UPDATE := 1 shl 2,GDK_FRAME_CLOCK_PHASE_LAYOUT := 1 shl 3,
      GDK_FRAME_CLOCK_PHASE_PAINT := 1 shl 4,GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS := 1 shl 5,
      GDK_FRAME_CLOCK_PHASE_AFTER_PAINT := 1 shl 6
      );
  { Zeile entfernt  }

  function gdk_frame_clock_get_type:GType;

  { Zeile entfernt  }
  function gdk_frame_clock_get_frame_time(frame_clock:PGdkFrameClock):gint64;

  { Zeile entfernt  }
  procedure gdk_frame_clock_request_phase(frame_clock:PGdkFrameClock; phase:GdkFrameClockPhase);

  { Zeile entfernt  }
  procedure gdk_frame_clock_begin_updating(frame_clock:PGdkFrameClock);

  { Zeile entfernt  }
  procedure gdk_frame_clock_end_updating(frame_clock:PGdkFrameClock);

  { Frame history  }
  { Zeile entfernt  }
  function gdk_frame_clock_get_frame_counter(frame_clock:PGdkFrameClock):gint64;

  { Zeile entfernt  }
  function gdk_frame_clock_get_history_start(frame_clock:PGdkFrameClock):gint64;

  { Zeile entfernt  }
  function gdk_frame_clock_get_timings(frame_clock:PGdkFrameClock; frame_counter:gint64):^GdkFrameTimings;

  { Zeile entfernt  }
  function gdk_frame_clock_get_current_timings(frame_clock:PGdkFrameClock):^GdkFrameTimings;

  { Zeile entfernt  }
  procedure gdk_frame_clock_get_refresh_info(frame_clock:PGdkFrameClock; base_time:gint64; refresh_interval_return:Pgint64; presentation_time_return:Pgint64);

  { Zeile entfernt  }
  function gdk_frame_clock_get_fps(frame_clock:PGdkFrameClock):double;

  { Zeile entfernt  }
{$endif}
  { __GDK_FRAME_CLOCK_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_FRAME_CLOCK : longint; { return type might be wrong }
    begin
      GDK_TYPE_FRAME_CLOCK:=gdk_frame_clock_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_FRAME_CLOCK(obj : longint) : longint;
  begin
    GDK_FRAME_CLOCK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_FRAME_CLOCK,GdkFrameClock);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_FRAME_CLOCK_CLASS(klass : longint) : longint;
  begin
    GDK_FRAME_CLOCK_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_FRAME_CLOCK,GdkFrameClockClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_FRAME_CLOCK(obj : longint) : longint;
  begin
    GDK_IS_FRAME_CLOCK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_FRAME_CLOCK);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_FRAME_CLOCK_CLASS(klass : longint) : longint;
  begin
    GDK_IS_FRAME_CLOCK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_FRAME_CLOCK);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_FRAME_CLOCK_GET_CLASS(obj : longint) : longint;
  begin
    GDK_FRAME_CLOCK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_FRAME_CLOCK,GdkFrameClockClass);
  end;

  function gdk_frame_clock_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_frame_clock_get_frame_time(frame_clock:PGdkFrameClock):gint64;
  begin
    { You must implement this function }
  end;
  procedure gdk_frame_clock_request_phase(frame_clock:PGdkFrameClock; phase:GdkFrameClockPhase);
  begin
    { You must implement this function }
  end;
  procedure gdk_frame_clock_begin_updating(frame_clock:PGdkFrameClock);
  begin
    { You must implement this function }
  end;
  procedure gdk_frame_clock_end_updating(frame_clock:PGdkFrameClock);
  begin
    { You must implement this function }
  end;
  function gdk_frame_clock_get_frame_counter(frame_clock:PGdkFrameClock):gint64;
  begin
    { You must implement this function }
  end;
  function gdk_frame_clock_get_history_start(frame_clock:PGdkFrameClock):gint64;
  begin
    { You must implement this function }
  end;
  function gdk_frame_clock_get_timings(frame_clock:PGdkFrameClock; frame_counter:gint64):PGdkFrameTimings;
  begin
    { You must implement this function }
  end;
  function gdk_frame_clock_get_current_timings(frame_clock:PGdkFrameClock):PGdkFrameTimings;
  begin
    { You must implement this function }
  end;
  procedure gdk_frame_clock_get_refresh_info(frame_clock:PGdkFrameClock; base_time:gint64; refresh_interval_return:Pgint64; presentation_time_return:Pgint64);
  begin
    { You must implement this function }
  end;
  function gdk_frame_clock_get_fps(frame_clock:PGdkFrameClock):double;
  begin
    { You must implement this function }
  end;

