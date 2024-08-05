/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkDialogFlags = ^TGtkDialogFlags;
  TGtkDialogFlags = longint;

const
  GTK_DIALOG_MODAL = 1 shl 0;
  GTK_DIALOG_DESTROY_WITH_PARENT = 1 shl 1;
  GTK_DIALOG_USE_HEADER_BAR = 1 shl 2;

type
  PGtkResponseType = ^TGtkResponseType;
  TGtkResponseType = longint;

const
  GTK_RESPONSE_NONE = -(1);
  GTK_RESPONSE_REJECT = -(2);
  GTK_RESPONSE_ACCEPT = -(3);
  GTK_RESPONSE_DELETE_EVENT = -(4);
  GTK_RESPONSE_OK = -(5);
  GTK_RESPONSE_CANCEL = -(6);
  GTK_RESPONSE_CLOSE = -(7);
  GTK_RESPONSE_YES = -(8);
  GTK_RESPONSE_NO = -(9);
  GTK_RESPONSE_APPLY = -(10);
  GTK_RESPONSE_HELP = -(11);


type
  PGtkDialog = ^TGtkDialog;

  TGtkDialog = record
    parent_instance: TGtkWindow;
  end;

  PGtkDialogClass = ^TGtkDialogClass;

  TGtkDialogClass = record
    parent_class: TGtkWindowClass;
    response: procedure(dialog: PGtkDialog; response_id: longint); cdecl;
    Close: procedure(dialog: PGtkDialog); cdecl;
    padding: array[0..7] of Tgpointer;
  end;


function gtk_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_dialog_new: PGtkWidget; cdecl; external gtklib;
function gtk_dialog_new_with_buttons(title: PChar; parent: PGtkWindow; flags: TGtkDialogFlags; first_button_text: PChar; args: array of const): PGtkWidget; cdecl; external gtklib;
function gtk_dialog_new_with_buttons(title: PChar; parent: PGtkWindow; flags: TGtkDialogFlags; first_button_text: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_dialog_add_action_widget(dialog: PGtkDialog; child: PGtkWidget; response_id: longint); cdecl; external gtklib;
function gtk_dialog_add_button(dialog: PGtkDialog; button_text: PChar; response_id: longint): PGtkWidget; cdecl; external gtklib;
procedure gtk_dialog_add_buttons(dialog: PGtkDialog; first_button_text: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_dialog_add_buttons(dialog: PGtkDialog; first_button_text: PChar); cdecl; external gtklib;
procedure gtk_dialog_set_response_sensitive(dialog: PGtkDialog; response_id: longint; setting: Tgboolean); cdecl; external gtklib;
procedure gtk_dialog_set_default_response(dialog: PGtkDialog; response_id: longint); cdecl; external gtklib;
function gtk_dialog_get_widget_for_response(dialog: PGtkDialog; response_id: longint): PGtkWidget; cdecl; external gtklib;
function gtk_dialog_get_response_for_widget(dialog: PGtkDialog; widget: PGtkWidget): longint; cdecl; external gtklib;
procedure gtk_dialog_response(dialog: PGtkDialog; response_id: longint); cdecl; external gtklib;
function gtk_dialog_get_content_area(dialog: PGtkDialog): PGtkWidget; cdecl; external gtklib;
function gtk_dialog_get_header_bar(dialog: PGtkDialog): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 14:59:59 ===

function GTK_TYPE_DIALOG: TGType;
function GTK_DIALOG(obj: Pointer): PGtkDialog;
function GTK_DIALOG_CLASS(klass: Pointer): PGtkDialogClass;
function GTK_IS_DIALOG(obj: Pointer): Tgboolean;
function GTK_IS_DIALOG_CLASS(klass: Pointer): Tgboolean;
function GTK_DIALOG_GET_CLASS(obj: Pointer): PGtkDialogClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_DIALOG: TGType;
begin
  GTK_TYPE_DIALOG := gtk_dialog_get_type;
end;

function GTK_DIALOG(obj: Pointer): PGtkDialog;
begin
  Result := PGtkDialog(g_type_check_instance_cast(obj, GTK_TYPE_DIALOG));
end;

function GTK_DIALOG_CLASS(klass: Pointer): PGtkDialogClass;
begin
  Result := PGtkDialogClass(g_type_check_class_cast(klass, GTK_TYPE_DIALOG));
end;

function GTK_IS_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DIALOG);
end;

function GTK_IS_DIALOG_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_DIALOG);
end;

function GTK_DIALOG_GET_CLASS(obj: Pointer): PGtkDialogClass;
begin
  Result := PGtkDialogClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
