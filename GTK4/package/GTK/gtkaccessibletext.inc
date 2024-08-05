/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkAccessibleText = record {G_DECLARE_INTERFACE (GtkAccessibleText, gtk_accessible_text, GTK, ACCESSIBLE_TEXT, GtkAccessible) }
  end;
  PGtkAccessibleText = ^TGtkAccessibleText;

type
  TGtkAccessibleTextRange = record
    start: Tgsize;
    length: Tgsize;
  end;
  PGtkAccessibleTextRange = ^TGtkAccessibleTextRange;
  PPGtkAccessibleTextRange = ^PGtkAccessibleTextRange;
  PGtkAccessibleTextGranularity = ^TGtkAccessibleTextGranularity;
  TGtkAccessibleTextGranularity = longint;

const
  GTK_ACCESSIBLE_TEXT_GRANULARITY_CHARACTER = 0;
  GTK_ACCESSIBLE_TEXT_GRANULARITY_WORD = 1;
  GTK_ACCESSIBLE_TEXT_GRANULARITY_SENTENCE = 2;
  GTK_ACCESSIBLE_TEXT_GRANULARITY_LINE = 3;
  GTK_ACCESSIBLE_TEXT_GRANULARITY_PARAGRAPH = 4;

type
  PGtkAccessibleTextContentChange = ^TGtkAccessibleTextContentChange;
  TGtkAccessibleTextContentChange = longint;

const
  GTK_ACCESSIBLE_TEXT_CONTENT_CHANGE_INSERT = 0;
  GTK_ACCESSIBLE_TEXT_CONTENT_CHANGE_REMOVE = 1;

type
  TGtkAccessibleTextInterface = record
    g_iface: TGTypeInterface;
    get_contents: function(self: PGtkAccessibleText; start: dword; end_: dword): PGBytes; cdecl;
    get_contents_at: function(self: PGtkAccessibleText; offset: dword; granularity: TGtkAccessibleTextGranularity; start: Pdword; end_: Pdword): PGBytes; cdecl;
    get_caret_position: function(self: PGtkAccessibleText): dword; cdecl;
    get_selection: function(self: PGtkAccessibleText; n_ranges: Pgsize; ranges: PPGtkAccessibleTextRange): Tgboolean; cdecl;
    get_attributes: function(self: PGtkAccessibleText; offset: dword; n_ranges: Pgsize; ranges: PPGtkAccessibleTextRange; attribute_names: PPPchar;
      attribute_values: PPPchar): Tgboolean; cdecl;
    get_default_attributes: procedure(self: PGtkAccessibleText; attribute_names: PPPchar; attribute_values: PPPchar); cdecl;
  end;
  PGtkAccessibleTextInterface = ^TGtkAccessibleTextInterface;

function gtk_accessible_text_get_type: TGType; cdecl; external gtklib;
procedure gtk_accessible_text_update_caret_position(self: PGtkAccessibleText); cdecl; external gtklib;
procedure gtk_accessible_text_update_selection_bound(self: PGtkAccessibleText); cdecl; external gtklib;
procedure gtk_accessible_text_update_contents(self: PGtkAccessibleText; change: TGtkAccessibleTextContentChange; start: dword; end_: dword); cdecl; external gtklib;

const
  GTK_ACCESSIBLE_ATTRIBUTE_FAMILY = 'family-name';
  GTK_ACCESSIBLE_ATTRIBUTE_STYLE = 'style';
  GTK_ACCESSIBLE_ATTRIBUTE_WEIGHT = 'weight';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT = 'variant';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH = 'stretch';
  GTK_ACCESSIBLE_ATTRIBUTE_SIZE = 'size';
  GTK_ACCESSIBLE_ATTRIBUTE_FOREGROUND = 'fg-color';
  GTK_ACCESSIBLE_ATTRIBUTE_BACKGROUND = 'bg-color';
  GTK_ACCESSIBLE_ATTRIBUTE_UNDERLINE = 'underline';
  GTK_ACCESSIBLE_ATTRIBUTE_OVERLINE = 'overline';
  GTK_ACCESSIBLE_ATTRIBUTE_STRIKETHROUGH = 'strikethrough';
  GTK_ACCESSIBLE_ATTRIBUTE_STYLE_NORMAL = 'normal';
  GTK_ACCESSIBLE_ATTRIBUTE_STYLE_OBLIQUE = 'oblique';
  GTK_ACCESSIBLE_ATTRIBUTE_STYLE_ITALIC = 'italic';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT_SMALL_CAPS = 'small-caps';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT_ALL_SMALL_CAPS = 'all-small-caps';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT_PETITE_CAPS = 'petite-caps';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT_ALL_PETITE_CAPS = 'all-petite-caps';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT_UNICASE = 'unicase';
  GTK_ACCESSIBLE_ATTRIBUTE_VARIANT_TITLE_CAPS = 'title-caps';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_ULTRA_CONDENSED = 'ultra_condensed';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_EXTRA_CONDENSED = 'extra_condensed';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_CONDENSED = 'condensed';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_SEMI_CONDENSED = 'semi_condensed';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_NORMAL = 'normal';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_SEMI_EXPANDED = 'semi_expanded';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_EXPANDED = 'expanded';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_EXTRA_EXPANDED = 'extra_expanded';
  GTK_ACCESSIBLE_ATTRIBUTE_STRETCH_ULTRA_EXPANDED = 'ultra_expanded';
  GTK_ACCESSIBLE_ATTRIBUTE_UNDERLINE_NONE = 'none';
  GTK_ACCESSIBLE_ATTRIBUTE_UNDERLINE_SINGLE = 'single';
  GTK_ACCESSIBLE_ATTRIBUTE_UNDERLINE_DOUBLE = 'double';
  GTK_ACCESSIBLE_ATTRIBUTE_UNDERLINE_ERROR = 'error';
  GTK_ACCESSIBLE_ATTRIBUTE_OVERLINE_NONE = 'none';
  GTK_ACCESSIBLE_ATTRIBUTE_OVERLINE_SINGLE = 'single';

  // === Konventiert am: 14-7-24 16:12:06 ===

function GTK_TYPE_ACCESSIBLE_TEXT: TGType;
function GTK_ACCESSIBLE_TEXT(obj: Pointer): PGtkAccessibleText;
function GTK_IS_ACCESSIBLE_TEXT(obj: Pointer): Tgboolean;
function GTK_ACCESSIBLE_TEXT_GET_IFACE(obj: Pointer): PGtkAccessibleTextInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ACCESSIBLE_TEXT: TGType;
begin
  Result := gtk_accessible_text_get_type;
end;

function GTK_ACCESSIBLE_TEXT(obj: Pointer): PGtkAccessibleText;
begin
  Result := PGtkAccessibleText(g_type_check_instance_cast(obj, GTK_TYPE_ACCESSIBLE_TEXT));
end;

function GTK_IS_ACCESSIBLE_TEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ACCESSIBLE_TEXT);
end;

function GTK_ACCESSIBLE_TEXT_GET_IFACE(obj: Pointer): PGtkAccessibleTextInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_ACCESSIBLE_TEXT);
end;




{$ENDIF read_implementation}
