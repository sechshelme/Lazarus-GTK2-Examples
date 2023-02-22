
  Type
  Pchar  = ^char;
  Pdouble  = ^double;
  PGList  = ^GList;
  PGtkPageSetup  = ^GtkPageSetup;
  PGtkPaperSize  = ^GtkPaperSize;
  PGtkPrintBackend  = ^GtkPrintBackend;
  PGtkPrinter  = ^GtkPrinter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GtkPrinter
   * Copyright (C) 2006 John (J5) Palmieri <johnp@redhat.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_PRINTER_H__}
{$define __GTK_PRINTER_H__}  
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtk.h>}

  { was #define dname def_expr }
  function GTK_TYPE_PRINT_CAPABILITIES : longint; { return type might be wrong }

  { Note, this type is manually registered with GObject in gtkprinter.c
   * If you add any flags, update the registration as well!
    }
  {*
   * GtkPrintCapabilities:
   * @GTK_PRINT_CAPABILITY_PAGE_SET: Print dialog will offer printing even/odd pages.
   * @GTK_PRINT_CAPABILITY_COPIES: Print dialog will allow to print multiple copies.
   * @GTK_PRINT_CAPABILITY_COLLATE: Print dialog will allow to collate multiple copies.
   * @GTK_PRINT_CAPABILITY_REVERSE: Print dialog will allow to print pages in reverse order.
   * @GTK_PRINT_CAPABILITY_SCALE: Print dialog will allow to scale the output.
   * @GTK_PRINT_CAPABILITY_GENERATE_PDF: The program will send the document to
   *   the printer in PDF format
   * @GTK_PRINT_CAPABILITY_GENERATE_PS: The program will send the document to
   *   the printer in Postscript format
   * @GTK_PRINT_CAPABILITY_PREVIEW: Print dialog will offer a preview
   * @GTK_PRINT_CAPABILITY_NUMBER_UP: Print dialog will offer printing multiple
   *   pages per sheet
   * @GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT: Print dialog will allow to rearrange
   *   pages when printing multiple pages per sheet
   *
   * Specifies which features the print dialog should offer.
   *
   * If neither %GTK_PRINT_CAPABILITY_GENERATE_PDF nor
   * %GTK_PRINT_CAPABILITY_GENERATE_PS is specified, GTK assumes that all
   * formats are supported.
    }

  type
    GtkPrintCapabilities = (GTK_PRINT_CAPABILITY_PAGE_SET := 1 shl 0,
      GTK_PRINT_CAPABILITY_COPIES := 1 shl 1,GTK_PRINT_CAPABILITY_COLLATE := 1 shl 2,
      GTK_PRINT_CAPABILITY_REVERSE := 1 shl 3,GTK_PRINT_CAPABILITY_SCALE := 1 shl 4,
      GTK_PRINT_CAPABILITY_GENERATE_PDF := 1 shl 5,
      GTK_PRINT_CAPABILITY_GENERATE_PS := 1 shl 6,
      GTK_PRINT_CAPABILITY_PREVIEW := 1 shl 7,GTK_PRINT_CAPABILITY_NUMBER_UP := 1 shl 8,
      GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT := 1 shl 9
      );
(* error 
GType gtk_print_capabilities_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  { was #define dname def_expr }
  function GTK_TYPE_PRINTER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINTER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINTER(obj : longint) : longint;  


  type
    _GtkPrinter = GtkPrinter;
    _GtkPrintBackend = GtkPrintBackend;
(* error 
GType                    gtk_printer_get_type              (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_printer_new(name:Pchar; backend:PGtkPrintBackend; virtual_:gboolean):^GtkPrinter;

  function gtk_printer_get_backend(printer:PGtkPrinter):^GtkPrintBackend;

(* Const before type ignored *)
  function gtk_printer_get_name(printer:PGtkPrinter):^char;

(* Const before type ignored *)
  function gtk_printer_get_state_message(printer:PGtkPrinter):^char;

(* Const before type ignored *)
  function gtk_printer_get_description(printer:PGtkPrinter):^char;

(* Const before type ignored *)
  function gtk_printer_get_location(printer:PGtkPrinter):^char;

(* Const before type ignored *)
  function gtk_printer_get_icon_name(printer:PGtkPrinter):^char;

  function gtk_printer_get_job_count(printer:PGtkPrinter):longint;

  function gtk_printer_is_active(printer:PGtkPrinter):gboolean;

  function gtk_printer_is_paused(printer:PGtkPrinter):gboolean;

  function gtk_printer_is_accepting_jobs(printer:PGtkPrinter):gboolean;

  function gtk_printer_is_virtual(printer:PGtkPrinter):gboolean;

  function gtk_printer_is_default(printer:PGtkPrinter):gboolean;

  function gtk_printer_accepts_pdf(printer:PGtkPrinter):gboolean;

  function gtk_printer_accepts_ps(printer:PGtkPrinter):gboolean;

  function gtk_printer_list_papers(printer:PGtkPrinter):^GList;

  function gtk_printer_get_default_page_size(printer:PGtkPrinter):^GtkPageSetup;

  function gtk_printer_compare(a:PGtkPrinter; b:PGtkPrinter):longint;

  function gtk_printer_has_details(printer:PGtkPrinter):gboolean;

  procedure gtk_printer_request_details(printer:PGtkPrinter);

  function gtk_printer_get_capabilities(printer:PGtkPrinter):GtkPrintCapabilities;

  function gtk_printer_get_hard_margins(printer:PGtkPrinter; top:Pdouble; bottom:Pdouble; left:Pdouble; right:Pdouble):gboolean;

  function gtk_printer_get_hard_margins_for_paper_size(printer:PGtkPrinter; paper_size:PGtkPaperSize; top:Pdouble; bottom:Pdouble; left:Pdouble; 
             right:Pdouble):gboolean;

  {*
   * GtkPrinterFunc:
   * @printer: a `GtkPrinter`
   * @data: (closure): user data passed to gtk_enumerate_printers()
   *
   * The type of function passed to gtk_enumerate_printers().
   *
   * Note that you need to ref @printer, if you want to keep
   * a reference to it after the function has returned.
   *
   * Returns: %TRUE to stop the enumeration, %FALSE to continue
    }

  type

    GtkPrinterFunc = function (printer:PGtkPrinter; data:gpointer):gboolean;cdecl;

  procedure gtk_enumerate_printers(func:GtkPrinterFunc; data:gpointer; destroy:GDestroyNotify; wait:gboolean);

{$endif}
  { __GTK_PRINTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PRINT_CAPABILITIES : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINT_CAPABILITIES:=gtk_print_capabilities_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_PRINTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINTER:=gtk_printer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINTER(obj : longint) : longint;
  begin
    GTK_PRINTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINTER,GtkPrinter);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINTER(obj : longint) : longint;
  begin
    GTK_IS_PRINTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINTER);
  end;

  function gtk_printer_new(name:Pchar; backend:PGtkPrintBackend; virtual_:gboolean):PGtkPrinter;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_backend(printer:PGtkPrinter):PGtkPrintBackend;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_name(printer:PGtkPrinter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_state_message(printer:PGtkPrinter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_description(printer:PGtkPrinter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_location(printer:PGtkPrinter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_icon_name(printer:PGtkPrinter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_job_count(printer:PGtkPrinter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_printer_is_active(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_is_paused(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_is_accepting_jobs(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_is_virtual(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_is_default(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_accepts_pdf(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_accepts_ps(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_list_papers(printer:PGtkPrinter):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_default_page_size(printer:PGtkPrinter):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  function gtk_printer_compare(a:PGtkPrinter; b:PGtkPrinter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_printer_has_details(printer:PGtkPrinter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_printer_request_details(printer:PGtkPrinter);
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_capabilities(printer:PGtkPrinter):GtkPrintCapabilities;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_hard_margins(printer:PGtkPrinter; top:Pdouble; bottom:Pdouble; left:Pdouble; right:Pdouble):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_printer_get_hard_margins_for_paper_size(printer:PGtkPrinter; paper_size:PGtkPaperSize; top:Pdouble; bottom:Pdouble; left:Pdouble; 
             right:Pdouble):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_enumerate_printers(func:GtkPrinterFunc; data:gpointer; destroy:GDestroyNotify; wait:gboolean);
  begin
    { You must implement this function }
  end;

