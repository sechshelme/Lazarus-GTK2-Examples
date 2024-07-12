unit gtkalertdialog;

interface

uses
  glib2, common_GTK, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}
type

  //// {G_DECLARE_FINAL_TYPE (GtkAlertDialog, gtk_alert_dialog, GTK, ALERT_DIALOG, GObject) }
  TGtkAlertDialog = Pointer;
  PGtkAlertDialog = ^TGtkAlertDialog;

function gtk_alert_dialog_new(format: PChar; args: array of const): PGtkAlertDialog; cdecl; external gtklib;
function gtk_alert_dialog_new(format: PChar): PGtkAlertDialog; cdecl; external gtklib;
function gtk_alert_dialog_get_modal(self: PGtkAlertDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_alert_dialog_set_modal(self: PGtkAlertDialog; modal: Tgboolean); cdecl; external gtklib;
function gtk_alert_dialog_get_message(self: PGtkAlertDialog): PChar; cdecl; external gtklib;
procedure gtk_alert_dialog_set_message(self: PGtkAlertDialog; message: PChar); cdecl; external gtklib;
function gtk_alert_dialog_get_detail(self: PGtkAlertDialog): PChar; cdecl; external gtklib;
procedure gtk_alert_dialog_set_detail(self: PGtkAlertDialog; detail: PChar); cdecl; external gtklib;
function gtk_alert_dialog_get_buttons(self: PGtkAlertDialog): PPchar; cdecl; external gtklib;
procedure gtk_alert_dialog_set_buttons(self: PGtkAlertDialog; labels: PPchar); cdecl; external gtklib;
function gtk_alert_dialog_get_cancel_button(self: PGtkAlertDialog): longint; cdecl; external gtklib;
procedure gtk_alert_dialog_set_cancel_button(self: PGtkAlertDialog; button: longint); cdecl; external gtklib;
function gtk_alert_dialog_get_default_button(self: PGtkAlertDialog): longint; cdecl; external gtklib;
procedure gtk_alert_dialog_set_default_button(self: PGtkAlertDialog; button: longint); cdecl; external gtklib;
procedure gtk_alert_dialog_choose(self: PGtkAlertDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_alert_dialog_choose_finish(self: PGtkAlertDialog; Result: PGAsyncResult; error: PPGError): longint; cdecl; external gtklib;
procedure gtk_alert_dialog_show(self: PGtkAlertDialog; parent: PGtkWindow); cdecl; external gtklib;

// === Konventiert am: 12-7-24 16:01:11 ===

function GTK_TYPE_ALERT_DIALOG: TGType;

implementation

function GTK_TYPE_ALERT_DIALOG: TGType;
begin
  // gtk_accessible_get_type;    nicht findbar
  //    GTK_TYPE_ALERT_DIALOG:=gtk_alert_dialog_get_type;
end;



end.
