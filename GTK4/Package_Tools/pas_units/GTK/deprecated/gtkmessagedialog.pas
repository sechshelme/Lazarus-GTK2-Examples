unit gtkmessagedialog;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget, gtkwindow, gtkdialog;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkMessageDialog = record
    parent_instance: TGtkDialog;
  end;
  PGtkMessageDialog = ^TGtkMessageDialog;

  PGtkButtonsType = ^TGtkButtonsType;
  TGtkButtonsType = longint;

const
  GTK_BUTTONS_NONE = 0;
  GTK_BUTTONS_OK = 1;
  GTK_BUTTONS_CLOSE = 2;
  GTK_BUTTONS_CANCEL = 3;
  GTK_BUTTONS_YES_NO = 4;
  GTK_BUTTONS_OK_CANCEL = 5;

function gtk_message_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_message_dialog_new(parent: PGtkWindow; flags: TGtkDialogFlags; _type: TGtkMessageType; Buttons: TGtkButtonsType; message_format: PChar;
  args: array of const): PGtkWidget; cdecl; external gtklib;
function gtk_message_dialog_new(parent: PGtkWindow; flags: TGtkDialogFlags; _type: TGtkMessageType; Buttons: TGtkButtonsType; message_format: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_message_dialog_new_with_markup(parent: PGtkWindow; flags: TGtkDialogFlags; _type: TGtkMessageType; Buttons: TGtkButtonsType; message_format: PChar;
  args: array of const): PGtkWidget; cdecl; external gtklib;
function gtk_message_dialog_new_with_markup(parent: PGtkWindow; flags: TGtkDialogFlags; _type: TGtkMessageType; Buttons: TGtkButtonsType; message_format: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_message_dialog_set_markup(message_dialog: PGtkMessageDialog; str: PChar); cdecl; external gtklib;
procedure gtk_message_dialog_format_secondary_text(message_dialog: PGtkMessageDialog; message_format: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_message_dialog_format_secondary_text(message_dialog: PGtkMessageDialog; message_format: PChar); cdecl; external gtklib;
procedure gtk_message_dialog_format_secondary_markup(message_dialog: PGtkMessageDialog; message_format: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_message_dialog_format_secondary_markup(message_dialog: PGtkMessageDialog; message_format: PChar); cdecl; external gtklib;
function gtk_message_dialog_get_message_area(message_dialog: PGtkMessageDialog): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 30-7-24 16:04:30 ===

function GTK_TYPE_MESSAGE_DIALOG: TGType;
function GTK_MESSAGE_DIALOG(obj: Pointer): PGtkMessageDialog;
function GTK_IS_MESSAGE_DIALOG(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_MESSAGE_DIALOG: TGType;
begin
  GTK_TYPE_MESSAGE_DIALOG := gtk_message_dialog_get_type;
end;

function GTK_MESSAGE_DIALOG(obj: Pointer): PGtkMessageDialog;
begin
  Result := PGtkMessageDialog(g_type_check_instance_cast(obj, GTK_TYPE_MESSAGE_DIALOG));
end;

function GTK_IS_MESSAGE_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MESSAGE_DIALOG);
end;



end.
