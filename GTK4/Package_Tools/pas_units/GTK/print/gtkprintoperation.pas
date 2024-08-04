unit gtkprintoperation;

interface

uses
  glib2, common_GTK, gtkenums, gtkwidget, gtktypes, gtkwindow, gtkprintcontext, gtkpagesetup, gtkprintoperationpreview, gtkprintsettings;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkPrintStatus = ^TGtkPrintStatus;
  TGtkPrintStatus = longint;

const
  GTK_PRINT_STATUS_INITIAL = 0;
  GTK_PRINT_STATUS_PREPARING = 1;
  GTK_PRINT_STATUS_GENERATING_DATA = 2;
  GTK_PRINT_STATUS_SENDING_DATA = 3;
  GTK_PRINT_STATUS_PENDING = 4;
  GTK_PRINT_STATUS_PENDING_ISSUE = 5;
  GTK_PRINT_STATUS_PRINTING = 6;
  GTK_PRINT_STATUS_FINISHED = 7;
  GTK_PRINT_STATUS_FINISHED_ABORTED = 8;

type
  PGtkPrintOperationResult = ^TGtkPrintOperationResult;
  TGtkPrintOperationResult = longint;

const
  GTK_PRINT_OPERATION_RESULT_ERROR = 0;
  GTK_PRINT_OPERATION_RESULT_APPLY = 1;
  GTK_PRINT_OPERATION_RESULT_CANCEL = 2;
  GTK_PRINT_OPERATION_RESULT_IN_PROGRESS = 3;

type
  PGtkPrintOperationAction = ^TGtkPrintOperationAction;
  TGtkPrintOperationAction = longint;

const
  GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG = 0;
  GTK_PRINT_OPERATION_ACTION_PRINT = 1;
  GTK_PRINT_OPERATION_ACTION_PREVIEW = 2;
  GTK_PRINT_OPERATION_ACTION_EXPORT = 3;

type
  TGtkPrintOperationPrivate = record // _GtkPrintOperationPrivate
  end;
  PGtkPrintOperationPrivate = ^TGtkPrintOperationPrivate;

  TGtkPrintOperation = record
    parent_instance: TGObject;
    priv: PGtkPrintOperationPrivate;
  end;
  PGtkPrintOperation = ^TGtkPrintOperation;

  TGtkPrintOperationClass = record
    parent_class: TGObjectClass;
    done: procedure(operation: PGtkPrintOperation; Result: TGtkPrintOperationResult); cdecl;
    begin_print: procedure(operation: PGtkPrintOperation; context: PGtkPrintContext); cdecl;
    paginate: function(operation: PGtkPrintOperation; context: PGtkPrintContext): Tgboolean; cdecl;
    request_page_setup: procedure(operation: PGtkPrintOperation; context: PGtkPrintContext; page_nr: longint; setup: PGtkPageSetup); cdecl;
    draw_page: procedure(operation: PGtkPrintOperation; context: PGtkPrintContext; page_nr: longint); cdecl;
    end_print: procedure(operation: PGtkPrintOperation; context: PGtkPrintContext); cdecl;
    status_changed: procedure(operation: PGtkPrintOperation); cdecl;
    create_custom_widget: function(operation: PGtkPrintOperation): PGtkWidget; cdecl;
    custom_widget_apply: procedure(operation: PGtkPrintOperation; widget: PGtkWidget); cdecl;
    preview: function(operation: PGtkPrintOperation; preview: PGtkPrintOperationPreview; context: PGtkPrintContext; parent: PGtkWindow): Tgboolean; cdecl;
    update_custom_widget: procedure(operation: PGtkPrintOperation; widget: PGtkWidget; setup: PGtkPageSetup; settings: PGtkPrintSettings); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkPrintOperationClass = ^TGtkPrintOperationClass;


type
  PGtkPrintError = ^TGtkPrintError;
  TGtkPrintError = longint;

const
  GTK_PRINT_ERROR_GENERAL = 0;
  GTK_PRINT_ERROR_INTERNAL_ERROR = 1;
  GTK_PRINT_ERROR_NOMEM = 2;
  GTK_PRINT_ERROR_INVALID_FILE = 3;

