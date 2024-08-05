/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkFontChooser = record
  end;
  PGtkFontChooser = ^TGtkFontChooser;

  TGtkFontFilterFunc = function(family: PPangoFontFamily; face: PPangoFontFace; Data: Tgpointer): Tgboolean; cdecl;

  PGtkFontChooserLevel = ^TGtkFontChooserLevel;
  TGtkFontChooserLevel = longint;

const
  GTK_FONT_CHOOSER_LEVEL_FAMILY = 0;
  GTK_FONT_CHOOSER_LEVEL_STYLE = 1 shl 0;
  GTK_FONT_CHOOSER_LEVEL_SIZE = 1 shl 1;
  GTK_FONT_CHOOSER_LEVEL_VARIATIONS = 1 shl 2;
  GTK_FONT_CHOOSER_LEVEL_FEATURES = 1 shl 3;

type
  TGtkFontChooserIface = record
    base_iface: TGTypeInterface;
    get_font_family: function(fontchooser: PGtkFontChooser): PPangoFontFamily; cdecl;
    get_font_face: function(fontchooser: PGtkFontChooser): PPangoFontFace; cdecl;
    get_font_size: function(fontchooser: PGtkFontChooser): longint; cdecl;
    set_filter_func: procedure(fontchooser: PGtkFontChooser; filter: TGtkFontFilterFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl;
    font_activated: procedure(chooser: PGtkFontChooser; fontname: PChar); cdecl;
    set_font_map: procedure(fontchooser: PGtkFontChooser; fontmap: PPangoFontMap); cdecl;
    get_font_map: function(fontchooser: PGtkFontChooser): PPangoFontMap; cdecl;
    padding: array[0..9] of Tgpointer;
  end;
  PGtkFontChooserIface = ^TGtkFontChooserIface;


function gtk_font_chooser_get_type: TGType; cdecl; external gtklib;
function gtk_font_chooser_get_font_family(fontchooser: PGtkFontChooser): PPangoFontFamily; cdecl; external gtklib;
function gtk_font_chooser_get_font_face(fontchooser: PGtkFontChooser): PPangoFontFace; cdecl; external gtklib;
function gtk_font_chooser_get_font_size(fontchooser: PGtkFontChooser): longint; cdecl; external gtklib;
function gtk_font_chooser_get_font_desc(fontchooser: PGtkFontChooser): PPangoFontDescription; cdecl; external gtklib;
procedure gtk_font_chooser_set_font_desc(fontchooser: PGtkFontChooser; font_desc: PPangoFontDescription); cdecl; external gtklib;
function gtk_font_chooser_get_font(fontchooser: PGtkFontChooser): PChar; cdecl; external gtklib;
procedure gtk_font_chooser_set_font(fontchooser: PGtkFontChooser; fontname: PChar); cdecl; external gtklib;
function gtk_font_chooser_get_preview_text(fontchooser: PGtkFontChooser): PChar; cdecl; external gtklib;
procedure gtk_font_chooser_set_preview_text(fontchooser: PGtkFontChooser; Text: PChar); cdecl; external gtklib;
function gtk_font_chooser_get_show_preview_entry(fontchooser: PGtkFontChooser): Tgboolean; cdecl; external gtklib;
procedure gtk_font_chooser_set_show_preview_entry(fontchooser: PGtkFontChooser; show_preview_entry: Tgboolean); cdecl; external gtklib;
procedure gtk_font_chooser_set_filter_func(fontchooser: PGtkFontChooser; filter: TGtkFontFilterFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_font_chooser_set_font_map(fontchooser: PGtkFontChooser; fontmap: PPangoFontMap); cdecl; external gtklib;
function gtk_font_chooser_get_font_map(fontchooser: PGtkFontChooser): PPangoFontMap; cdecl; external gtklib;
procedure gtk_font_chooser_set_level(fontchooser: PGtkFontChooser; level: TGtkFontChooserLevel); cdecl; external gtklib;
function gtk_font_chooser_get_level(fontchooser: PGtkFontChooser): TGtkFontChooserLevel; cdecl; external gtklib;
function gtk_font_chooser_get_font_features(fontchooser: PGtkFontChooser): PChar; cdecl; external gtklib;
function gtk_font_chooser_get_language(fontchooser: PGtkFontChooser): PChar; cdecl; external gtklib;
procedure gtk_font_chooser_set_language(fontchooser: PGtkFontChooser; language: PChar); cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:53:06 ===

function GTK_TYPE_FONT_CHOOSER: TGType;
function GTK_FONT_CHOOSER(obj: Pointer): PGtkFontChooser;
function GTK_IS_FONT_CHOOSER(obj: Pointer): Tgboolean;
function GTK_FONT_CHOOSER_GET_IFACE(obj: Pointer): PGtkFontChooserIface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_FONT_CHOOSER: TGType;
begin
  GTK_TYPE_FONT_CHOOSER := gtk_font_chooser_get_type;
end;

function GTK_FONT_CHOOSER(obj: Pointer): PGtkFontChooser;
begin
  Result := PGtkFontChooser(g_type_check_instance_cast(obj, GTK_TYPE_FONT_CHOOSER));
end;

function GTK_IS_FONT_CHOOSER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FONT_CHOOSER);
end;

function GTK_FONT_CHOOSER_GET_IFACE(obj: Pointer): PGtkFontChooserIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_FONT_CHOOSER);
end;


{$ENDIF read_implementation}
