
unit gtkprintcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintcontext.h
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
Pcairo_t  = ^cairo_t;
Pdouble  = ^double;
PGtkPageSetup  = ^GtkPageSetup;
PGtkPrintContext  = ^GtkPrintContext;
PPangoContext  = ^PangoContext;
PPangoFontMap  = ^PangoFontMap;
PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PRINT_CONTEXT_H__}
{$define __GTK_PRINT_CONTEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <pango/pango.h>}
{$include <gtk/gtkpagesetup.h>}

type

function GTK_TYPE_PRINT_CONTEXT : longint; { return type might be wrong }

function GTK_PRINT_CONTEXT(obj : longint) : longint;

function GTK_IS_PRINT_CONTEXT(obj : longint) : longint;


function gtk_print_context_get_type:TGType;cdecl;external;


function gtk_print_context_get_cairo_context(context:PGtkPrintContext):Pcairo_t;cdecl;external;

function gtk_print_context_get_page_setup(context:PGtkPrintContext):PGtkPageSetup;cdecl;external;

function gtk_print_context_get_width(context:PGtkPrintContext):Tdouble;cdecl;external;

function gtk_print_context_get_height(context:PGtkPrintContext):Tdouble;cdecl;external;

function gtk_print_context_get_dpi_x(context:PGtkPrintContext):Tdouble;cdecl;external;

function gtk_print_context_get_dpi_y(context:PGtkPrintContext):Tdouble;cdecl;external;

function gtk_print_context_get_hard_margins(context:PGtkPrintContext; top:Pdouble; bottom:Pdouble; left:Pdouble; right:Pdouble):Tgboolean;cdecl;external;


function gtk_print_context_get_pango_fontmap(context:PGtkPrintContext):PPangoFontMap;cdecl;external;

function gtk_print_context_create_pango_context(context:PGtkPrintContext):PPangoContext;cdecl;external;

function gtk_print_context_create_pango_layout(context:PGtkPrintContext):PPangoLayout;cdecl;external;


procedure gtk_print_context_set_cairo_context(context:PGtkPrintContext; cr:Pcairo_t; dpi_x:Tdouble; dpi_y:Tdouble);cdecl;external;

{$endif}


implementation

function GTK_TYPE_PRINT_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_CONTEXT:=gtk_print_context_get_type;
  end;

function GTK_PRINT_CONTEXT(obj : longint) : longint;
begin
  GTK_PRINT_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_CONTEXT,GtkPrintContext);
end;

function GTK_IS_PRINT_CONTEXT(obj : longint) : longint;
begin
  GTK_IS_PRINT_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_CONTEXT);
end;


end.
