
unit gtkpagesetup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpagesetup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpagesetup.h
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
PGtkPageSetup  = ^GtkPageSetup;
PGtkPaperSize  = ^GtkPaperSize;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PAGE_SETUP_H__}
{$define __GTK_PAGE_SETUP_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpapersize.h>}

type

function GTK_TYPE_PAGE_SETUP : longint; { return type might be wrong }

function GTK_PAGE_SETUP(obj : longint) : longint;

function GTK_IS_PAGE_SETUP(obj : longint) : longint;


function gtk_page_setup_get_type:TGType;cdecl;external;

function gtk_page_setup_new:PGtkPageSetup;cdecl;external;

function gtk_page_setup_copy(other:PGtkPageSetup):PGtkPageSetup;cdecl;external;

function gtk_page_setup_get_orientation(setup:PGtkPageSetup):TGtkPageOrientation;cdecl;external;

procedure gtk_page_setup_set_orientation(setup:PGtkPageSetup; orientation:TGtkPageOrientation);cdecl;external;

function gtk_page_setup_get_paper_size(setup:PGtkPageSetup):PGtkPaperSize;cdecl;external;

procedure gtk_page_setup_set_paper_size(setup:PGtkPageSetup; size:PGtkPaperSize);cdecl;external;

function gtk_page_setup_get_top_margin(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_page_setup_set_top_margin(setup:PGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_page_setup_get_bottom_margin(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_page_setup_set_bottom_margin(setup:PGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_page_setup_get_left_margin(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_page_setup_set_left_margin(setup:PGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_page_setup_get_right_margin(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

procedure gtk_page_setup_set_right_margin(setup:PGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;

procedure gtk_page_setup_set_paper_size_and_default_margins(setup:PGtkPageSetup; size:PGtkPaperSize);cdecl;external;


function gtk_page_setup_get_paper_width(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_page_setup_get_paper_height(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;


function gtk_page_setup_get_page_width(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_page_setup_get_page_height(setup:PGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;


function gtk_page_setup_new_from_file(file_name:Pchar; error:PPGError):PGtkPageSetup;cdecl;external;

function gtk_page_setup_load_file(setup:PGtkPageSetup; file_name:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_page_setup_to_file(setup:PGtkPageSetup; file_name:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_page_setup_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):PGtkPageSetup;cdecl;external;

function gtk_page_setup_load_key_file(setup:PGtkPageSetup; key_file:PGKeyFile; group_name:Pchar; error:PPGError):Tgboolean;cdecl;external;

procedure gtk_page_setup_to_key_file(setup:PGtkPageSetup; key_file:PGKeyFile; group_name:Pchar);cdecl;external;

function gtk_page_setup_to_gvariant(setup:PGtkPageSetup):PGVariant;cdecl;external;

function gtk_page_setup_new_from_gvariant(variant:PGVariant):PGtkPageSetup;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PAGE_SETUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAGE_SETUP:=gtk_page_setup_get_type;
  end;

function GTK_PAGE_SETUP(obj : longint) : longint;
begin
  GTK_PAGE_SETUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PAGE_SETUP,GtkPageSetup);
end;

function GTK_IS_PAGE_SETUP(obj : longint) : longint;
begin
  GTK_IS_PAGE_SETUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PAGE_SETUP);
end;


end.
