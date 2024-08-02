unit gtkprintsettings;

interface

uses
  glib2, common_GTK, gtkenums, gtkpapersize;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkPrintSettingsFunc = procedure(key: PChar; Value: PChar; user_data: Tgpointer); cdecl;

  TGtkPrintSettings = record // _GtkPrintSettings
  end;
  PGtkPrintSettings = ^tGtkPrintSettings;

  TGtkPageRange = record
    start: longint;
    end_: longint;
  end;
  PGtkPageRange = ^TGtkPageRange;


function gtk_print_settings_get_type: TGType; cdecl; external gtklib;
function gtk_print_settings_new: PGtkPrintSettings; cdecl; external gtklib;
function gtk_print_settings_copy(other: PGtkPrintSettings): PGtkPrintSettings; cdecl; external gtklib;
function gtk_print_settings_new_from_file(file_name: PChar; error: PPGError): PGtkPrintSettings; cdecl; external gtklib;
function gtk_print_settings_load_file(settings: PGtkPrintSettings; file_name: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_print_settings_to_file(settings: PGtkPrintSettings; file_name: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_print_settings_new_from_key_file(key_file: PGKeyFile; group_name: PChar; error: PPGError): PGtkPrintSettings; cdecl; external gtklib;
function gtk_print_settings_load_key_file(settings: PGtkPrintSettings; key_file: PGKeyFile; group_name: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gtk_print_settings_to_key_file(settings: PGtkPrintSettings; key_file: PGKeyFile; group_name: PChar); cdecl; external gtklib;
function gtk_print_settings_has_key(settings: PGtkPrintSettings; key: PChar): Tgboolean; cdecl; external gtklib;
function gtk_print_settings_get(settings: PGtkPrintSettings; key: PChar): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set(settings: PGtkPrintSettings; key: PChar; Value: PChar); cdecl; external gtklib;
procedure gtk_print_settings_unset(settings: PGtkPrintSettings; key: PChar); cdecl; external gtklib;
procedure gtk_print_settings_foreach(settings: PGtkPrintSettings; func: TGtkPrintSettingsFunc; user_data: Tgpointer); cdecl; external gtklib;
function gtk_print_settings_get_bool(settings: PGtkPrintSettings; key: PChar): Tgboolean; cdecl; external gtklib;
procedure gtk_print_settings_set_bool(settings: PGtkPrintSettings; key: PChar; Value: Tgboolean); cdecl; external gtklib;
function gtk_print_settings_get_double(settings: PGtkPrintSettings; key: PChar): Tdouble; cdecl; external gtklib;
function gtk_print_settings_get_double_with_default(settings: PGtkPrintSettings; key: PChar; def: Tdouble): Tdouble; cdecl; external gtklib;
procedure gtk_print_settings_set_double(settings: PGtkPrintSettings; key: PChar; Value: Tdouble); cdecl; external gtklib;
function gtk_print_settings_get_length(settings: PGtkPrintSettings; key: PChar; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_print_settings_set_length(settings: PGtkPrintSettings; key: PChar; Value: Tdouble; unit_: TGtkUnit); cdecl; external gtklib;
function gtk_print_settings_get_int(settings: PGtkPrintSettings; key: PChar): longint; cdecl; external gtklib;
function gtk_print_settings_get_int_with_default(settings: PGtkPrintSettings; key: PChar; def: longint): longint; cdecl; external gtklib;
procedure gtk_print_settings_set_int(settings: PGtkPrintSettings; key: PChar; Value: longint); cdecl; external gtklib;

const
  GTK_PRINT_SETTINGS_PRINTER = 'printer';
  GTK_PRINT_SETTINGS_ORIENTATION = 'orientation';
  GTK_PRINT_SETTINGS_PAPER_FORMAT = 'paper-format';
  GTK_PRINT_SETTINGS_PAPER_WIDTH = 'paper-width';
  GTK_PRINT_SETTINGS_PAPER_HEIGHT = 'paper-height';
  GTK_PRINT_SETTINGS_N_COPIES = 'n-copies';
  GTK_PRINT_SETTINGS_DEFAULT_SOURCE = 'default-source';
  GTK_PRINT_SETTINGS_QUALITY = 'quality';
  GTK_PRINT_SETTINGS_RESOLUTION = 'resolution';
  GTK_PRINT_SETTINGS_USE_COLOR = 'use-color';
  GTK_PRINT_SETTINGS_DUPLEX = 'duplex';
  GTK_PRINT_SETTINGS_COLLATE = 'collate';
  GTK_PRINT_SETTINGS_REVERSE = 'reverse';
  GTK_PRINT_SETTINGS_MEDIA_TYPE = 'media-type';
  GTK_PRINT_SETTINGS_DITHER = 'dither';
  GTK_PRINT_SETTINGS_SCALE = 'scale';
  GTK_PRINT_SETTINGS_PRINT_PAGES = 'print-pages';
  GTK_PRINT_SETTINGS_PAGE_RANGES = 'page-ranges';
  GTK_PRINT_SETTINGS_PAGE_SET = 'page-set';
  GTK_PRINT_SETTINGS_FINISHINGS = 'finishings';
  GTK_PRINT_SETTINGS_NUMBER_UP = 'number-up';
  GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT = 'number-up-layout';
  GTK_PRINT_SETTINGS_OUTPUT_BIN = 'output-bin';
  GTK_PRINT_SETTINGS_RESOLUTION_X = 'resolution-x';
  GTK_PRINT_SETTINGS_RESOLUTION_Y = 'resolution-y';
  GTK_PRINT_SETTINGS_PRINTER_LPI = 'printer-lpi';
  GTK_PRINT_SETTINGS_OUTPUT_DIR = 'output-dir';
  GTK_PRINT_SETTINGS_OUTPUT_BASENAME = 'output-basename';
  GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT = 'output-file-format';
  GTK_PRINT_SETTINGS_OUTPUT_URI = 'output-uri';
  GTK_PRINT_SETTINGS_WIN32_DRIVER_VERSION = 'win32-driver-version';
  GTK_PRINT_SETTINGS_WIN32_DRIVER_EXTRA = 'win32-driver-extra';

function gtk_print_settings_get_printer(settings: PGtkPrintSettings): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set_printer(settings: PGtkPrintSettings; printer: PChar); cdecl; external gtklib;
function gtk_print_settings_get_orientation(settings: PGtkPrintSettings): TGtkPageOrientation; cdecl; external gtklib;
procedure gtk_print_settings_set_orientation(settings: PGtkPrintSettings; orientation: TGtkPageOrientation); cdecl; external gtklib;
function gtk_print_settings_get_paper_size(settings: PGtkPrintSettings): PGtkPaperSize; cdecl; external gtklib;
procedure gtk_print_settings_set_paper_size(settings: PGtkPrintSettings; paper_size: PGtkPaperSize); cdecl; external gtklib;
function gtk_print_settings_get_paper_width(settings: PGtkPrintSettings; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_print_settings_set_paper_width(settings: PGtkPrintSettings; Width: Tdouble; unit_: TGtkUnit); cdecl; external gtklib;
function gtk_print_settings_get_paper_height(settings: PGtkPrintSettings; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_print_settings_set_paper_height(settings: PGtkPrintSettings; Height: Tdouble; unit_: TGtkUnit); cdecl; external gtklib;
function gtk_print_settings_get_use_color(settings: PGtkPrintSettings): Tgboolean; cdecl; external gtklib;
procedure gtk_print_settings_set_use_color(settings: PGtkPrintSettings; use_color: Tgboolean); cdecl; external gtklib;
function gtk_print_settings_get_collate(settings: PGtkPrintSettings): Tgboolean; cdecl; external gtklib;
procedure gtk_print_settings_set_collate(settings: PGtkPrintSettings; collate: Tgboolean); cdecl; external gtklib;
function gtk_print_settings_get_reverse(settings: PGtkPrintSettings): Tgboolean; cdecl; external gtklib;
procedure gtk_print_settings_set_reverse(settings: PGtkPrintSettings; reverse: Tgboolean); cdecl; external gtklib;
function gtk_print_settings_get_duplex(settings: PGtkPrintSettings): TGtkPrintDuplex; cdecl; external gtklib;
procedure gtk_print_settings_set_duplex(settings: PGtkPrintSettings; duplex: TGtkPrintDuplex); cdecl; external gtklib;
function gtk_print_settings_get_quality(settings: PGtkPrintSettings): TGtkPrintQuality; cdecl; external gtklib;
procedure gtk_print_settings_set_quality(settings: PGtkPrintSettings; quality: TGtkPrintQuality); cdecl; external gtklib;
function gtk_print_settings_get_n_copies(settings: PGtkPrintSettings): longint; cdecl; external gtklib;
procedure gtk_print_settings_set_n_copies(settings: PGtkPrintSettings; num_copies: longint); cdecl; external gtklib;
function gtk_print_settings_get_number_up(settings: PGtkPrintSettings): longint; cdecl; external gtklib;
procedure gtk_print_settings_set_number_up(settings: PGtkPrintSettings; number_up: longint); cdecl; external gtklib;
function gtk_print_settings_get_number_up_layout(settings: PGtkPrintSettings): TGtkNumberUpLayout; cdecl; external gtklib;
procedure gtk_print_settings_set_number_up_layout(settings: PGtkPrintSettings; number_up_layout: TGtkNumberUpLayout); cdecl; external gtklib;
function gtk_print_settings_get_resolution(settings: PGtkPrintSettings): longint; cdecl; external gtklib;
procedure gtk_print_settings_set_resolution(settings: PGtkPrintSettings; resolution: longint); cdecl; external gtklib;
function gtk_print_settings_get_resolution_x(settings: PGtkPrintSettings): longint; cdecl; external gtklib;
function gtk_print_settings_get_resolution_y(settings: PGtkPrintSettings): longint; cdecl; external gtklib;
procedure gtk_print_settings_set_resolution_xy(settings: PGtkPrintSettings; resolution_x: longint; resolution_y: longint); cdecl; external gtklib;
function gtk_print_settings_get_printer_lpi(settings: PGtkPrintSettings): Tdouble; cdecl; external gtklib;
procedure gtk_print_settings_set_printer_lpi(settings: PGtkPrintSettings; lpi: Tdouble); cdecl; external gtklib;
function gtk_print_settings_get_scale(settings: PGtkPrintSettings): Tdouble; cdecl; external gtklib;
procedure gtk_print_settings_set_scale(settings: PGtkPrintSettings; scale: Tdouble); cdecl; external gtklib;
function gtk_print_settings_get_print_pages(settings: PGtkPrintSettings): TGtkPrintPages; cdecl; external gtklib;
procedure gtk_print_settings_set_print_pages(settings: PGtkPrintSettings; pages: TGtkPrintPages); cdecl; external gtklib;
function gtk_print_settings_get_page_ranges(settings: PGtkPrintSettings; num_ranges: Plongint): PGtkPageRange; cdecl; external gtklib;
procedure gtk_print_settings_set_page_ranges(settings: PGtkPrintSettings; page_ranges: PGtkPageRange; num_ranges: longint); cdecl; external gtklib;
function gtk_print_settings_get_page_set(settings: PGtkPrintSettings): TGtkPageSet; cdecl; external gtklib;
procedure gtk_print_settings_set_page_set(settings: PGtkPrintSettings; page_set: TGtkPageSet); cdecl; external gtklib;
function gtk_print_settings_get_default_source(settings: PGtkPrintSettings): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set_default_source(settings: PGtkPrintSettings; default_source: PChar); cdecl; external gtklib;
function gtk_print_settings_get_media_type(settings: PGtkPrintSettings): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set_media_type(settings: PGtkPrintSettings; media_type: PChar); cdecl; external gtklib;
function gtk_print_settings_get_dither(settings: PGtkPrintSettings): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set_dither(settings: PGtkPrintSettings; dither: PChar); cdecl; external gtklib;
function gtk_print_settings_get_finishings(settings: PGtkPrintSettings): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set_finishings(settings: PGtkPrintSettings; finishings: PChar); cdecl; external gtklib;
function gtk_print_settings_get_output_bin(settings: PGtkPrintSettings): PChar; cdecl; external gtklib;
procedure gtk_print_settings_set_output_bin(settings: PGtkPrintSettings; output_bin: PChar); cdecl; external gtklib;
function gtk_print_settings_to_gvariant(settings: PGtkPrintSettings): PGVariant; cdecl; external gtklib;
function gtk_print_settings_new_from_gvariant(variant: PGVariant): PGtkPrintSettings; cdecl; external gtklib;

// === Konventiert am: 24-7-24 15:49:18 ===

function GTK_TYPE_PRINT_SETTINGS: TGType;
function GTK_PRINT_SETTINGS(obj: Pointer): PGtkPrintSettings;
function GTK_IS_PRINT_SETTINGS(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_PRINT_SETTINGS: TGType;
begin
  GTK_TYPE_PRINT_SETTINGS := gtk_print_settings_get_type;
end;

function GTK_PRINT_SETTINGS(obj: Pointer): PGtkPrintSettings;
begin
  Result := PGtkPrintSettings(g_type_check_instance_cast(obj, GTK_TYPE_PRINT_SETTINGS));
end;

function GTK_IS_PRINT_SETTINGS(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PRINT_SETTINGS);
end;



end.
