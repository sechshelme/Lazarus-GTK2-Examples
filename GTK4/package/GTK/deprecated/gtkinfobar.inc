/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkInfoBar = record
  end;
  PGtkInfoBar = ^TGtkInfoBar;

function gtk_info_bar_get_type: TGType; cdecl; external gtklib;
function gtk_info_bar_new: PGtkWidget; cdecl; external gtklib;
function gtk_info_bar_new_with_buttons(first_button_text: PChar; args: array of const): PGtkWidget; cdecl; external gtklib;
function gtk_info_bar_new_with_buttons(first_button_text: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_info_bar_add_action_widget(info_bar: PGtkInfoBar; child: PGtkWidget; response_id: longint); cdecl; external gtklib;
procedure gtk_info_bar_remove_action_widget(info_bar: PGtkInfoBar; widget: PGtkWidget); cdecl; external gtklib;
function gtk_info_bar_add_button(info_bar: PGtkInfoBar; button_text: PChar; response_id: longint): PGtkWidget; cdecl; external gtklib;
procedure gtk_info_bar_add_buttons(info_bar: PGtkInfoBar; first_button_text: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_info_bar_add_buttons(info_bar: PGtkInfoBar; first_button_text: PChar); cdecl; external gtklib;
procedure gtk_info_bar_add_child(info_bar: PGtkInfoBar; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_info_bar_remove_child(info_bar: PGtkInfoBar; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_info_bar_set_response_sensitive(info_bar: PGtkInfoBar; response_id: longint; setting: Tgboolean); cdecl; external gtklib;
procedure gtk_info_bar_set_default_response(info_bar: PGtkInfoBar; response_id: longint); cdecl; external gtklib;
procedure gtk_info_bar_response(info_bar: PGtkInfoBar; response_id: longint); cdecl; external gtklib;
procedure gtk_info_bar_set_message_type(info_bar: PGtkInfoBar; message_type: TGtkMessageType); cdecl; external gtklib;
function gtk_info_bar_get_message_type(info_bar: PGtkInfoBar): TGtkMessageType; cdecl; external gtklib;
procedure gtk_info_bar_set_show_close_button(info_bar: PGtkInfoBar; setting: Tgboolean); cdecl; external gtklib;
function gtk_info_bar_get_show_close_button(info_bar: PGtkInfoBar): Tgboolean; cdecl; external gtklib;
procedure gtk_info_bar_set_revealed(info_bar: PGtkInfoBar; revealed: Tgboolean); cdecl; external gtklib;
function gtk_info_bar_get_revealed(info_bar: PGtkInfoBar): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 16:04:05 ===

function GTK_TYPE_INFO_BAR: TGType;
function GTK_INFO_BAR(obj: Pointer): PGtkInfoBar;
function GTK_IS_INFO_BAR(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_INFO_BAR: TGType;
begin
  GTK_TYPE_INFO_BAR := gtk_info_bar_get_type;
end;

function GTK_INFO_BAR(obj: Pointer): PGtkInfoBar;
begin
  Result := PGtkInfoBar(g_type_check_instance_cast(obj, GTK_TYPE_INFO_BAR));
end;

function GTK_IS_INFO_BAR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_INFO_BAR);
end;



{$ENDIF read_implementation}
