/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkText = record
    parent_instance: TGtkWidget;
  end;
  PGtkText = ^TGtkText;


function gtk_text_get_type: TGType; cdecl; external gtklib;
function gtk_text_new: PGtkWidget; cdecl; external gtklib;
function gtk_text_new_with_buffer(buffer: PGtkEntryBuffer): PGtkWidget; cdecl; external gtklib;
function gtk_text_get_buffer(self: PGtkText): PGtkEntryBuffer; cdecl; external gtklib;
procedure gtk_text_set_buffer(self: PGtkText; buffer: PGtkEntryBuffer); cdecl; external gtklib;
procedure gtk_text_set_visibility(self: PGtkText; Visible: Tgboolean); cdecl; external gtklib;
function gtk_text_get_visibility(self: PGtkText): Tgboolean; cdecl; external gtklib;
procedure gtk_text_set_invisible_char(self: PGtkText; ch: Tgunichar); cdecl; external gtklib;
function gtk_text_get_invisible_char(self: PGtkText): Tgunichar; cdecl; external gtklib;
procedure gtk_text_unset_invisible_char(self: PGtkText); cdecl; external gtklib;
procedure gtk_text_set_overwrite_mode(self: PGtkText; overwrite: Tgboolean); cdecl; external gtklib;
function gtk_text_get_overwrite_mode(self: PGtkText): Tgboolean; cdecl; external gtklib;
procedure gtk_text_set_max_length(self: PGtkText; length: longint); cdecl; external gtklib;
function gtk_text_get_max_length(self: PGtkText): longint; cdecl; external gtklib;
function gtk_text_get_text_length(self: PGtkText): Tguint16; cdecl; external gtklib;
procedure gtk_text_set_activates_default(self: PGtkText; activates: Tgboolean); cdecl; external gtklib;
function gtk_text_get_activates_default(self: PGtkText): Tgboolean; cdecl; external gtklib;
function gtk_text_get_placeholder_text(self: PGtkText): PChar; cdecl; external gtklib;
procedure gtk_text_set_placeholder_text(self: PGtkText; Text: PChar); cdecl; external gtklib;
procedure gtk_text_set_input_purpose(self: PGtkText; purpose: TGtkInputPurpose); cdecl; external gtklib;
function gtk_text_get_input_purpose(self: PGtkText): TGtkInputPurpose; cdecl; external gtklib;
procedure gtk_text_set_input_hints(self: PGtkText; hints: TGtkInputHints); cdecl; external gtklib;
function gtk_text_get_input_hints(self: PGtkText): TGtkInputHints; cdecl; external gtklib;
procedure gtk_text_set_attributes(self: PGtkText; attrs: PPangoAttrList); cdecl; external gtklib;
function gtk_text_get_attributes(self: PGtkText): PPangoAttrList; cdecl; external gtklib;
procedure gtk_text_set_tabs(self: PGtkText; tabs: PPangoTabArray); cdecl; external gtklib;
function gtk_text_get_tabs(self: PGtkText): PPangoTabArray; cdecl; external gtklib;
function gtk_text_grab_focus_without_selecting(self: PGtkText): Tgboolean; cdecl; external gtklib;
procedure gtk_text_set_extra_menu(self: PGtkText; model: PGMenuModel); cdecl; external gtklib;
function gtk_text_get_extra_menu(self: PGtkText): PGMenuModel; cdecl; external gtklib;
procedure gtk_text_set_enable_emoji_completion(self: PGtkText; enable_emoji_completion: Tgboolean); cdecl; external gtklib;
function gtk_text_get_enable_emoji_completion(self: PGtkText): Tgboolean; cdecl; external gtklib;
procedure gtk_text_set_propagate_text_width(self: PGtkText; propagate_text_width: Tgboolean); cdecl; external gtklib;
function gtk_text_get_propagate_text_width(self: PGtkText): Tgboolean; cdecl; external gtklib;
procedure gtk_text_set_truncate_multiline(self: PGtkText; truncate_multiline: Tgboolean); cdecl; external gtklib;
function gtk_text_get_truncate_multiline(self: PGtkText): Tgboolean; cdecl; external gtklib;
procedure gtk_text_compute_cursor_extents(self: PGtkText; position: Tgsize; strong: Pgraphene_rect_t; weak: Pgraphene_rect_t); cdecl; external gtklib;

// === Konventiert am: 24-7-24 15:29:34 ===

function GTK_TYPE_TEXT: TGType;
function GTK_TEXT(obj: Pointer): PGtkText;
function GTK_IS_TEXT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TEXT: TGType;
begin
  GTK_TYPE_TEXT := gtk_text_get_type;
end;

function GTK_TEXT(obj: Pointer): PGtkText;
begin
  Result := PGtkText(g_type_check_instance_cast(obj, GTK_TYPE_TEXT));
end;

function GTK_IS_TEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TEXT);
end;



{$ENDIF read_implementation}
