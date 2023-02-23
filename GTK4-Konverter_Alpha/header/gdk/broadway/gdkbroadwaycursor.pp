
unit gdkbroadwaycursor;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaycursor.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaycursor.h
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
PGdkBroadwayCursor  = ^GdkBroadwayCursor;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_BROADWAY_CURSOR_H__}
{$define __GDK_BROADWAY_CURSOR_H__}
{$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GDK_TYPE_BROADWAY_CURSOR : longint; { return type might be wrong }

function GDK_BROADWAY_CURSOR(object : longint) : longint;

function GDK_BROADWAY_CURSOR_CLASS(klass : longint) : longint;

function GDK_IS_BROADWAY_CURSOR(object : longint) : longint;

function GDK_IS_BROADWAY_CURSOR_CLASS(klass : longint) : longint;

function GDK_BROADWAY_CURSOR_GET_CLASS(obj : longint) : longint;

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkBroadwayCursor = ^TGdkBroadwayCursor;
  TGdkBroadwayCursor = TGdkCursor;
{$endif}
type


function gdk_broadway_cursor_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_BROADWAY_CURSOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_CURSOR:=gdk_broadway_cursor_get_type;
  end;

function GDK_BROADWAY_CURSOR(object : longint) : longint;
begin
  GDK_BROADWAY_CURSOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursor);
end;

function GDK_BROADWAY_CURSOR_CLASS(klass : longint) : longint;
begin
  GDK_BROADWAY_CURSOR_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursorClass);
end;

function GDK_IS_BROADWAY_CURSOR(object : longint) : longint;
begin
  GDK_IS_BROADWAY_CURSOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_CURSOR);
end;

function GDK_IS_BROADWAY_CURSOR_CLASS(klass : longint) : longint;
begin
  GDK_IS_BROADWAY_CURSOR_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_CURSOR);
end;

function GDK_BROADWAY_CURSOR_GET_CLASS(obj : longint) : longint;
begin
  GDK_BROADWAY_CURSOR_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursorClass);
end;


end.
