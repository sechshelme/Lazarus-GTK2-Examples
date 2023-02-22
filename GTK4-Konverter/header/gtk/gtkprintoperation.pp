
  Type
  Pchar  = ^char;
  PGError  = ^GError;
  PGtkPageSetup  = ^GtkPageSetup;
  PGtkPrintContext  = ^GtkPrintContext;
  PGtkPrintOperation  = ^GtkPrintOperation;
  PGtkPrintOperationPreview  = ^GtkPrintOperationPreview;
  PGtkPrintSettings  = ^GtkPrintSettings;
  PGtkWidget  = ^GtkWidget;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkprintoperation.h: Print Operation
   * Copyright (C) 2006, Red Hat, Inc.
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
{$ifndef __GTK_PRINT_OPERATION_H__}
{$define __GTK_PRINT_OPERATION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtkmain.h>}
{$include <gtk/gtkwindow.h>}
{$include <gtk/gtkpagesetup.h>}
{$include <gtk/gtkprintsettings.h>}
{$include <gtk/gtkprintcontext.h>}
{$include <gtk/gtkprintoperationpreview.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_PRINT_OPERATION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_OPERATION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_OPERATION_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_GET_CLASS(obj : longint) : longint;  


  type
    _GtkPrintOperationClass = GtkPrintOperationClass;
    _GtkPrintOperationPrivate = GtkPrintOperationPrivate;
    _GtkPrintOperation = GtkPrintOperation;
  {*
   * GtkPrintStatus:
   * @GTK_PRINT_STATUS_INITIAL: The printing has not started yet; this
   *   status is set initially, and while the print dialog is shown.
   * @GTK_PRINT_STATUS_PREPARING: This status is set while the begin-print
   *   signal is emitted and during pagination.
   * @GTK_PRINT_STATUS_GENERATING_DATA: This status is set while the
   *   pages are being rendered.
   * @GTK_PRINT_STATUS_SENDING_DATA: The print job is being sent off to the
   *   printer.
   * @GTK_PRINT_STATUS_PENDING: The print job has been sent to the printer,
   *   but is not printed for some reason, e.g. the printer may be stopped.
   * @GTK_PRINT_STATUS_PENDING_ISSUE: Some problem has occurred during
   *   printing, e.g. a paper jam.
   * @GTK_PRINT_STATUS_PRINTING: The printer is processing the print job.
   * @GTK_PRINT_STATUS_FINISHED: The printing has been completed successfully.
   * @GTK_PRINT_STATUS_FINISHED_ABORTED: The printing has been aborted.
   *
   * The status gives a rough indication of the completion of a running
   * print operation.
    }

    GtkPrintStatus = (GTK_PRINT_STATUS_INITIAL,GTK_PRINT_STATUS_PREPARING,
      GTK_PRINT_STATUS_GENERATING_DATA,GTK_PRINT_STATUS_SENDING_DATA,
      GTK_PRINT_STATUS_PENDING,GTK_PRINT_STATUS_PENDING_ISSUE,
      GTK_PRINT_STATUS_PRINTING,GTK_PRINT_STATUS_FINISHED,
      GTK_PRINT_STATUS_FINISHED_ABORTED);
  {*
   * GtkPrintOperationResult:
   * @GTK_PRINT_OPERATION_RESULT_ERROR: An error has occurred.
   * @GTK_PRINT_OPERATION_RESULT_APPLY: The print settings should be stored.
   * @GTK_PRINT_OPERATION_RESULT_CANCEL: The print operation has been canceled,
   *   the print settings should not be stored.
   * @GTK_PRINT_OPERATION_RESULT_IN_PROGRESS: The print operation is not complete
   *   yet. This value will only be returned when running asynchronously.
   *
   * The result of a print operation.
   *
   * A value of this type is returned by [method@Gtk.PrintOperation.run].
    }

    GtkPrintOperationResult = (GTK_PRINT_OPERATION_RESULT_ERROR,GTK_PRINT_OPERATION_RESULT_APPLY,
      GTK_PRINT_OPERATION_RESULT_CANCEL,GTK_PRINT_OPERATION_RESULT_IN_PROGRESS
      );
  {*
   * GtkPrintOperationAction:
   * @GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG: Show the print dialog.
   * @GTK_PRINT_OPERATION_ACTION_PRINT: Start to print without showing
   *   the print dialog, based on the current print settings.
   * @GTK_PRINT_OPERATION_ACTION_PREVIEW: Show the print preview.
   * @GTK_PRINT_OPERATION_ACTION_EXPORT: Export to a file. This requires
   *   the export-filename property to be set.
   *
   * Determines what action the print operation should perform.
   *
   * A parameter of this typs is passed to [method@Gtk.PrintOperation.run].
    }

    GtkPrintOperationAction = (GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
      GTK_PRINT_OPERATION_ACTION_PRINT,GTK_PRINT_OPERATION_ACTION_PREVIEW,
      GTK_PRINT_OPERATION_ACTION_EXPORT);
  {< private > }
    _GtkPrintOperation = record
        parent_instance : GObject;
        priv : ^GtkPrintOperationPrivate;
      end;

  {*
   * GtkPrintOperationClass:
   * @parent_class: The parent class.
   * @done: Signal emitted when the print operation run has finished
   *    doing everything required for printing.
   * @begin_print: Signal emitted after the user has finished changing
   *    print settings in the dialog, before the actual rendering starts.
   * @paginate: Signal emitted after the “begin-print” signal, but
   *    before the actual rendering starts.
   * @request_page_setup: Emitted once for every page that is printed,
   *    to give the application a chance to modify the page setup.
   * @draw_page: Signal emitted for every page that is printed.
   * @end_print: Signal emitted after all pages have been rendered.
   * @status_changed: Emitted at between the various phases of the print
   *    operation.
   * @create_custom_widget: Signal emitted when displaying the print dialog.
   * @custom_widget_apply: Signal emitted right before “begin-print” if
   *    you added a custom widget in the “create-custom-widget” handler.
   * @preview: Signal emitted when a preview is requested from the
   *    native dialog.
   * @update_custom_widget: Emitted after change of selected printer.
    }
  {< public > }
  {< private > }
    _GtkPrintOperationClass = record
        parent_class : GObjectClass;
        done : procedure (operation:PGtkPrintOperation; result:GtkPrintOperationResult);cdecl;
        begin_print : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext);cdecl;
        paginate : function (operation:PGtkPrintOperation; context:PGtkPrintContext):gboolean;cdecl;
        request_page_setup : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext; page_nr:longint; setup:PGtkPageSetup);cdecl;
        draw_page : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext; page_nr:longint);cdecl;
        end_print : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext);cdecl;
        status_changed : procedure (operation:PGtkPrintOperation);cdecl;
        create_custom_widget : function (operation:PGtkPrintOperation):PGtkWidget;cdecl;
        custom_widget_apply : procedure (operation:PGtkPrintOperation; widget:PGtkWidget);cdecl;
        preview : function (operation:PGtkPrintOperation; preview:PGtkPrintOperationPreview; context:PGtkPrintContext; parent:PGtkWindow):gboolean;cdecl;
        update_custom_widget : procedure (operation:PGtkPrintOperation; widget:PGtkWidget; setup:PGtkPageSetup; settings:PGtkPrintSettings);cdecl;
        padding : array[0..7] of gpointer;
      end;

  {*
   * GTK_PRINT_ERROR:
   *
   * The error domain for `GtkPrintError` errors.
    }

  { was #define dname def_expr }
  function GTK_PRINT_ERROR : longint; { return type might be wrong }

  {*
   * GtkPrintError:
   * @GTK_PRINT_ERROR_GENERAL: An unspecified error occurred.
   * @GTK_PRINT_ERROR_INTERNAL_ERROR: An internal error occurred.
   * @GTK_PRINT_ERROR_NOMEM: A memory allocation failed.
   * @GTK_PRINT_ERROR_INVALID_FILE: An error occurred while loading a page setup
   *   or paper size from a key file.
   *
   * Error codes that identify various errors that can occur while
   * using the GTK printing support.
    }

  type
    GtkPrintError = (GTK_PRINT_ERROR_GENERAL,GTK_PRINT_ERROR_INTERNAL_ERROR,
      GTK_PRINT_ERROR_NOMEM,GTK_PRINT_ERROR_INVALID_FILE
      );
  { Zeile entfernt  }

  function gtk_print_error_quark:GQuark;

  { Zeile entfernt  }
  function gtk_print_operation_get_type:GType;

  { Zeile entfernt  }
  function gtk_print_operation_new:^GtkPrintOperation;

  { Zeile entfernt  }
  procedure gtk_print_operation_set_default_page_setup(op:PGtkPrintOperation; default_page_setup:PGtkPageSetup);

  { Zeile entfernt  }
  function gtk_print_operation_get_default_page_setup(op:PGtkPrintOperation):^GtkPageSetup;

  { Zeile entfernt  }
  procedure gtk_print_operation_set_print_settings(op:PGtkPrintOperation; print_settings:PGtkPrintSettings);

  { Zeile entfernt  }
  function gtk_print_operation_get_print_settings(op:PGtkPrintOperation):^GtkPrintSettings;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_operation_set_job_name(op:PGtkPrintOperation; job_name:Pchar);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_n_pages(op:PGtkPrintOperation; n_pages:longint);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_current_page(op:PGtkPrintOperation; current_page:longint);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_use_full_page(op:PGtkPrintOperation; full_page:gboolean);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_unit(op:PGtkPrintOperation; unit:GtkUnit);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_operation_set_export_filename(op:PGtkPrintOperation; filename:Pchar);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_track_print_status(op:PGtkPrintOperation; track_status:gboolean);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_show_progress(op:PGtkPrintOperation; show_progress:gboolean);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_allow_async(op:PGtkPrintOperation; allow_async:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_operation_set_custom_tab_label(op:PGtkPrintOperation; _label:Pchar);

  { Zeile entfernt  }
  function gtk_print_operation_run(op:PGtkPrintOperation; action:GtkPrintOperationAction; parent:PGtkWindow; error:PPGError):GtkPrintOperationResult;

  { Zeile entfernt  }
  procedure gtk_print_operation_get_error(op:PGtkPrintOperation; error:PPGError);

  { Zeile entfernt  }
  function gtk_print_operation_get_status(op:PGtkPrintOperation):GtkPrintStatus;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_operation_get_status_string(op:PGtkPrintOperation):^char;

  { Zeile entfernt  }
  function gtk_print_operation_is_finished(op:PGtkPrintOperation):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_operation_cancel(op:PGtkPrintOperation);

  { Zeile entfernt  }
  procedure gtk_print_operation_draw_page_finish(op:PGtkPrintOperation);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_defer_drawing(op:PGtkPrintOperation);

  { Zeile entfernt  }
  procedure gtk_print_operation_set_support_selection(op:PGtkPrintOperation; support_selection:gboolean);

  { Zeile entfernt  }
  function gtk_print_operation_get_support_selection(op:PGtkPrintOperation):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_operation_set_has_selection(op:PGtkPrintOperation; has_selection:gboolean);

  { Zeile entfernt  }
  function gtk_print_operation_get_has_selection(op:PGtkPrintOperation):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_operation_set_embed_page_setup(op:PGtkPrintOperation; embed:gboolean);

  { Zeile entfernt  }
  function gtk_print_operation_get_embed_page_setup(op:PGtkPrintOperation):gboolean;

  { Zeile entfernt  }
  function gtk_print_operation_get_n_pages_to_print(op:PGtkPrintOperation):longint;

  { Zeile entfernt  }
  function gtk_print_run_page_setup_dialog(parent:PGtkWindow; page_setup:PGtkPageSetup; settings:PGtkPrintSettings):^GtkPageSetup;

  {*
   * GtkPageSetupDoneFunc:
   * @page_setup: the `GtkPageSetup` that has been passed to
   *   gtk_print_run_page_setup_dialog_async()
   * @data: (closure): user data that has been passed to
   *   gtk_print_run_page_setup_dialog_async()
   *
   * The type of function that is passed to
   * gtk_print_run_page_setup_dialog_async().
   *
   * This function will be called when the page setup dialog
   * is dismissed, and also serves as destroy notify for @data.
    }

  type

    GtkPageSetupDoneFunc = procedure (page_setup:PGtkPageSetup; data:gpointer);cdecl;
  { Zeile entfernt  }

  procedure gtk_print_run_page_setup_dialog_async(parent:PGtkWindow; page_setup:PGtkPageSetup; settings:PGtkPrintSettings; done_cb:GtkPageSetupDoneFunc; data:gpointer);

  { Zeile entfernt  }
{$endif}
  { __GTK_PRINT_OPERATION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PRINT_OPERATION : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINT_OPERATION:=gtk_print_operation_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION(obj : longint) : longint;
  begin
    GTK_PRINT_OPERATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_OPERATION,GtkPrintOperation);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_CLASS(klass : longint) : longint;
  begin
    GTK_PRINT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_PRINT_OPERATION,GtkPrintOperationClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_OPERATION(obj : longint) : longint;
  begin
    GTK_IS_PRINT_OPERATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_OPERATION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_OPERATION_CLASS(klass : longint) : longint;
  begin
    GTK_IS_PRINT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_PRINT_OPERATION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_GET_CLASS(obj : longint) : longint;
  begin
    GTK_PRINT_OPERATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_PRINT_OPERATION,GtkPrintOperationClass);
  end;

  { was #define dname def_expr }
  function GTK_PRINT_ERROR : longint; { return type might be wrong }
    begin
      GTK_PRINT_ERROR:=gtk_print_error_quark;
    end;

  function gtk_print_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_new:PGtkPrintOperation;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_default_page_setup(op:PGtkPrintOperation; default_page_setup:PGtkPageSetup);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_default_page_setup(op:PGtkPrintOperation):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_print_settings(op:PGtkPrintOperation; print_settings:PGtkPrintSettings);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_print_settings(op:PGtkPrintOperation):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_job_name(op:PGtkPrintOperation; job_name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_n_pages(op:PGtkPrintOperation; n_pages:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_current_page(op:PGtkPrintOperation; current_page:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_use_full_page(op:PGtkPrintOperation; full_page:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_unit(op:PGtkPrintOperation; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_export_filename(op:PGtkPrintOperation; filename:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_track_print_status(op:PGtkPrintOperation; track_status:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_show_progress(op:PGtkPrintOperation; show_progress:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_allow_async(op:PGtkPrintOperation; allow_async:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_custom_tab_label(op:PGtkPrintOperation; _label:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_run(op:PGtkPrintOperation; action:GtkPrintOperationAction; parent:PGtkWindow; error:PPGError):GtkPrintOperationResult;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_get_error(op:PGtkPrintOperation; error:PPGError);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_status(op:PGtkPrintOperation):GtkPrintStatus;
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_status_string(op:PGtkPrintOperation):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_is_finished(op:PGtkPrintOperation):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_cancel(op:PGtkPrintOperation);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_draw_page_finish(op:PGtkPrintOperation);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_defer_drawing(op:PGtkPrintOperation);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_support_selection(op:PGtkPrintOperation; support_selection:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_support_selection(op:PGtkPrintOperation):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_has_selection(op:PGtkPrintOperation; has_selection:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_has_selection(op:PGtkPrintOperation):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_set_embed_page_setup(op:PGtkPrintOperation; embed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_embed_page_setup(op:PGtkPrintOperation):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_get_n_pages_to_print(op:PGtkPrintOperation):longint;
  begin
    { You must implement this function }
  end;
  function gtk_print_run_page_setup_dialog(parent:PGtkWindow; page_setup:PGtkPageSetup; settings:PGtkPrintSettings):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_run_page_setup_dialog_async(parent:PGtkWindow; page_setup:PGtkPageSetup; settings:PGtkPrintSettings; done_cb:GtkPageSetupDoneFunc; data:gpointer);
  begin
    { You must implement this function }
  end;

