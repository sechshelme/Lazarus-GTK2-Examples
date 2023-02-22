
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


  { GTK - The GIMP Toolkit
   * gtkprintsettings.h: Print Settings
   * Copyright (C) 2006, Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_PRINT_SETTINGS_H__}
{$define __GTK_PRINT_SETTINGS_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpapersize.h>}
  { Zeile entfernt  }

  type
    _GtkPrintSettings = GtkPrintSettings;

  { was #define dname def_expr }
  function GTK_TYPE_PRINT_SETTINGS : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_SETTINGS(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_SETTINGS(obj : longint) : longint;  

(* Const before type ignored *)
(* Const before type ignored *)

  type

    GtkPrintSettingsFunc = procedure (key:Pchar; value:Pchar; user_data:gpointer);cdecl;
    _GtkPageRange = GtkPageRange;
  {*
   * GtkPageRange:
   * @start: start of page range.
   * @end: end of page range.
   *
   * A range of pages to print.
   *
   * See also [method@Gtk.PrintSettings.set_page_ranges].
    }
    _GtkPageRange = record
        start : longint;cdecl;
        end : longint;
      end;

  { Zeile entfernt  }

  function gtk_print_settings_get_type:GType;

  { Zeile entfernt  }
  function gtk_print_settings_new:^GtkPrintSettings;

  { Zeile entfernt  }
  function gtk_print_settings_copy(other:PGtkPrintSettings):^GtkPrintSettings;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_new_from_file(file_name:Pchar; error:PPGError):^GtkPrintSettings;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_load_file(settings:PGtkPrintSettings; file_name:Pchar; error:PPGError):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_to_file(settings:PGtkPrintSettings; file_name:Pchar; error:PPGError):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):^GtkPrintSettings;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_load_key_file(settings:PGtkPrintSettings; key_file:PGKeyFile; group_name:Pchar; error:PPGError):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_to_key_file(settings:PGtkPrintSettings; key_file:PGKeyFile; group_name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_has_key(settings:PGtkPrintSettings; key:Pchar):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_print_settings_get(settings:PGtkPrintSettings; key:Pchar):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_print_settings_set(settings:PGtkPrintSettings; key:Pchar; value:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_unset(settings:PGtkPrintSettings; key:Pchar);

  { Zeile entfernt  }
  procedure gtk_print_settings_foreach(settings:PGtkPrintSettings; func:GtkPrintSettingsFunc; user_data:gpointer);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_bool(settings:PGtkPrintSettings; key:Pchar):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_bool(settings:PGtkPrintSettings; key:Pchar; value:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_double(settings:PGtkPrintSettings; key:Pchar):double;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_double_with_default(settings:PGtkPrintSettings; key:Pchar; def:double):double;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_double(settings:PGtkPrintSettings; key:Pchar; value:double);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_length(settings:PGtkPrintSettings; key:Pchar; unit:GtkUnit):double;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_length(settings:PGtkPrintSettings; key:Pchar; value:double; unit:GtkUnit);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_int(settings:PGtkPrintSettings; key:Pchar):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_int_with_default(settings:PGtkPrintSettings; key:Pchar; def:longint):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_int(settings:PGtkPrintSettings; key:Pchar; value:longint);

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
  {*
   * GTK_PRINT_SETTINGS_OUTPUT_DIR:
   *
   * The key used by the “Print to file” printer to store the
   * directory to which the output should be written.
    }
    GTK_PRINT_SETTINGS_OUTPUT_DIR = 'output-dir';    
  {*
   * GTK_PRINT_SETTINGS_OUTPUT_BASENAME:
   *
   * The key used by the “Print to file” printer to store the file
   * name of the output without the path to the directory and the
   * file extension.
    }
    GTK_PRINT_SETTINGS_OUTPUT_BASENAME = 'output-basename';    
  {*
   * GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT:
   *
   * The key used by the “Print to file” printer to store the format
   * of the output. The supported values are “PS” and “PDF”.
    }
    GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT = 'output-file-format';    
  {*
   * GTK_PRINT_SETTINGS_OUTPUT_URI:
   *
   * The key used by the “Print to file” printer to store the URI
   * to which the output should be written. GTK itself supports
   * only “file://” URIs.
    }
    GTK_PRINT_SETTINGS_OUTPUT_URI = 'output-uri';    
    GTK_PRINT_SETTINGS_WIN32_DRIVER_VERSION = 'win32-driver-version';    
    GTK_PRINT_SETTINGS_WIN32_DRIVER_EXTRA = 'win32-driver-extra';    
  { Helpers:  }
  { Zeile entfernt  }
(* Const before type ignored *)

  function gtk_print_settings_get_printer(settings:PGtkPrintSettings):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_printer(settings:PGtkPrintSettings; printer:Pchar);

  { Zeile entfernt  }
  function gtk_print_settings_get_orientation(settings:PGtkPrintSettings):GtkPageOrientation;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_orientation(settings:PGtkPrintSettings; orientation:GtkPageOrientation);

  { Zeile entfernt  }
  function gtk_print_settings_get_paper_size(settings:PGtkPrintSettings):^GtkPaperSize;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_paper_size(settings:PGtkPrintSettings; paper_size:PGtkPaperSize);

  { Zeile entfernt  }
  function gtk_print_settings_get_paper_width(settings:PGtkPrintSettings; unit:GtkUnit):double;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_paper_width(settings:PGtkPrintSettings; width:double; unit:GtkUnit);

  { Zeile entfernt  }
  function gtk_print_settings_get_paper_height(settings:PGtkPrintSettings; unit:GtkUnit):double;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_paper_height(settings:PGtkPrintSettings; height:double; unit:GtkUnit);

  { Zeile entfernt  }
  function gtk_print_settings_get_use_color(settings:PGtkPrintSettings):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_use_color(settings:PGtkPrintSettings; use_color:gboolean);

  { Zeile entfernt  }
  function gtk_print_settings_get_collate(settings:PGtkPrintSettings):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_collate(settings:PGtkPrintSettings; collate:gboolean);

  { Zeile entfernt  }
  function gtk_print_settings_get_reverse(settings:PGtkPrintSettings):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_reverse(settings:PGtkPrintSettings; reverse:gboolean);

  { Zeile entfernt  }
  function gtk_print_settings_get_duplex(settings:PGtkPrintSettings):GtkPrintDuplex;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_duplex(settings:PGtkPrintSettings; duplex:GtkPrintDuplex);

  { Zeile entfernt  }
  function gtk_print_settings_get_quality(settings:PGtkPrintSettings):GtkPrintQuality;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_quality(settings:PGtkPrintSettings; quality:GtkPrintQuality);

  { Zeile entfernt  }
  function gtk_print_settings_get_n_copies(settings:PGtkPrintSettings):longint;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_n_copies(settings:PGtkPrintSettings; num_copies:longint);

  { Zeile entfernt  }
  function gtk_print_settings_get_number_up(settings:PGtkPrintSettings):longint;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_number_up(settings:PGtkPrintSettings; number_up:longint);

  { Zeile entfernt  }
  function gtk_print_settings_get_number_up_layout(settings:PGtkPrintSettings):GtkNumberUpLayout;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_number_up_layout(settings:PGtkPrintSettings; number_up_layout:GtkNumberUpLayout);

  { Zeile entfernt  }
  function gtk_print_settings_get_resolution(settings:PGtkPrintSettings):longint;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_resolution(settings:PGtkPrintSettings; resolution:longint);

  { Zeile entfernt  }
  function gtk_print_settings_get_resolution_x(settings:PGtkPrintSettings):longint;

  { Zeile entfernt  }
  function gtk_print_settings_get_resolution_y(settings:PGtkPrintSettings):longint;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_resolution_xy(settings:PGtkPrintSettings; resolution_x:longint; resolution_y:longint);

  { Zeile entfernt  }
  function gtk_print_settings_get_printer_lpi(settings:PGtkPrintSettings):double;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_printer_lpi(settings:PGtkPrintSettings; lpi:double);

  { Zeile entfernt  }
  function gtk_print_settings_get_scale(settings:PGtkPrintSettings):double;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_scale(settings:PGtkPrintSettings; scale:double);

  { Zeile entfernt  }
  function gtk_print_settings_get_print_pages(settings:PGtkPrintSettings):GtkPrintPages;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_print_pages(settings:PGtkPrintSettings; pages:GtkPrintPages);

  { Zeile entfernt  }
  function gtk_print_settings_get_page_ranges(settings:PGtkPrintSettings; num_ranges:Plongint):^GtkPageRange;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_page_ranges(settings:PGtkPrintSettings; page_ranges:PGtkPageRange; num_ranges:longint);

  { Zeile entfernt  }
  function gtk_print_settings_get_page_set(settings:PGtkPrintSettings):GtkPageSet;

  { Zeile entfernt  }
  procedure gtk_print_settings_set_page_set(settings:PGtkPrintSettings; page_set:GtkPageSet);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_default_source(settings:PGtkPrintSettings):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_default_source(settings:PGtkPrintSettings; default_source:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_media_type(settings:PGtkPrintSettings):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_media_type(settings:PGtkPrintSettings; media_type:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_dither(settings:PGtkPrintSettings):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_dither(settings:PGtkPrintSettings; dither:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_finishings(settings:PGtkPrintSettings):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_finishings(settings:PGtkPrintSettings; finishings:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_settings_get_output_bin(settings:PGtkPrintSettings):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_print_settings_set_output_bin(settings:PGtkPrintSettings; output_bin:Pchar);

  { Zeile entfernt  }
  function gtk_print_settings_to_gvariant(settings:PGtkPrintSettings):^GVariant;

  { Zeile entfernt  }
  function gtk_print_settings_new_from_gvariant(variant:PGVariant):^GtkPrintSettings;

  { Zeile entfernt  }
{$endif}
  { __GTK_PRINT_SETTINGS_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PRINT_SETTINGS : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINT_SETTINGS:=gtk_print_settings_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_SETTINGS(obj : longint) : longint;
  begin
    GTK_PRINT_SETTINGS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_SETTINGS,GtkPrintSettings);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_SETTINGS(obj : longint) : longint;
  begin
    GTK_IS_PRINT_SETTINGS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_SETTINGS);
  end;

  function gtk_print_settings_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_new:PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_copy(other:PGtkPrintSettings):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_new_from_file(file_name:Pchar; error:PPGError):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_load_file(settings:PGtkPrintSettings; file_name:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_to_file(settings:PGtkPrintSettings; file_name:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_load_key_file(settings:PGtkPrintSettings; key_file:PGKeyFile; group_name:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_to_key_file(settings:PGtkPrintSettings; key_file:PGKeyFile; group_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_has_key(settings:PGtkPrintSettings; key:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get(settings:PGtkPrintSettings; key:Pchar):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set(settings:PGtkPrintSettings; key:Pchar; value:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_unset(settings:PGtkPrintSettings; key:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_foreach(settings:PGtkPrintSettings; func:GtkPrintSettingsFunc; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_bool(settings:PGtkPrintSettings; key:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_bool(settings:PGtkPrintSettings; key:Pchar; value:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_double(settings:PGtkPrintSettings; key:Pchar):double;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_double_with_default(settings:PGtkPrintSettings; key:Pchar; def:double):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_double(settings:PGtkPrintSettings; key:Pchar; value:double);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_length(settings:PGtkPrintSettings; key:Pchar; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_length(settings:PGtkPrintSettings; key:Pchar; value:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_int(settings:PGtkPrintSettings; key:Pchar):longint;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_int_with_default(settings:PGtkPrintSettings; key:Pchar; def:longint):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_int(settings:PGtkPrintSettings; key:Pchar; value:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_printer(settings:PGtkPrintSettings):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_printer(settings:PGtkPrintSettings; printer:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_orientation(settings:PGtkPrintSettings):GtkPageOrientation;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_orientation(settings:PGtkPrintSettings; orientation:GtkPageOrientation);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_paper_size(settings:PGtkPrintSettings):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_paper_size(settings:PGtkPrintSettings; paper_size:PGtkPaperSize);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_paper_width(settings:PGtkPrintSettings; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_paper_width(settings:PGtkPrintSettings; width:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_paper_height(settings:PGtkPrintSettings; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_paper_height(settings:PGtkPrintSettings; height:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_use_color(settings:PGtkPrintSettings):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_use_color(settings:PGtkPrintSettings; use_color:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_collate(settings:PGtkPrintSettings):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_collate(settings:PGtkPrintSettings; collate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_reverse(settings:PGtkPrintSettings):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_reverse(settings:PGtkPrintSettings; reverse:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_duplex(settings:PGtkPrintSettings):GtkPrintDuplex;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_duplex(settings:PGtkPrintSettings; duplex:GtkPrintDuplex);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_quality(settings:PGtkPrintSettings):GtkPrintQuality;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_quality(settings:PGtkPrintSettings; quality:GtkPrintQuality);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_n_copies(settings:PGtkPrintSettings):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_n_copies(settings:PGtkPrintSettings; num_copies:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_number_up(settings:PGtkPrintSettings):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_number_up(settings:PGtkPrintSettings; number_up:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_number_up_layout(settings:PGtkPrintSettings):GtkNumberUpLayout;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_number_up_layout(settings:PGtkPrintSettings; number_up_layout:GtkNumberUpLayout);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_resolution(settings:PGtkPrintSettings):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_resolution(settings:PGtkPrintSettings; resolution:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_resolution_x(settings:PGtkPrintSettings):longint;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_resolution_y(settings:PGtkPrintSettings):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_resolution_xy(settings:PGtkPrintSettings; resolution_x:longint; resolution_y:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_printer_lpi(settings:PGtkPrintSettings):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_printer_lpi(settings:PGtkPrintSettings; lpi:double);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_scale(settings:PGtkPrintSettings):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_scale(settings:PGtkPrintSettings; scale:double);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_print_pages(settings:PGtkPrintSettings):GtkPrintPages;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_print_pages(settings:PGtkPrintSettings; pages:GtkPrintPages);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_page_ranges(settings:PGtkPrintSettings; num_ranges:Plongint):PGtkPageRange;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_page_ranges(settings:PGtkPrintSettings; page_ranges:PGtkPageRange; num_ranges:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_page_set(settings:PGtkPrintSettings):GtkPageSet;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_page_set(settings:PGtkPrintSettings; page_set:GtkPageSet);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_default_source(settings:PGtkPrintSettings):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_default_source(settings:PGtkPrintSettings; default_source:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_media_type(settings:PGtkPrintSettings):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_media_type(settings:PGtkPrintSettings; media_type:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_dither(settings:PGtkPrintSettings):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_dither(settings:PGtkPrintSettings; dither:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_finishings(settings:PGtkPrintSettings):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_finishings(settings:PGtkPrintSettings; finishings:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_get_output_bin(settings:PGtkPrintSettings):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_settings_set_output_bin(settings:PGtkPrintSettings; output_bin:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_to_gvariant(settings:PGtkPrintSettings):PGVariant;
  begin
    { You must implement this function }
  end;
  function gtk_print_settings_new_from_gvariant(variant:PGVariant):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;

