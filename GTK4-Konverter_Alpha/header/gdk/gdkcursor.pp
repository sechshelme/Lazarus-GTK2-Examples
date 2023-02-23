
unit gdkcursor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcursor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcursor.h
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
PGdkCursor  = ^GdkCursor;
PGdkTexture  = ^GdkTexture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_CURSOR_H__}
{$define __GDK_CURSOR_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_CURSOR : longint; { return type might be wrong }

function GDK_CURSOR(object : longint) : longint;

function GDK_IS_CURSOR(object : longint) : longint;



function gdk_cursor_get_type:TGType;cdecl;external;

function gdk_cursor_new_from_texture(texture:PGdkTexture; hotspot_x:longint; hotspot_y:longint; fallback:PGdkCursor):PGdkCursor;cdecl;external;

function gdk_cursor_new_from_name(name:Pchar; fallback:PGdkCursor):PGdkCursor;cdecl;external;

function gdk_cursor_get_fallback(cursor:PGdkCursor):PGdkCursor;cdecl;external;

function gdk_cursor_get_name(cursor:PGdkCursor):Pchar;cdecl;external;

function gdk_cursor_get_texture(cursor:PGdkCursor):PGdkTexture;cdecl;external;

function gdk_cursor_get_hotspot_x(cursor:PGdkCursor):longint;cdecl;external;

function gdk_cursor_get_hotspot_y(cursor:PGdkCursor):longint;cdecl;external;

{$endif}


implementation

function GDK_TYPE_CURSOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_CURSOR:=gdk_cursor_get_type;
  end;

function GDK_CURSOR(object : longint) : longint;
begin
  GDK_CURSOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_CURSOR,GdkCursor);
end;

function GDK_IS_CURSOR(object : longint) : longint;
begin
  GDK_IS_CURSOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_CURSOR);
end;


end.
