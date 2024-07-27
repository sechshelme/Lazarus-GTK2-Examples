unit gtkalertdialog;

interface

uses
  glib2, common_GTK, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  {G_DECLARE_FINAL_TYPE (GtkAlertDialog, gtk_alert_dialog, GTK, ALERT_DIALOG, GObject) }
  TGtkAlertDialog = record
  end;
  PGtkAlertDialog = ^TGtkAlertDialog;

  TGtkAlertDialogClass = record
    parent_class: TGObjectClass;
  end;
  PGtkAlertDialogClass = ^TGtkAlertDialogClass;


function gtk_alert_dialog_new(format: PChar; args: array of const): PGtkAlertDialog; cdecl; external gtklib;
function gtk_alert_dialog_new(format: PChar): PGtkAlertDialog; cdecl; external gtklib;
function gtk_alert_dialog_get_modal(self: PGtkAlertDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_alert_dialog_set_modal(self: PGtkAlertDialog; modal: Tgboolean); cdecl; external gtklib;
function gtk_alert_dialog_get_message(self: PGtkAlertDialog): PChar; cdecl; external gtklib;
procedure gtk_alert_dialog_set_message(self: PGtkAlertDialog; message: PChar); cdecl; external gtklib;
function gtk_alert_dialog_get_detail(self: PGtkAlertDialog): PChar; cdecl; external gtklib;
procedure gtk_alert_dialog_set_detail(self: PGtkAlertDialog; detail: PChar); cdecl; external gtklib;
function gtk_alert_dialog_get_buttons(self: PGtkAlertDialog): PPChar; cdecl; external gtklib;
procedure gtk_alert_dialog_set_buttons(self: PGtkAlertDialog; labels: PPchar); cdecl; external gtklib;
function gtk_alert_dialog_get_cancel_button(self: PGtkAlertDialog): longint; cdecl; external gtklib;
procedure gtk_alert_dialog_set_cancel_button(self: PGtkAlertDialog; button: longint); cdecl; external gtklib;
function gtk_alert_dialog_get_default_button(self: PGtkAlertDialog): longint; cdecl; external gtklib;
procedure gtk_alert_dialog_set_default_button(self: PGtkAlertDialog; button: longint); cdecl; external gtklib;
procedure gtk_alert_dialog_choose(self: PGtkAlertDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_alert_dialog_choose_finish(self: PGtkAlertDialog; Result: PGAsyncResult; error: PPGError): longint; cdecl; external gtklib;
procedure gtk_alert_dialog_show(self: PGtkAlertDialog; parent: PGtkWindow); cdecl; external gtklib;

// === Konventiert am: 14-7-24 16:12:11 ===

function gtk_alert_dialog_get_type: TGType; cdecl; external gtklib;

function GTK_TYPE_ALERT_DIALOG: TGType;
function GTK_ALERT_DIALOG(obj: Pointer): PGtkAlertDialog;
function GTK_IS_ALERT_DIALOG(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_ALERT_DIALOG: TGType;
begin
  Result := gtk_alert_dialog_get_type;
end;

function GTK_ALERT_DIALOG(obj: Pointer): PGtkAlertDialog;
begin
  Result := PGtkAlertDialog(g_type_check_instance_cast(obj, GTK_TYPE_ALERT_DIALOG));
end;

function GTK_IS_ALERT_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ALERT_DIALOG);
end;



end.
