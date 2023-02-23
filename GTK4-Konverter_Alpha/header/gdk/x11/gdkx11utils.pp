
unit gdkx11utils;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11utils.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11utils.h
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




{$ifndef __GDK_X11_UTILS_H__}
{$define __GDK_X11_UTILS_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}



function GDK_XID_TO_POINTER(xid : longint) : longint;


function GDK_POINTER_TO_XID(pointer : longint) : longint;


{$endif}


implementation

function GDK_XID_TO_POINTER(xid : longint) : longint;
begin
  GDK_XID_TO_POINTER:=GUINT_TO_POINTER(xid);
end;

function GDK_POINTER_TO_XID(pointer : longint) : longint;
begin
  GDK_POINTER_TO_XID:=GPOINTER_TO_UINT(pointer);
end;


end.
