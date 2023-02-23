
unit gtkcssenumtypes;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcssenumtypes.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/css/gtkcssenumtypes.h
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



{$ifndef __GTK_CSS_ENUM_TYPES_H__}
{$define __GTK_CSS_ENUM_TYPES_H__}
{$if !defined (__GTK_CSS_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/css/gtkcss.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdkversionmacros.h>}




function GTK_TYPE_CSS_PARSER_ERROR : longint; { return type might be wrong }


function GTK_TYPE_CSS_PARSER_WARNING : longint; { return type might be wrong }


{$endif}



implementation

function GTK_TYPE_CSS_PARSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_CSS_PARSER_ERROR:=gtk_css_parser_error_get_type;
  end;

function GTK_TYPE_CSS_PARSER_WARNING : longint; { return type might be wrong }
  begin
    GTK_TYPE_CSS_PARSER_WARNING:=gtk_css_parser_warning_get_type;
  end;


end.
