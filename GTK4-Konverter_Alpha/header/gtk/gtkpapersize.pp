
unit gtkpapersize;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpapersize.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpapersize.h
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
PGList  = ^GList;
PGtkPaperSize  = ^GtkPaperSize;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PAPER_SIZE_H__}
{$define __GTK_PAPER_SIZE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}

type

function GTK_TYPE_PAPER_SIZE : longint; { return type might be wrong }



const
  GTK_PAPER_NAME_A3 = 'iso_a3';  

  GTK_PAPER_NAME_A4 = 'iso_a4';  

  GTK_PAPER_NAME_A5 = 'iso_a5';  

  GTK_PAPER_NAME_B5 = 'iso_b5';  

  GTK_PAPER_NAME_LETTER = 'na_letter';  

  GTK_PAPER_NAME_EXECUTIVE = 'na_executive';  

  GTK_PAPER_NAME_LEGAL = 'na_legal';  


function gtk_paper_size_get_type:TGType;cdecl;external;

function gtk_paper_size_new(name:Pchar):PGtkPaperSize;cdecl;external;

function gtk_paper_size_new_from_ppd(ppd_name:Pchar; ppd_display_name:Pchar; width:Tdouble; height:Tdouble):PGtkPaperSize;cdecl;external;

function gtk_paper_size_new_from_ipp(ipp_name:Pchar; width:Tdouble; height:Tdouble):PGtkPaperSize;cdecl;external;

function gtk_paper_size_new_custom(name:Pchar; display_name:Pchar; width:Tdouble; height:Tdouble; unit:TGtkUnit):PGtkPaperSize;cdecl;external;

function gtk_paper_size_copy(other:PGtkPaperSize):PGtkPaperSize;cdecl;external;

procedure gtk_paper_size_free(size:PGtkPaperSize);cdecl;external;

function gtk_paper_size_is_equal(size1:PGtkPaperSize; size2:PGtkPaperSize):Tgboolean;cdecl;external;

function gtk_paper_size_get_paper_sizes(include_custom:Tgboolean):PGList;cdecl;external;


function gtk_paper_size_get_name(size:PGtkPaperSize):Pchar;cdecl;external;

function gtk_paper_size_get_display_name(size:PGtkPaperSize):Pchar;cdecl;external;

function gtk_paper_size_get_ppd_name(size:PGtkPaperSize):Pchar;cdecl;external;

function gtk_paper_size_get_width(size:PGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_paper_size_get_height(size:PGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_paper_size_is_custom(size:PGtkPaperSize):Tgboolean;cdecl;external;

function gtk_paper_size_is_ipp(size:PGtkPaperSize):Tgboolean;cdecl;external;


procedure gtk_paper_size_set_size(size:PGtkPaperSize; width:Tdouble; height:Tdouble; unit:TGtkUnit);cdecl;external;

function gtk_paper_size_get_default_top_margin(size:PGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_paper_size_get_default_bottom_margin(size:PGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_paper_size_get_default_left_margin(size:PGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_paper_size_get_default_right_margin(size:PGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_paper_size_get_default:Pchar;cdecl;external;

function gtk_paper_size_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):PGtkPaperSize;cdecl;external;

procedure gtk_paper_size_to_key_file(size:PGtkPaperSize; key_file:PGKeyFile; group_name:Pchar);cdecl;external;

function gtk_paper_size_new_from_gvariant(variant:PGVariant):PGtkPaperSize;cdecl;external;

function gtk_paper_size_to_gvariant(paper_size:PGtkPaperSize):PGVariant;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PAPER_SIZE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAPER_SIZE:=gtk_paper_size_get_type;
  end;


end.
