
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
{$ifndef __GTK_PRINT_JOB_H__}
{$define __GTK_PRINT_JOB_H__}  
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtk.h>}
{$include <gtk/gtkprinter.h>}
  { Zeile entfernt  }

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
    _GtkPrintJob = GtkPrintJob;
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

    GtkPrintJobCompleteFunc = procedure (print_job:PGtkPrintJob; user_data:gpointer; error:PGError);cdecl;
  { Zeile entfernt  }

  function gtk_print_job_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_job_new(title:Pchar; printer:PGtkPrinter; settings:PGtkPrintSettings; page_setup:PGtkPageSetup):^GtkPrintJob;

  { Zeile entfernt  }
  function gtk_print_job_get_settings(job:PGtkPrintJob):^GtkPrintSettings;

  { Zeile entfernt  }
  function gtk_print_job_get_printer(job:PGtkPrintJob):^GtkPrinter;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_job_get_title(job:PGtkPrintJob):^char;

  { Zeile entfernt  }
  function gtk_print_job_get_status(job:PGtkPrintJob):GtkPrintStatus;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_job_set_source_file(job:PGtkPrintJob; filename:Pchar; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gtk_print_job_set_source_fd(job:PGtkPrintJob; fd:longint; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gtk_print_job_get_surface(job:PGtkPrintJob; error:PPGError):^cairo_surface_t;

  { Zeile entfernt  }
  procedure gtk_print_job_set_track_print_status(job:PGtkPrintJob; track_status:gboolean);

  { Zeile entfernt  }
  function gtk_print_job_get_track_print_status(job:PGtkPrintJob):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_job_send(job:PGtkPrintJob; callback:GtkPrintJobCompleteFunc; user_data:gpointer; dnotify:GDestroyNotify);

  { Zeile entfernt  }
  function gtk_print_job_get_pages(job:PGtkPrintJob):GtkPrintPages;

  { Zeile entfernt  }
  procedure gtk_print_job_set_pages(job:PGtkPrintJob; pages:GtkPrintPages);

  { Zeile entfernt  }
  function gtk_print_job_get_page_ranges(job:PGtkPrintJob; n_ranges:Plongint):^GtkPageRange;

  { Zeile entfernt  }
  procedure gtk_print_job_set_page_ranges(job:PGtkPrintJob; ranges:PGtkPageRange; n_ranges:longint);

  { Zeile entfernt  }
  function gtk_print_job_get_page_set(job:PGtkPrintJob):GtkPageSet;

  { Zeile entfernt  }
  procedure gtk_print_job_set_page_set(job:PGtkPrintJob; page_set:GtkPageSet);

  { Zeile entfernt  }
  function gtk_print_job_get_num_copies(job:PGtkPrintJob):longint;

  { Zeile entfernt  }
  procedure gtk_print_job_set_num_copies(job:PGtkPrintJob; num_copies:longint);

  { Zeile entfernt  }
  function gtk_print_job_get_scale(job:PGtkPrintJob):double;

  { Zeile entfernt  }
  procedure gtk_print_job_set_scale(job:PGtkPrintJob; scale:double);

  { Zeile entfernt  }
  function gtk_print_job_get_n_up(job:PGtkPrintJob):guint;

  { Zeile entfernt  }
  procedure gtk_print_job_set_n_up(job:PGtkPrintJob; n_up:guint);

  { Zeile entfernt  }
  function gtk_print_job_get_n_up_layout(job:PGtkPrintJob):GtkNumberUpLayout;

  { Zeile entfernt  }
  procedure gtk_print_job_set_n_up_layout(job:PGtkPrintJob; layout:GtkNumberUpLayout);

  { Zeile entfernt  }
  function gtk_print_job_get_rotate(job:PGtkPrintJob):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_job_set_rotate(job:PGtkPrintJob; rotate:gboolean);

  { Zeile entfernt  }
  function gtk_print_job_get_collate(job:PGtkPrintJob):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_job_set_collate(job:PGtkPrintJob; collate:gboolean);

  { Zeile entfernt  }
  function gtk_print_job_get_reverse(job:PGtkPrintJob):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_job_set_reverse(job:PGtkPrintJob; reverse:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_PRINT_JOB_H__  }
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

  function gtk_print_job_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_new(title:Pchar; printer:PGtkPrinter; settings:PGtkPrintSettings; page_setup:PGtkPageSetup):PGtkPrintJob;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_settings(job:PGtkPrintJob):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_printer(job:PGtkPrintJob):PGtkPrinter;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_title(job:PGtkPrintJob):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_status(job:PGtkPrintJob):GtkPrintStatus;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_set_source_file(job:PGtkPrintJob; filename:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_set_source_fd(job:PGtkPrintJob; fd:longint; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_surface(job:PGtkPrintJob; error:PPGError):Pcairo_surface_t;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_track_print_status(job:PGtkPrintJob; track_status:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_track_print_status(job:PGtkPrintJob):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_send(job:PGtkPrintJob; callback:GtkPrintJobCompleteFunc; user_data:gpointer; dnotify:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_pages(job:PGtkPrintJob):GtkPrintPages;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_pages(job:PGtkPrintJob; pages:GtkPrintPages);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_page_ranges(job:PGtkPrintJob; n_ranges:Plongint):PGtkPageRange;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_page_ranges(job:PGtkPrintJob; ranges:PGtkPageRange; n_ranges:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_page_set(job:PGtkPrintJob):GtkPageSet;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_page_set(job:PGtkPrintJob; page_set:GtkPageSet);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_num_copies(job:PGtkPrintJob):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_num_copies(job:PGtkPrintJob; num_copies:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_scale(job:PGtkPrintJob):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_scale(job:PGtkPrintJob; scale:double);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_n_up(job:PGtkPrintJob):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_n_up(job:PGtkPrintJob; n_up:guint);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_n_up_layout(job:PGtkPrintJob):GtkNumberUpLayout;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_n_up_layout(job:PGtkPrintJob; layout:GtkNumberUpLayout);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_rotate(job:PGtkPrintJob):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_rotate(job:PGtkPrintJob; rotate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_collate(job:PGtkPrintJob):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_collate(job:PGtkPrintJob; collate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_job_get_reverse(job:PGtkPrintJob):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_job_set_reverse(job:PGtkPrintJob; reverse:gboolean);
  begin
    { You must implement this function }
  end;

