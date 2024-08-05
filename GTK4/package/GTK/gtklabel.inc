/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkLabel = record // _GtkLabel
  end;
  PGtkLabel = ^TGtkLabel;

function gtk_label_get_type: TGType; cdecl; external gtklib;
function gtk_label_new(str: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_label_new_with_mnemonic(str: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_label_set_text(self: PGtkLabel; str: PChar); cdecl; external gtklib;
function gtk_label_get_text(self: PGtkLabel): PChar; cdecl; external gtklib;
procedure gtk_label_set_attributes(self: PGtkLabel; attrs: PPangoAttrList); cdecl; external gtklib;
function gtk_label_get_attributes(self: PGtkLabel): PPangoAttrList; cdecl; external gtklib;
procedure gtk_label_set_label(self: PGtkLabel; str: PChar); cdecl; external gtklib;
function gtk_label_get_label(self: PGtkLabel): PChar; cdecl; external gtklib;
procedure gtk_label_set_markup(self: PGtkLabel; str: PChar); cdecl; external gtklib;
procedure gtk_label_set_use_markup(self: PGtkLabel; setting: Tgboolean); cdecl; external gtklib;
function gtk_label_get_use_markup(self: PGtkLabel): Tgboolean; cdecl; external gtklib;
procedure gtk_label_set_use_underline(self: PGtkLabel; setting: Tgboolean); cdecl; external gtklib;
function gtk_label_get_use_underline(self: PGtkLabel): Tgboolean; cdecl; external gtklib;
procedure gtk_label_set_markup_with_mnemonic(self: PGtkLabel; str: PChar); cdecl; external gtklib;
function gtk_label_get_mnemonic_keyval(self: PGtkLabel): Tguint; cdecl; external gtklib;
procedure gtk_label_set_mnemonic_widget(self: PGtkLabel; widget: PGtkWidget); cdecl; external gtklib;
function gtk_label_get_mnemonic_widget(self: PGtkLabel): PGtkWidget; cdecl; external gtklib;
procedure gtk_label_set_text_with_mnemonic(self: PGtkLabel; str: PChar); cdecl; external gtklib;
procedure gtk_label_set_justify(self: PGtkLabel; jtype: TGtkJustification); cdecl; external gtklib;
function gtk_label_get_justify(self: PGtkLabel): TGtkJustification; cdecl; external gtklib;
procedure gtk_label_set_ellipsize(self: PGtkLabel; mode: TPangoEllipsizeMode); cdecl; external gtklib;
function gtk_label_get_ellipsize(self: PGtkLabel): TPangoEllipsizeMode; cdecl; external gtklib;
procedure gtk_label_set_width_chars(self: PGtkLabel; n_chars: longint); cdecl; external gtklib;
function gtk_label_get_width_chars(self: PGtkLabel): longint; cdecl; external gtklib;
procedure gtk_label_set_max_width_chars(self: PGtkLabel; n_chars: longint); cdecl; external gtklib;
function gtk_label_get_max_width_chars(self: PGtkLabel): longint; cdecl; external gtklib;
procedure gtk_label_set_lines(self: PGtkLabel; Lines: longint); cdecl; external gtklib;
function gtk_label_get_lines(self: PGtkLabel): longint; cdecl; external gtklib;
procedure gtk_label_set_wrap(self: PGtkLabel; wrap: Tgboolean); cdecl; external gtklib;
function gtk_label_get_wrap(self: PGtkLabel): Tgboolean; cdecl; external gtklib;
procedure gtk_label_set_wrap_mode(self: PGtkLabel; wrap_mode: TPangoWrapMode); cdecl; external gtklib;
function gtk_label_get_wrap_mode(self: PGtkLabel): TPangoWrapMode; cdecl; external gtklib;
procedure gtk_label_set_natural_wrap_mode(self: PGtkLabel; wrap_mode: TGtkNaturalWrapMode); cdecl; external gtklib;
function gtk_label_get_natural_wrap_mode(self: PGtkLabel): TGtkNaturalWrapMode; cdecl; external gtklib;
procedure gtk_label_set_selectable(self: PGtkLabel; setting: Tgboolean); cdecl; external gtklib;
function gtk_label_get_selectable(self: PGtkLabel): Tgboolean; cdecl; external gtklib;
procedure gtk_label_select_region(self: PGtkLabel; start_offset: longint; end_offset: longint); cdecl; external gtklib;
function gtk_label_get_selection_bounds(self: PGtkLabel; start: Plongint; _end: Plongint): Tgboolean; cdecl; external gtklib;
function gtk_label_get_layout(self: PGtkLabel): PPangoLayout; cdecl; external gtklib;
procedure gtk_label_get_layout_offsets(self: PGtkLabel; x: Plongint; y: Plongint); cdecl; external gtklib;
procedure gtk_label_set_single_line_mode(self: PGtkLabel; single_line_mode: Tgboolean); cdecl; external gtklib;
function gtk_label_get_single_line_mode(self: PGtkLabel): Tgboolean; cdecl; external gtklib;
function gtk_label_get_current_uri(self: PGtkLabel): PChar; cdecl; external gtklib;
procedure gtk_label_set_xalign(self: PGtkLabel; xalign: single); cdecl; external gtklib;
function gtk_label_get_xalign(self: PGtkLabel): single; cdecl; external gtklib;
procedure gtk_label_set_yalign(self: PGtkLabel; yalign: single); cdecl; external gtklib;
function gtk_label_get_yalign(self: PGtkLabel): single; cdecl; external gtklib;
procedure gtk_label_set_extra_menu(self: PGtkLabel; model: PGMenuModel); cdecl; external gtklib;
function gtk_label_get_extra_menu(self: PGtkLabel): PGMenuModel; cdecl; external gtklib;
procedure gtk_label_set_tabs(self: PGtkLabel; tabs: PPangoTabArray); cdecl; external gtklib;
function gtk_label_get_tabs(self: PGtkLabel): PPangoTabArray; cdecl; external gtklib;

// === Konventiert am: 20-7-24 16:18:52 ===

function GTK_TYPE_LABEL: TGType;
function GTK_LABEL(obj: Pointer): PGtkLabel;
function GTK_IS_LABEL(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_LABEL: TGType;
begin
  GTK_TYPE_LABEL := gtk_label_get_type;
end;

function GTK_LABEL(obj: Pointer): PGtkLabel;
begin
  Result := PGtkLabel(g_type_check_instance_cast(obj, GTK_TYPE_LABEL));
end;

function GTK_IS_LABEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LABEL);
end;



{$ENDIF read_implementation}
