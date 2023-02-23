
unit gdkbroadwaysurface;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaysurface.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaysurface.h
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
PGdkBroadwaySurface  = ^GdkBroadwaySurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_BROADWAY_SURFACE_H__}
{$define __GDK_BROADWAY_SURFACE_H__}
{$include <gdk/gdk.h>}


function GDK_TYPE_BROADWAY_SURFACE : longint; { return type might be wrong }

function GDK_BROADWAY_SURFACE(object : longint) : longint;

function GDK_BROADWAY_SURFACE_CLASS(klass : longint) : longint;

function GDK_IS_BROADWAY_SURFACE(object : longint) : longint;

function GDK_IS_BROADWAY_SURFACE_CLASS(klass : longint) : longint;

function GDK_BROADWAY_SURFACE_GET_CLASS(obj : longint) : longint;

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkBroadwaySurface = ^TGdkBroadwaySurface;
  TGdkBroadwaySurface = TGdkSurface;
{$endif}
type


function gdk_broadway_surface_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_BROADWAY_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_SURFACE:=gdk_broadway_surface_get_type;
  end;

function GDK_BROADWAY_SURFACE(object : longint) : longint;
begin
  GDK_BROADWAY_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_SURFACE,GdkBroadwaySurface);
end;

function GDK_BROADWAY_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_BROADWAY_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_SURFACE,GdkBroadwaySurfaceClass);
end;

function GDK_IS_BROADWAY_SURFACE(object : longint) : longint;
begin
  GDK_IS_BROADWAY_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_SURFACE);
end;

function GDK_IS_BROADWAY_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_IS_BROADWAY_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_SURFACE);
end;

function GDK_BROADWAY_SURFACE_GET_CLASS(obj : longint) : longint;
begin
  GDK_BROADWAY_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_SURFACE,GdkBroadwaySurfaceClass);
end;


end.