function gtk_print_error_quark: TGQuark; cdecl; external gtklib;
function gtk_print_operation_get_type: TGType; cdecl; external gtklib;
function gtk_print_operation_new: PGtkPrintOperation; cdecl; external gtklib;
procedure gtk_print_operation_set_default_page_setup(op: PGtkPrintOperation; default_page_setup: PGtkPageSetup); cdecl; external gtklib;
function gtk_print_operation_get_default_page_setup(op: PGtkPrintOperation): PGtkPageSetup; cdecl; external gtklib;
procedure gtk_print_operation_set_print_settings(op: PGtkPrintOperation; print_settings: PGtkPrintSettings); cdecl; external gtklib;
function gtk_print_operation_get_print_settings(op: PGtkPrintOperation): PGtkPrintSettings; cdecl; external gtklib;
procedure gtk_print_operation_set_job_name(op: PGtkPrintOperation; job_name: PChar); cdecl; external gtklib;
procedure gtk_print_operation_set_n_pages(op: PGtkPrintOperation; n_pages: longint); cdecl; external gtklib;
procedure gtk_print_operation_set_current_page(op: PGtkPrintOperation; current_page: longint); cdecl; external gtklib;
procedure gtk_print_operation_set_use_full_page(op: PGtkPrintOperation; full_page: Tgboolean); cdecl; external gtklib;
procedure gtk_print_operation_set_unit(op: PGtkPrintOperation; unit_: TGtkUnit); cdecl; external gtklib;
procedure gtk_print_operation_set_export_filename(op: PGtkPrintOperation; filename: PChar); cdecl; external gtklib;
procedure gtk_print_operation_set_track_print_status(op: PGtkPrintOperation; track_status: Tgboolean); cdecl; external gtklib;
procedure gtk_print_operation_set_show_progress(op: PGtkPrintOperation; show_progress: Tgboolean); cdecl; external gtklib;
procedure gtk_print_operation_set_allow_async(op: PGtkPrintOperation; allow_async: Tgboolean); cdecl; external gtklib;
procedure gtk_print_operation_set_custom_tab_label(op: PGtkPrintOperation; _label: PChar); cdecl; external gtklib;
function gtk_print_operation_run(op: PGtkPrintOperation; action: TGtkPrintOperationAction; parent: PGtkWindow; error: PPGError): TGtkPrintOperationResult; cdecl; external gtklib;
procedure gtk_print_operation_get_error(op: PGtkPrintOperation; error: PPGError); cdecl; external gtklib;
function gtk_print_operation_get_status(op: PGtkPrintOperation): TGtkPrintStatus; cdecl; external gtklib;
function gtk_print_operation_get_status_string(op: PGtkPrintOperation): PChar; cdecl; external gtklib;
function gtk_print_operation_is_finished(op: PGtkPrintOperation): Tgboolean; cdecl; external gtklib;
procedure gtk_print_operation_cancel(op: PGtkPrintOperation); cdecl; external gtklib;
procedure gtk_print_operation_draw_page_finish(op: PGtkPrintOperation); cdecl; external gtklib;
procedure gtk_print_operation_set_defer_drawing(op: PGtkPrintOperation); cdecl; external gtklib;
procedure gtk_print_operation_set_support_selection(op: PGtkPrintOperation; support_selection: Tgboolean); cdecl; external gtklib;
function gtk_print_operation_get_support_selection(op: PGtkPrintOperation): Tgboolean; cdecl; external gtklib;
procedure gtk_print_operation_set_has_selection(op: PGtkPrintOperation; has_selection: Tgboolean); cdecl; external gtklib;
function gtk_print_operation_get_has_selection(op: PGtkPrintOperation): Tgboolean; cdecl; external gtklib;
procedure gtk_print_operation_set_embed_page_setup(op: PGtkPrintOperation; embed: Tgboolean); cdecl; external gtklib;
function gtk_print_operation_get_embed_page_setup(op: PGtkPrintOperation): Tgboolean; cdecl; external gtklib;
function gtk_print_operation_get_n_pages_to_print(op: PGtkPrintOperation): longint; cdecl; external gtklib;
function gtk_print_run_page_setup_dialog(parent: PGtkWindow; page_setup: PGtkPageSetup; settings: PGtkPrintSettings): PGtkPageSetup; cdecl; external gtklib;

type
  TGtkPageSetupDoneFunc = procedure(page_setup: PGtkPageSetup; Data: Tgpointer); cdecl;

procedure gtk_print_run_page_setup_dialog_async(parent: PGtkWindow; page_setup: PGtkPageSetup; settings: PGtkPrintSettings; done_cb: TGtkPageSetupDoneFunc; Data: Tgpointer); cdecl; external gtklib;

// === Konventiert am: 24-7-24 16:37:58 ===

function GTK_TYPE_PRINT_OPERATION: TGType;
function GTK_PRINT_OPERATION(obj: Pointer): PGtkPrintOperation;
function GTK_PRINT_OPERATION_CLASS(klass: Pointer): PGtkPrintOperationClass;
function GTK_IS_PRINT_OPERATION(obj: Pointer): Tgboolean;
function GTK_IS_PRINT_OPERATION_CLASS(klass: Pointer): Tgboolean;
function GTK_PRINT_OPERATION_GET_CLASS(obj: Pointer): PGtkPrintOperationClass;

function GTK_PRINT_ERROR: TGQuark;

implementation

function GTK_TYPE_PRINT_OPERATION: TGType;
begin
  GTK_TYPE_PRINT_OPERATION := gtk_print_operation_get_type;
end;

function GTK_PRINT_OPERATION(obj: Pointer): PGtkPrintOperation;
begin
  Result := PGtkPrintOperation(g_type_check_instance_cast(obj, GTK_TYPE_PRINT_OPERATION));
end;

function GTK_PRINT_OPERATION_CLASS(klass: Pointer): PGtkPrintOperationClass;
begin
  Result := PGtkPrintOperationClass(g_type_check_class_cast(klass, GTK_TYPE_PRINT_OPERATION));
end;

function GTK_IS_PRINT_OPERATION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PRINT_OPERATION);
end;

function GTK_IS_PRINT_OPERATION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_PRINT_OPERATION);
end;

function GTK_PRINT_OPERATION_GET_CLASS(obj: Pointer): PGtkPrintOperationClass;
begin
  Result := PGtkPrintOperationClass(PGTypeInstance(obj)^.g_class);
end;

// ====

function GTK_PRINT_ERROR: TGQuark;
begin
  GTK_PRINT_ERROR := gtk_print_error_quark;
end;


end.
