
unit gtkprintsettings;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintsettings.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintsettings.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGError  = ^GError;
PGKeyFile  = ^GKeyFile;
PGtkPageRange  = ^GtkPageRange;
PGtkPaperSize  = ^GtkPaperSize;
PGtkPrintSettings  = ^GtkPrintSettings;
PGVariant  = ^GVariant;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PRINT_SETTINGS_H__}
{$define __GTK_PRINT_SETTINGS_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpapersize.h>}

type

function GTK_TYPE_PRINT_SETTINGS : longint; { return type might be wrong }

function GTK_PRINT_SETTINGS(obj : longint) : longint;

function GTK_IS_PRINT_SETTINGS(obj : longint) : longint;

type

  TGtkPrintSettingsFunc = procedure (key:Pchar; value:Pchar; user_data:Tgpointer);cdecl;

  PGtkPageRange = ^TGtkPageRange;
  TGtkPageRange = record
      start : longint;cdecl;
      end : longint;
    end;



function gtk_print_settings_get_type:TGType;cdecl;external;

function gtk_print_settings_new:PGtkPrintSettings;cdecl;external;

function gtk_print_settings_copy(other:PGtkPrintSettings):PGtkPrintSettings;cdecl;external;

function gtk_print_settings_new_from_file(file_name:Pchar; error:PPGError):PGtkPrintSettings;cdecl;external;

