
unit gtkprintoperation;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintoperation.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintoperation.h
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
Pchar  = ^char;
PGError  = ^GError;
PGtkPageSetup  = ^GtkPageSetup;
PGtkPrintContext  = ^GtkPrintContext;
PGtkPrintError  = ^GtkPrintError;
PGtkPrintOperation  = ^GtkPrintOperation;
PGtkPrintOperationAction  = ^GtkPrintOperationAction;
PGtkPrintOperationClass  = ^GtkPrintOperationClass;
PGtkPrintOperationPreview  = ^GtkPrintOperationPreview;
PGtkPrintOperationPrivate  = ^GtkPrintOperationPrivate;
PGtkPrintOperationResult  = ^GtkPrintOperationResult;
PGtkPrintSettings  = ^GtkPrintSettings;
PGtkPrintStatus  = ^GtkPrintStatus;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



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


function GTK_TYPE_PRINT_OPERATION : longint; { return type might be wrong }

function GTK_PRINT_OPERATION(obj : longint) : longint;

function GTK_PRINT_OPERATION_CLASS(klass : longint) : longint;

function GTK_IS_PRINT_OPERATION(obj : longint) : longint;

function GTK_IS_PRINT_OPERATION_CLASS(klass : longint) : longint;

function GTK_PRINT_OPERATION_GET_CLASS(obj : longint) : longint;

type


  PGtkPrintStatus = ^TGtkPrintStatus;
  TGtkPrintStatus = (GTK_PRINT_STATUS_INITIAL,GTK_PRINT_STATUS_PREPARING,
    GTK_PRINT_STATUS_GENERATING_DATA,GTK_PRINT_STATUS_SENDING_DATA,
    GTK_PRINT_STATUS_PENDING,GTK_PRINT_STATUS_PENDING_ISSUE,
    GTK_PRINT_STATUS_PRINTING,GTK_PRINT_STATUS_FINISHED,
    GTK_PRINT_STATUS_FINISHED_ABORTED);


  PGtkPrintOperationResult = ^TGtkPrintOperationResult;
  TGtkPrintOperationResult = (GTK_PRINT_OPERATION_RESULT_ERROR,GTK_PRINT_OPERATION_RESULT_APPLY,
    GTK_PRINT_OPERATION_RESULT_CANCEL,GTK_PRINT_OPERATION_RESULT_IN_PROGRESS
    );


  PGtkPrintOperationAction = ^TGtkPrintOperationAction;
  TGtkPrintOperationAction = (GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
    GTK_PRINT_OPERATION_ACTION_PRINT,GTK_PRINT_OPERATION_ACTION_PREVIEW,
    GTK_PRINT_OPERATION_ACTION_EXPORT);

  PGtkPrintOperation = ^TGtkPrintOperation;
  TGtkPrintOperation = record
      parent_instance : TGObject;
      priv : PGtkPrintOperationPrivate;
    end;




  PGtkPrintOperationClass = ^TGtkPrintOperationClass;
  TGtkPrintOperationClass = record
      parent_class : TGObjectClass;
      done : procedure (operation:PGtkPrintOperation; result:TGtkPrintOperationResult);cdecl;
      begin_print : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext);cdecl;
      paginate : function (operation:PGtkPrintOperation; context:PGtkPrintContext):Tgboolean;cdecl;
      request_page_setup : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext; page_nr:longint; setup:PGtkPageSetup);cdecl;
      draw_page : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext; page_nr:longint);cdecl;
      end_print : procedure (operation:PGtkPrintOperation; context:PGtkPrintContext);cdecl;
      status_changed : procedure (operation:PGtkPrintOperation);cdecl;
      create_custom_widget : function (operation:PGtkPrintOperation):PGtkWidget;cdecl;
      custom_widget_apply : procedure (operation:PGtkPrintOperation; widget:PGtkWidget);cdecl;
      preview : function (operation:PGtkPrintOperation; preview:PGtkPrintOperationPreview; context:PGtkPrintContext; parent:PGtkWindow):Tgboolean;cdecl;
      update_custom_widget : procedure (operation:PGtkPrintOperation; widget:PGtkWidget; setup:PGtkPageSetup; settings:PGtkPrintSettings);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function GTK_PRINT_ERROR : longint; { return type might be wrong }


type
  PGtkPrintError = ^TGtkPrintError;
  TGtkPrintError = (GTK_PRINT_ERROR_GENERAL,GTK_PRINT_ERROR_INTERNAL_ERROR,
    GTK_PRINT_ERROR_NOMEM,GTK_PRINT_ERROR_INVALID_FILE
    );


function gtk_print_error_quark:TGQuark;cdecl;external;

function gtk_print_operation_get_type:TGType;cdecl;external;

function gtk_print_operation_new:PGtkPrintOperation;cdecl;external;

procedure gtk_print_operation_set_default_page_setup(op:PGtkPrintOperation; default_page_setup:PGtkPageSetup);cdecl;external;

