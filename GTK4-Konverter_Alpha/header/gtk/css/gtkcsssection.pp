
unit gtkcsssection;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcsssection.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcsssection.h
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
PGFile  = ^GFile;
PGString  = ^GString;
PGtkCssLocation  = ^GtkCssLocation;
PGtkCssSection  = ^GtkCssSection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CSS_SECTION_H__}
{$define __GTK_CSS_SECTION_H__}
{$if !defined (__GTK_CSS_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/css/gtkcss.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gdk/gdkversionmacros.h>}
{$include <gtk/css/gtkcsslocation.h>}


function GTK_TYPE_CSS_SECTION : longint; { return type might be wrong }


type


function gtk_css_section_get_type:TGType;cdecl;external;

function gtk_css_section_new(file:PGFile; start:PGtkCssLocation; end:PGtkCssLocation):PGtkCssSection;cdecl;external;

function gtk_css_section_ref(section:PGtkCssSection):PGtkCssSection;cdecl;external;

procedure gtk_css_section_unref(section:PGtkCssSection);cdecl;external;

procedure gtk_css_section_print(section:PGtkCssSection; _string:PGString);cdecl;external;

function gtk_css_section_to_string(section:PGtkCssSection):Pchar;cdecl;external;

function gtk_css_section_get_parent(section:PGtkCssSection):PGtkCssSection;cdecl;external;

function gtk_css_section_get_file(section:PGtkCssSection):PGFile;cdecl;external;

function gtk_css_section_get_start_location(section:PGtkCssSection):PGtkCssLocation;cdecl;external;

function gtk_css_section_get_end_location(section:PGtkCssSection):PGtkCssLocation;cdecl;external;

{$endif}


implementation

function GTK_TYPE_CSS_SECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CSS_SECTION:=gtk_css_section_get_type;
  end;


end.
