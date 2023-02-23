
unit gtkprinter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/unix-print/gtk/gtkprinter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/unix-print/gtk/gtkprinter.h
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
Pdouble  = ^double;
PGList  = ^GList;
PGtkPageSetup  = ^GtkPageSetup;
PGtkPaperSize  = ^GtkPaperSize;
PGtkPrintBackend  = ^GtkPrintBackend;
PGtkPrintCapabilities  = ^GtkPrintCapabilities;
PGtkPrinter  = ^GtkPrinter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PRINTER_H__}
{$define __GTK_PRINTER_H__}
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtk.h>}


function GTK_TYPE_PRINT_CAPABILITIES : longint; { return type might be wrong }



type
  PGtkPrintCapabilities = ^TGtkPrintCapabilities;
  TGtkPrintCapabilities = (GTK_PRINT_CAPABILITY_PAGE_SET := 1 shl 0,GTK_PRINT_CAPABILITY_COPIES := 1 shl 1,
    GTK_PRINT_CAPABILITY_COLLATE := 1 shl 2,GTK_PRINT_CAPABILITY_REVERSE := 1 shl 3,
    GTK_PRINT_CAPABILITY_SCALE := 1 shl 4,GTK_PRINT_CAPABILITY_GENERATE_PDF := 1 shl 5,
    GTK_PRINT_CAPABILITY_GENERATE_PS := 1 shl 6,
    GTK_PRINT_CAPABILITY_PREVIEW := 1 shl 7,GTK_PRINT_CAPABILITY_NUMBER_UP := 1 shl 8,
    GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT := 1 shl 9
    );


function gtk_print_capabilities_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINTER : longint; { return type might be wrong }

function GTK_PRINTER(obj : longint) : longint;

function GTK_IS_PRINTER(obj : longint) : longint;

type


function gtk_printer_get_type:TGType;cdecl;external;

function gtk_printer_new(name:Pchar; backend:PGtkPrintBackend; virtual_:Tgboolean):PGtkPrinter;cdecl;external;

function gtk_printer_get_backend(printer:PGtkPrinter):PGtkPrintBackend;cdecl;external;

function gtk_printer_get_name(printer:PGtkPrinter):Pchar;cdecl;external;

function gtk_printer_get_state_message(printer:PGtkPrinter):Pchar;cdecl;external;

function gtk_printer_get_description(printer:PGtkPrinter):Pchar;cdecl;external;

function gtk_printer_get_location(printer:PGtkPrinter):Pchar;cdecl;external;

function gtk_printer_get_icon_name(printer:PGtkPrinter):Pchar;cdecl;external;

function gtk_printer_get_job_count(printer:PGtkPrinter):longint;cdecl;external;

function gtk_printer_is_active(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_is_paused(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_is_accepting_jobs(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_is_virtual(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_is_default(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_accepts_pdf(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_accepts_ps(printer:PGtkPrinter):Tgboolean;cdecl;external;

function gtk_printer_list_papers(printer:PGtkPrinter):PGList;cdecl;external;

function gtk_printer_get_default_page_size(printer:PGtkPrinter):PGtkPageSetup;cdecl;external;

function gtk_printer_compare(a:PGtkPrinter; b:PGtkPrinter):longint;cdecl;external;

function gtk_printer_has_details(printer:PGtkPrinter):Tgboolean;cdecl;external;

procedure gtk_printer_request_details(printer:PGtkPrinter);cdecl;external;

function gtk_printer_get_capabilities(printer:PGtkPrinter):TGtkPrintCapabilities;cdecl;external;

function gtk_printer_get_hard_margins(printer:PGtkPrinter; top:Pdouble; bottom:Pdouble; left:Pdouble; right:Pdouble):Tgboolean;cdecl;external;

function gtk_printer_get_hard_margins_for_paper_size(printer:PGtkPrinter; paper_size:PGtkPaperSize; top:Pdouble; bottom:Pdouble; left:Pdouble; 
           right:Pdouble):Tgboolean;cdecl;external;

type

  TGtkPrinterFunc = function (printer:PGtkPrinter; data:Tgpointer):Tgboolean;cdecl;


procedure gtk_enumerate_printers(func:TGtkPrinterFunc; data:Tgpointer; destroy:TGDestroyNotify; wait:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_PRINT_CAPABILITIES : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_CAPABILITIES:=gtk_print_capabilities_get_type;
  end;

function GTK_TYPE_PRINTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINTER:=gtk_printer_get_type;
  end;

function GTK_PRINTER(obj : longint) : longint;
begin
  GTK_PRINTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINTER,GtkPrinter);
end;

function GTK_IS_PRINTER(obj : longint) : longint;
begin
  GTK_IS_PRINTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINTER);
end;


end.
