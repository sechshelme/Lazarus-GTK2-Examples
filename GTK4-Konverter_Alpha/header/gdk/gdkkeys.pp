
unit gdkkeys;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkkeys.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkkeys.h
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
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_KEYS_H__}
{$define __GDK_KEYS_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}



function gdk_keyval_name(keyval:Tguint):Pchar;cdecl;external;

function gdk_keyval_from_name(keyval_name:Pchar):Tguint;cdecl;external;

procedure gdk_keyval_convert_case(symbol:Tguint; lower:Pguint; upper:Pguint);cdecl;external;

function gdk_keyval_to_upper(keyval:Tguint):Tguint;cdecl;external;

function gdk_keyval_to_lower(keyval:Tguint):Tguint;cdecl;external;

function gdk_keyval_is_upper(keyval:Tguint):Tgboolean;cdecl;external;

function gdk_keyval_is_lower(keyval:Tguint):Tgboolean;cdecl;external;

function gdk_keyval_to_unicode(keyval:Tguint):Tguint32;cdecl;external;

function gdk_unicode_to_keyval(wc:Tguint32):Tguint;cdecl;external;

{$endif}


implementation


end.
