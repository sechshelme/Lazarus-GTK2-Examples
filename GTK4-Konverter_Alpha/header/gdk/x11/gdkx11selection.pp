
unit gdkx11selection;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11selection.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11selection.h
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
PGdkDisplay  = ^GdkDisplay;
Pguchar  = ^guchar;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_X11_SELECTION_H__}
{$define __GDK_X11_SELECTION_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}



function gdk_x11_display_text_property_to_text_list(display:PGdkDisplay; encoding:Pchar; format:longint; text:Pguchar; length:longint; 
           list:PPPchar):longint;cdecl;external;

procedure gdk_x11_free_text_list(list:PPchar);cdecl;external;

function gdk_x11_display_string_to_compound_text(display:PGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPguchar; 
           length:Plongint):longint;cdecl;external;

function gdk_x11_display_utf8_to_compound_text(display:PGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPguchar; 
           length:Plongint):Tgboolean;cdecl;external;

procedure gdk_x11_free_compound_text(ctext:Pguchar);cdecl;external;

{$endif}


implementation


end.
