
unit gdkframetimings;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkframetimings.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkframetimings.h
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
PGdkFrameTimings  = ^GdkFrameTimings;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_FRAME_TIMINGS_H__}
{$define __GDK_FRAME_TIMINGS_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdkversionmacros.h>}

type


function gdk_frame_timings_get_type:TGType;cdecl;external;

function gdk_frame_timings_ref(timings:PGdkFrameTimings):PGdkFrameTimings;cdecl;external;

procedure gdk_frame_timings_unref(timings:PGdkFrameTimings);cdecl;external;

function gdk_frame_timings_get_frame_counter(timings:PGdkFrameTimings):Tgint64;cdecl;external;

function gdk_frame_timings_get_complete(timings:PGdkFrameTimings):Tgboolean;cdecl;external;

function gdk_frame_timings_get_frame_time(timings:PGdkFrameTimings):Tgint64;cdecl;external;

function gdk_frame_timings_get_presentation_time(timings:PGdkFrameTimings):Tgint64;cdecl;external;

function gdk_frame_timings_get_refresh_interval(timings:PGdkFrameTimings):Tgint64;cdecl;external;

function gdk_frame_timings_get_predicted_presentation_time(timings:PGdkFrameTimings):Tgint64;cdecl;external;

{$endif}


implementation


end.
