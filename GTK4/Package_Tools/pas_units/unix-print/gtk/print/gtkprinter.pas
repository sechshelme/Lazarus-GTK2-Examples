unit gtkprinter;

interface

uses
  glib2, common_GTK, gtkpagesetup, gtkpapersize;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkPrintCapabilities = ^TGtkPrintCapabilities;
  TGtkPrintCapabilities = longint;

const
  GTK_PRINT_CAPABILITY_PAGE_SET = 1 shl 0;
  GTK_PRINT_CAPABILITY_COPIES = 1 shl 1;
  GTK_PRINT_CAPABILITY_COLLATE = 1 shl 2;
  GTK_PRINT_CAPABILITY_REVERSE = 1 shl 3;
  GTK_PRINT_CAPABILITY_SCALE = 1 shl 4;
  GTK_PRINT_CAPABILITY_GENERATE_PDF = 1 shl 5;
  GTK_PRINT_CAPABILITY_GENERATE_PS = 1 shl 6;
  GTK_PRINT_CAPABILITY_PREVIEW = 1 shl 7;
  GTK_PRINT_CAPABILITY_NUMBER_UP = 1 shl 8;
  GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT = 1 shl 9;

function gtk_print_capabilities_get_type: TGType; cdecl; external gtklib;

type
  TGtkPrinter = record
  end;
  PGtkPrinter = ^TGtkPrinter;

  TGtkPrintBackend = record
  end;
  PGtkPrintBackend = ^TGtkPrintBackend;

function gtk_printer_get_type: TGType; cdecl; external gtklib;
function gtk_printer_new(Name: PChar; backend: PGtkPrintBackend; virtual_: Tgboolean): PGtkPrinter; cdecl; external gtklib;
function gtk_printer_get_backend(printer: PGtkPrinter): PGtkPrintBackend; cdecl; external gtklib;
function gtk_printer_get_name(printer: PGtkPrinter): PChar; cdecl; external gtklib;
function gtk_printer_get_state_message(printer: PGtkPrinter): PChar; cdecl; external gtklib;
function gtk_printer_get_description(printer: PGtkPrinter): PChar; cdecl; external gtklib;
function gtk_printer_get_location(printer: PGtkPrinter): PChar; cdecl; external gtklib;
function gtk_printer_get_icon_name(printer: PGtkPrinter): PChar; cdecl; external gtklib;
function gtk_printer_get_job_count(printer: PGtkPrinter): longint; cdecl; external gtklib;
function gtk_printer_is_active(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_is_paused(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_is_accepting_jobs(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_is_virtual(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_is_default(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_accepts_pdf(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_accepts_ps(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
function gtk_printer_list_papers(printer: PGtkPrinter): PGList; cdecl; external gtklib;
function gtk_printer_get_default_page_size(printer: PGtkPrinter): PGtkPageSetup; cdecl; external gtklib;
function gtk_printer_compare(a: PGtkPrinter; b: PGtkPrinter): longint; cdecl; external gtklib;
function gtk_printer_has_details(printer: PGtkPrinter): Tgboolean; cdecl; external gtklib;
procedure gtk_printer_request_details(printer: PGtkPrinter); cdecl; external gtklib;
function gtk_printer_get_capabilities(printer: PGtkPrinter): TGtkPrintCapabilities; cdecl; external gtklib;
function gtk_printer_get_hard_margins(printer: PGtkPrinter; top: Pdouble; bottom: Pdouble; left: Pdouble; right: Pdouble): Tgboolean; cdecl; external gtklib;
function gtk_printer_get_hard_margins_for_paper_size(printer: PGtkPrinter; paper_size: PGtkPaperSize; top: Pdouble; bottom: Pdouble; left: Pdouble;
  right: Pdouble): Tgboolean; cdecl; external gtklib;

type
  TGtkPrinterFunc = function(printer: PGtkPrinter; Data: Tgpointer): Tgboolean; cdecl;

procedure gtk_enumerate_printers(func: TGtkPrinterFunc; Data: Tgpointer; Destroy: TGDestroyNotify; wait: Tgboolean); cdecl; external gtklib;



function GTK_TYPE_PRINT_CAPABILITIES: TGType;

// === Konventiert am: 3-8-24 13:41:06 ===

function GTK_TYPE_PRINTER: TGType;
function GTK_PRINTER(obj: Pointer): PGtkPrinter;
function GTK_IS_PRINTER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_PRINTER: TGType;
begin
  GTK_TYPE_PRINTER := gtk_printer_get_type;
end;

function GTK_PRINTER(obj: Pointer): PGtkPrinter;
begin
  Result := PGtkPrinter(g_type_check_instance_cast(obj, GTK_TYPE_PRINTER));
end;

function GTK_IS_PRINTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PRINTER);
end;

// ====

function GTK_TYPE_PRINT_CAPABILITIES: TGType;
begin
  GTK_TYPE_PRINT_CAPABILITIES := gtk_print_capabilities_get_type;
end;




end.