function gtk_print_operation_get_default_page_setup(op:PGtkPrintOperation):PGtkPageSetup;cdecl;external;

procedure gtk_print_operation_set_print_settings(op:PGtkPrintOperation; print_settings:PGtkPrintSettings);cdecl;external;

function gtk_print_operation_get_print_settings(op:PGtkPrintOperation):PGtkPrintSettings;cdecl;external;

procedure gtk_print_operation_set_job_name(op:PGtkPrintOperation; job_name:Pchar);cdecl;external;

procedure gtk_print_operation_set_n_pages(op:PGtkPrintOperation; n_pages:longint);cdecl;external;

procedure gtk_print_operation_set_current_page(op:PGtkPrintOperation; current_page:longint);cdecl;external;

procedure gtk_print_operation_set_use_full_page(op:PGtkPrintOperation; full_page:Tgboolean);cdecl;external;

procedure gtk_print_operation_set_unit(op:PGtkPrintOperation; unit:TGtkUnit);cdecl;external;

procedure gtk_print_operation_set_export_filename(op:PGtkPrintOperation; filename:Pchar);cdecl;external;

procedure gtk_print_operation_set_track_print_status(op:PGtkPrintOperation; track_status:Tgboolean);cdecl;external;

procedure gtk_print_operation_set_show_progress(op:PGtkPrintOperation; show_progress:Tgboolean);cdecl;external;

procedure gtk_print_operation_set_allow_async(op:PGtkPrintOperation; allow_async:Tgboolean);cdecl;external;

procedure gtk_print_operation_set_custom_tab_label(op:PGtkPrintOperation; _label:Pchar);cdecl;external;

function gtk_print_operation_run(op:PGtkPrintOperation; action:TGtkPrintOperationAction; parent:PGtkWindow; error:PPGError):TGtkPrintOperationResult;cdecl;external;

procedure gtk_print_operation_get_error(op:PGtkPrintOperation; error:PPGError);cdecl;external;

function gtk_print_operation_get_status(op:PGtkPrintOperation):TGtkPrintStatus;cdecl;external;

function gtk_print_operation_get_status_string(op:PGtkPrintOperation):Pchar;cdecl;external;

function gtk_print_operation_is_finished(op:PGtkPrintOperation):Tgboolean;cdecl;external;

procedure gtk_print_operation_cancel(op:PGtkPrintOperation);cdecl;external;

procedure gtk_print_operation_draw_page_finish(op:PGtkPrintOperation);cdecl;external;

procedure gtk_print_operation_set_defer_drawing(op:PGtkPrintOperation);cdecl;external;

procedure gtk_print_operation_set_support_selection(op:PGtkPrintOperation; support_selection:Tgboolean);cdecl;external;

function gtk_print_operation_get_support_selection(op:PGtkPrintOperation):Tgboolean;cdecl;external;

procedure gtk_print_operation_set_has_selection(op:PGtkPrintOperation; has_selection:Tgboolean);cdecl;external;

function gtk_print_operation_get_has_selection(op:PGtkPrintOperation):Tgboolean;cdecl;external;

procedure gtk_print_operation_set_embed_page_setup(op:PGtkPrintOperation; embed:Tgboolean);cdecl;external;

function gtk_print_operation_get_embed_page_setup(op:PGtkPrintOperation):Tgboolean;cdecl;external;

function gtk_print_operation_get_n_pages_to_print(op:PGtkPrintOperation):longint;cdecl;external;

function gtk_print_run_page_setup_dialog(parent:PGtkWindow; page_setup:PGtkPageSetup; settings:PGtkPrintSettings):PGtkPageSetup;cdecl;external;

type

  TGtkPageSetupDoneFunc = procedure (page_setup:PGtkPageSetup; data:Tgpointer);cdecl;


procedure gtk_print_run_page_setup_dialog_async(parent:PGtkWindow; page_setup:PGtkPageSetup; settings:PGtkPrintSettings; done_cb:TGtkPageSetupDoneFunc; data:Tgpointer);cdecl;external;

{$endif}


implementation

function GTK_TYPE_PRINT_OPERATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_OPERATION:=gtk_print_operation_get_type;
  end;

function GTK_PRINT_OPERATION(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_OPERATION,GtkPrintOperation);
end;

function GTK_PRINT_OPERATION_CLASS(klass : longint) : longint;
begin
  GTK_PRINT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_PRINT_OPERATION,GtkPrintOperationClass);
end;

function GTK_IS_PRINT_OPERATION(obj : longint) : longint;
begin
  GTK_IS_PRINT_OPERATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_OPERATION);
end;

function GTK_IS_PRINT_OPERATION_CLASS(klass : longint) : longint;
begin
  GTK_IS_PRINT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_PRINT_OPERATION);
end;

function GTK_PRINT_OPERATION_GET_CLASS(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_PRINT_OPERATION,GtkPrintOperationClass);
end;

function GTK_PRINT_ERROR : longint; { return type might be wrong }
  begin
    GTK_PRINT_ERROR:=gtk_print_error_quark;
  end;


end.
