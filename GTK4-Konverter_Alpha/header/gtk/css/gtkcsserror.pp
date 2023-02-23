
unit gtkcsserror;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcsserror.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcsserror.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CSS_ERROR_H__}
{$define __GTK_CSS_ERROR_H__}
{$include <glib.h>}
{$include <gdk/gdkversionmacros.h>}



function GTK_CSS_PARSER_ERROR : longint; { return type might be wrong }


function gtk_css_parser_error_quark:TGQuark;cdecl;external;

function GTK_CSS_PARSER_WARNING : longint; { return type might be wrong }


function gtk_css_parser_warning_quark:TGQuark;cdecl;external;

{$endif}


implementation

function GTK_CSS_PARSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_CSS_PARSER_ERROR:=gtk_css_parser_error_quark;
  end;

function GTK_CSS_PARSER_WARNING : longint; { return type might be wrong }
  begin
    GTK_CSS_PARSER_WARNING:=gtk_css_parser_warning_quark;
  end;


end.
