
  Type
  PGdkFrameTimings  = ^GdkFrameTimings;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2012 Red Hat, Inc.
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
{$ifndef __GDK_FRAME_TIMINGS_H__}
{$define __GDK_FRAME_TIMINGS_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }

  type
    _GdkFrameTimings = GdkFrameTimings;
  { Zeile entfernt  }

  function gdk_frame_timings_get_type:GType;

  { Zeile entfernt  }
  function gdk_frame_timings_ref(timings:PGdkFrameTimings):^GdkFrameTimings;

  { Zeile entfernt  }
  procedure gdk_frame_timings_unref(timings:PGdkFrameTimings);

  { Zeile entfernt  }
  function gdk_frame_timings_get_frame_counter(timings:PGdkFrameTimings):gint64;

  { Zeile entfernt  }
  function gdk_frame_timings_get_complete(timings:PGdkFrameTimings):gboolean;

  { Zeile entfernt  }
  function gdk_frame_timings_get_frame_time(timings:PGdkFrameTimings):gint64;

  { Zeile entfernt  }
  function gdk_frame_timings_get_presentation_time(timings:PGdkFrameTimings):gint64;

  { Zeile entfernt  }
  function gdk_frame_timings_get_refresh_interval(timings:PGdkFrameTimings):gint64;

  { Zeile entfernt  }
  function gdk_frame_timings_get_predicted_presentation_time(timings:PGdkFrameTimings):gint64;

  { Zeile entfernt  }
{$endif}
  { __GDK_FRAME_TIMINGS_H__  }
  function gdk_frame_timings_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_ref(timings:PGdkFrameTimings):PGdkFrameTimings;
  begin
    { You must implement this function }
  end;
  procedure gdk_frame_timings_unref(timings:PGdkFrameTimings);
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_get_frame_counter(timings:PGdkFrameTimings):gint64;
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_get_complete(timings:PGdkFrameTimings):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_get_frame_time(timings:PGdkFrameTimings):gint64;
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_get_presentation_time(timings:PGdkFrameTimings):gint64;
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_get_refresh_interval(timings:PGdkFrameTimings):gint64;
  begin
    { You must implement this function }
  end;
  function gdk_frame_timings_get_predicted_presentation_time(timings:PGdkFrameTimings):gint64;
  begin
    { You must implement this function }
  end;

