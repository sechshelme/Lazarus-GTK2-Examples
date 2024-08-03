
unit gtkprintjob;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkprintjob.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkprintjob.h
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
Pcairo_surface_t  = ^cairo_surface_t;
Pchar  = ^char;
PGError  = ^GError;
PGtkPageRange  = ^GtkPageRange;
PGtkPageSetup  = ^GtkPageSetup;
PGtkPrinter  = ^GtkPrinter;
PGtkPrintJob  = ^GtkPrintJob;
PGtkPrintSettings  = ^GtkPrintSettings;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GtkPrintJob
 * Copyright (C) 2006 Red Hat,Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtk.h>}
{$include <gtk/print/gtkprinter.h>}

{ was #define dname def_expr }
function GTK_TYPE_PRINT_JOB : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_PRINT_JOB(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_PRINT_JOB(obj : longint) : longint;

type
{*
 * GtkPrintJobCompleteFunc:
 * @print_job: the `GtkPrintJob`
 * @user_data: user data that has been passed to gtk_print_job_send()
 * @error: a `GError` that contains error information if the sending
 *   of the print job failed, otherwise %NULL
 *
 * The type of callback that is passed to gtk_print_job_send().
 *
 * It is called when the print job has been completely sent.
  }
(* Const before type ignored *)

  TGtkPrintJobCompleteFunc = procedure (print_job:PGtkPrintJob; user_data:Tgpointer; error:PGError);cdecl;

function gtk_print_job_get_type:TGType;cdecl;external;
(* Const before type ignored *)
function gtk_print_job_new(title:Pchar; printer:PGtkPrinter; settings:PGtkPrintSettings; page_setup:PGtkPageSetup):PGtkPrintJob;cdecl;external;
function gtk_print_job_get_settings(job:PGtkPrintJob):PGtkPrintSettings;cdecl;external;
function gtk_print_job_get_printer(job:PGtkPrintJob):PGtkPrinter;cdecl;external;
(* Const before type ignored *)
function gtk_print_job_get_title(job:PGtkPrintJob):Pchar;cdecl;external;
function gtk_print_job_get_status(job:PGtkPrintJob):TGtkPrintStatus;cdecl;external;
(* Const before type ignored *)
function gtk_print_job_set_source_file(job:PGtkPrintJob; filename:Pchar; error:PPGError):Tgboolean;cdecl;external;
function gtk_print_job_set_source_fd(job:PGtkPrintJob; fd:longint; error:PPGError):Tgboolean;cdecl;external;
function gtk_print_job_get_surface(job:PGtkPrintJob; error:PPGError):Pcairo_surface_t;cdecl;external;
procedure gtk_print_job_set_track_print_status(job:PGtkPrintJob; track_status:Tgboolean);cdecl;external;
function gtk_print_job_get_track_print_status(job:PGtkPrintJob):Tgboolean;cdecl;external;
procedure gtk_print_job_send(job:PGtkPrintJob; callback:TGtkPrintJobCompleteFunc; user_data:Tgpointer; dnotify:TGDestroyNotify);cdecl;external;
function gtk_print_job_get_pages(job:PGtkPrintJob):TGtkPrintPages;cdecl;external;
procedure gtk_print_job_set_pages(job:PGtkPrintJob; pages:TGtkPrintPages);cdecl;external;
function gtk_print_job_get_page_ranges(job:PGtkPrintJob; n_ranges:Plongint):PGtkPageRange;cdecl;external;
procedure gtk_print_job_set_page_ranges(job:PGtkPrintJob; ranges:PGtkPageRange; n_ranges:longint);cdecl;external;
function gtk_print_job_get_page_set(job:PGtkPrintJob):TGtkPageSet;cdecl;external;
procedure gtk_print_job_set_page_set(job:PGtkPrintJob; page_set:TGtkPageSet);cdecl;external;
function gtk_print_job_get_num_copies(job:PGtkPrintJob):longint;cdecl;external;
procedure gtk_print_job_set_num_copies(job:PGtkPrintJob; num_copies:longint);cdecl;external;
function gtk_print_job_get_scale(job:PGtkPrintJob):Tdouble;cdecl;external;
procedure gtk_print_job_set_scale(job:PGtkPrintJob; scale:Tdouble);cdecl;external;
function gtk_print_job_get_n_up(job:PGtkPrintJob):Tguint;cdecl;external;
procedure gtk_print_job_set_n_up(job:PGtkPrintJob; n_up:Tguint);cdecl;external;
function gtk_print_job_get_n_up_layout(job:PGtkPrintJob):TGtkNumberUpLayout;cdecl;external;
procedure gtk_print_job_set_n_up_layout(job:PGtkPrintJob; layout:TGtkNumberUpLayout);cdecl;external;
function gtk_print_job_get_rotate(job:PGtkPrintJob):Tgboolean;cdecl;external;
procedure gtk_print_job_set_rotate(job:PGtkPrintJob; rotate:Tgboolean);cdecl;external;
function gtk_print_job_get_collate(job:PGtkPrintJob):Tgboolean;cdecl;external;
procedure gtk_print_job_set_collate(job:PGtkPrintJob; collate:Tgboolean);cdecl;external;
function gtk_print_job_get_reverse(job:PGtkPrintJob):Tgboolean;cdecl;external;
procedure gtk_print_job_set_reverse(job:PGtkPrintJob; reverse:Tgboolean);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_PRINT_JOB : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_JOB:=gtk_print_job_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_PRINT_JOB(obj : longint) : longint;
begin
  GTK_PRINT_JOB:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_JOB,GtkPrintJob);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_PRINT_JOB(obj : longint) : longint;
begin
  GTK_IS_PRINT_JOB:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_JOB);
end;


end.