function gtk_print_settings_load_file(settings:PGtkPrintSettings; file_name:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_print_settings_to_file(settings:PGtkPrintSettings; file_name:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_print_settings_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):PGtkPrintSettings;cdecl;external;

function gtk_print_settings_load_key_file(settings:PGtkPrintSettings; key_file:PGKeyFile; group_name:Pchar; error:PPGError):Tgboolean;cdecl;external;

procedure gtk_print_settings_to_key_file(settings:PGtkPrintSettings; key_file:PGKeyFile; group_name:Pchar);cdecl;external;

function gtk_print_settings_has_key(settings:PGtkPrintSettings; key:Pchar):Tgboolean;cdecl;external;

function gtk_print_settings_get(settings:PGtkPrintSettings; key:Pchar):Pchar;cdecl;external;

procedure gtk_print_settings_set(settings:PGtkPrintSettings; key:Pchar; value:Pchar);cdecl;external;

procedure gtk_print_settings_unset(settings:PGtkPrintSettings; key:Pchar);cdecl;external;

procedure gtk_print_settings_foreach(settings:PGtkPrintSettings; func:TGtkPrintSettingsFunc; user_data:Tgpointer);cdecl;external;

function gtk_print_settings_get_bool(settings:PGtkPrintSettings; key:Pchar):Tgboolean;cdecl;external;

procedure gtk_print_settings_set_bool(settings:PGtkPrintSettings; key:Pchar; value:Tgboolean);cdecl;external;

function gtk_print_settings_get_double(settings:PGtkPrintSettings; key:Pchar):Tdouble;cdecl;external;

function gtk_print_settings_get_double_with_default(settings:PGtkPrintSettings; key:Pchar; def:Tdouble):Tdouble;cdecl;external;

procedure gtk_print_settings_set_double(settings:PGtkPrintSettings; key:Pchar; value:Tdouble);cdecl;external;

function gtk_print_settings_get_length(settings:PGtkPrintSettings; key:Pchar; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_print_settings_set_length(settings:PGtkPrintSettings; key:Pchar; value:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_print_settings_get_int(settings:PGtkPrintSettings; key:Pchar):longint;cdecl;external;

function gtk_print_settings_get_int_with_default(settings:PGtkPrintSettings; key:Pchar; def:longint):longint;cdecl;external;

procedure gtk_print_settings_set_int(settings:PGtkPrintSettings; key:Pchar; value:longint);cdecl;external;
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



function gtk_print_settings_get_printer(settings:PGtkPrintSettings):Pchar;cdecl;external;

procedure gtk_print_settings_set_printer(settings:PGtkPrintSettings; printer:Pchar);cdecl;external;

function gtk_print_settings_get_orientation(settings:PGtkPrintSettings):TGtkPageOrientation;cdecl;external;

procedure gtk_print_settings_set_orientation(settings:PGtkPrintSettings; orientation:TGtkPageOrientation);cdecl;external;

function gtk_print_settings_get_paper_size(settings:PGtkPrintSettings):PGtkPaperSize;cdecl;external;

procedure gtk_print_settings_set_paper_size(settings:PGtkPrintSettings; paper_size:PGtkPaperSize);cdecl;external;

function gtk_print_settings_get_paper_width(settings:PGtkPrintSettings; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_print_settings_set_paper_width(settings:PGtkPrintSettings; width:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_print_settings_get_paper_height(settings:PGtkPrintSettings; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_print_settings_set_paper_height(settings:PGtkPrintSettings; height:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_print_settings_get_use_color(settings:PGtkPrintSettings):Tgboolean;cdecl;external;

procedure gtk_print_settings_set_use_color(settings:PGtkPrintSettings; use_color:Tgboolean);cdecl;external;

function gtk_print_settings_get_collate(settings:PGtkPrintSettings):Tgboolean;cdecl;external;

procedure gtk_print_settings_set_collate(settings:PGtkPrintSettings; collate:Tgboolean);cdecl;external;

function gtk_print_settings_get_reverse(settings:PGtkPrintSettings):Tgboolean;cdecl;external;

procedure gtk_print_settings_set_reverse(settings:PGtkPrintSettings; reverse:Tgboolean);cdecl;external;

function gtk_print_settings_get_duplex(settings:PGtkPrintSettings):TGtkPrintDuplex;cdecl;external;

procedure gtk_print_settings_set_duplex(settings:PGtkPrintSettings; duplex:TGtkPrintDuplex);cdecl;external;

function gtk_print_settings_get_quality(settings:PGtkPrintSettings):TGtkPrintQuality;cdecl;external;

procedure gtk_print_settings_set_quality(settings:PGtkPrintSettings; quality:TGtkPrintQuality);cdecl;external;

function gtk_print_settings_get_n_copies(settings:PGtkPrintSettings):longint;cdecl;external;

procedure gtk_print_settings_set_n_copies(settings:PGtkPrintSettings; num_copies:longint);cdecl;external;

function gtk_print_settings_get_number_up(settings:PGtkPrintSettings):longint;cdecl;external;

procedure gtk_print_settings_set_number_up(settings:PGtkPrintSettings; number_up:longint);cdecl;external;

function gtk_print_settings_get_number_up_layout(settings:PGtkPrintSettings):TGtkNumberUpLayout;cdecl;external;

procedure gtk_print_settings_set_number_up_layout(settings:PGtkPrintSettings; number_up_layout:TGtkNumberUpLayout);cdecl;external;

function gtk_print_settings_get_resolution(settings:PGtkPrintSettings):longint;cdecl;external;

procedure gtk_print_settings_set_resolution(settings:PGtkPrintSettings; resolution:longint);cdecl;external;

function gtk_print_settings_get_resolution_x(settings:PGtkPrintSettings):longint;cdecl;external;

function gtk_print_settings_get_resolution_y(settings:PGtkPrintSettings):longint;cdecl;external;

procedure gtk_print_settings_set_resolution_xy(settings:PGtkPrintSettings; resolution_x:longint; resolution_y:longint);cdecl;external;

function gtk_print_settings_get_printer_lpi(settings:PGtkPrintSettings):Tdouble;cdecl;external;

procedure gtk_print_settings_set_printer_lpi(settings:PGtkPrintSettings; lpi:Tdouble);cdecl;external;

function gtk_print_settings_get_scale(settings:PGtkPrintSettings):Tdouble;cdecl;external;

procedure gtk_print_settings_set_scale(settings:PGtkPrintSettings; scale:Tdouble);cdecl;external;

function gtk_print_settings_get_print_pages(settings:PGtkPrintSettings):TGtkPrintPages;cdecl;external;

procedure gtk_print_settings_set_print_pages(settings:PGtkPrintSettings; pages:TGtkPrintPages);cdecl;external;

function gtk_print_settings_get_page_ranges(settings:PGtkPrintSettings; num_ranges:Plongint):PGtkPageRange;cdecl;external;

procedure gtk_print_settings_set_page_ranges(settings:PGtkPrintSettings; page_ranges:PGtkPageRange; num_ranges:longint);cdecl;external;

function gtk_print_settings_get_page_set(settings:PGtkPrintSettings):TGtkPageSet;cdecl;external;

procedure gtk_print_settings_set_page_set(settings:PGtkPrintSettings; page_set:TGtkPageSet);cdecl;external;

function gtk_print_settings_get_default_source(settings:PGtkPrintSettings):Pchar;cdecl;external;

procedure gtk_print_settings_set_default_source(settings:PGtkPrintSettings; default_source:Pchar);cdecl;external;

function gtk_print_settings_get_media_type(settings:PGtkPrintSettings):Pchar;cdecl;external;

procedure gtk_print_settings_set_media_type(settings:PGtkPrintSettings; media_type:Pchar);cdecl;external;

function gtk_print_settings_get_dither(settings:PGtkPrintSettings):Pchar;cdecl;external;

procedure gtk_print_settings_set_dither(settings:PGtkPrintSettings; dither:Pchar);cdecl;external;

function gtk_print_settings_get_finishings(settings:PGtkPrintSettings):Pchar;cdecl;external;

procedure gtk_print_settings_set_finishings(settings:PGtkPrintSettings; finishings:Pchar);cdecl;external;

function gtk_print_settings_get_output_bin(settings:PGtkPrintSettings):Pchar;cdecl;external;

procedure gtk_print_settings_set_output_bin(settings:PGtkPrintSettings; output_bin:Pchar);cdecl;external;

function gtk_print_settings_to_gvariant(settings:PGtkPrintSettings):PGVariant;cdecl;external;

function gtk_print_settings_new_from_gvariant(variant:PGVariant):PGtkPrintSettings;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PRINT_SETTINGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_SETTINGS:=gtk_print_settings_get_type;
  end;

function GTK_PRINT_SETTINGS(obj : longint) : longint;
begin
  GTK_PRINT_SETTINGS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_SETTINGS,GtkPrintSettings);
end;

function GTK_IS_PRINT_SETTINGS(obj : longint) : longint;
begin
  GTK_IS_PRINT_SETTINGS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_SETTINGS);
end;


end.
