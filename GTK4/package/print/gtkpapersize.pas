unit gtkpapersize;

interface

uses
  glib2, common_GTK, gtkenums;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

const
  GTK_PAPER_NAME_A3 = 'iso_a3';
  GTK_PAPER_NAME_A4 = 'iso_a4';
  GTK_PAPER_NAME_A5 = 'iso_a5';
  GTK_PAPER_NAME_B5 = 'iso_b5';
  GTK_PAPER_NAME_LETTER = 'na_letter';
  GTK_PAPER_NAME_EXECUTIVE = 'na_executive';
  GTK_PAPER_NAME_LEGAL = 'na_legal';

type
  TGtkPaperSize = record // _GtkPaperSize
  end;
  PGtkPaperSize = ^TGtkPaperSize;

function gtk_paper_size_get_type: TGType; cdecl; external gtklib;
function gtk_paper_size_new(Name: PChar): PGtkPaperSize; cdecl; external gtklib;
function gtk_paper_size_new_from_ppd(ppd_name: PChar; ppd_display_name: PChar; Width: Tdouble; Height: Tdouble): PGtkPaperSize; cdecl; external gtklib;
function gtk_paper_size_new_from_ipp(ipp_name: PChar; Width: Tdouble; Height: Tdouble): PGtkPaperSize; cdecl; external gtklib;
function gtk_paper_size_new_custom(Name: PChar; display_name: PChar; Width: Tdouble; Height: Tdouble; unit_: TGtkUnit): PGtkPaperSize; cdecl; external gtklib;
function gtk_paper_size_copy(other: PGtkPaperSize): PGtkPaperSize; cdecl; external gtklib;
procedure gtk_paper_size_free(size: PGtkPaperSize); cdecl; external gtklib;
function gtk_paper_size_is_equal(size1: PGtkPaperSize; size2: PGtkPaperSize): Tgboolean; cdecl; external gtklib;
function gtk_paper_size_get_paper_sizes(include_custom: Tgboolean): PGList; cdecl; external gtklib;
function gtk_paper_size_get_name(size: PGtkPaperSize): PChar; cdecl; external gtklib;
function gtk_paper_size_get_display_name(size: PGtkPaperSize): PChar; cdecl; external gtklib;
function gtk_paper_size_get_ppd_name(size: PGtkPaperSize): PChar; cdecl; external gtklib;
function gtk_paper_size_get_width(size: PGtkPaperSize; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_paper_size_get_height(size: PGtkPaperSize; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_paper_size_is_custom(size: PGtkPaperSize): Tgboolean; cdecl; external gtklib;
function gtk_paper_size_is_ipp(size: PGtkPaperSize): Tgboolean; cdecl; external gtklib;
procedure gtk_paper_size_set_size(size: PGtkPaperSize; Width: Tdouble; Height: Tdouble; unit_: TGtkUnit); cdecl; external gtklib;
function gtk_paper_size_get_default_top_margin(size: PGtkPaperSize; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_paper_size_get_default_bottom_margin(size: PGtkPaperSize; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_paper_size_get_default_left_margin(size: PGtkPaperSize; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_paper_size_get_default_right_margin(size: PGtkPaperSize; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_paper_size_get_default: PChar; cdecl; external gtklib;
function gtk_paper_size_new_from_key_file(key_file: PGKeyFile; group_name: PChar; error: PPGError): PGtkPaperSize; cdecl; external gtklib;
procedure gtk_paper_size_to_key_file(size: PGtkPaperSize; key_file: PGKeyFile; group_name: PChar); cdecl; external gtklib;
function gtk_paper_size_new_from_gvariant(variant: PGVariant): PGtkPaperSize; cdecl; external gtklib;
function gtk_paper_size_to_gvariant(paper_size: PGtkPaperSize): PGVariant; cdecl; external gtklib;

// === Konventiert am: 24-7-24 15:55:57 ===

function GTK_TYPE_PAPER_SIZE: TGType;

implementation

function GTK_TYPE_PAPER_SIZE: TGType;
begin
  GTK_TYPE_PAPER_SIZE := gtk_paper_size_get_type;
end;



end.
