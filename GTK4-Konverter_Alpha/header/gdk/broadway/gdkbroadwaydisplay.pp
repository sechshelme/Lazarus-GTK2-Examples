
unit gdkbroadwaydisplay;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaydisplay.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/broadway/gdkbroadwaydisplay.h
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
PGdkBroadwayDisplay  = ^GdkBroadwayDisplay;
PGdkDisplay  = ^GdkDisplay;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_BROADWAY_DISPLAY_H__}
{$define __GDK_BROADWAY_DISPLAY_H__}
{$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkBroadwayDisplay = ^TGdkBroadwayDisplay;
  TGdkBroadwayDisplay = TGdkDisplay;
{$endif}
type

function GDK_TYPE_BROADWAY_DISPLAY : longint; { return type might be wrong }

function GDK_BROADWAY_DISPLAY(object : longint) : longint;

function GDK_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;

function GDK_IS_BROADWAY_DISPLAY(object : longint) : longint;

function GDK_IS_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;

function GDK_BROADWAY_DISPLAY_GET_CLASS(obj : longint) : longint;


function gdk_broadway_display_get_type:TGType;cdecl;external;

procedure gdk_broadway_display_show_keyboard(display:PGdkBroadwayDisplay);cdecl;external;

procedure gdk_broadway_display_hide_keyboard(display:PGdkBroadwayDisplay);cdecl;external;

function gdk_broadway_display_get_surface_scale(display:PGdkDisplay):longint;cdecl;external;

procedure gdk_broadway_display_set_surface_scale(display:PGdkDisplay; scale:longint);cdecl;external;

{$endif}


implementation

function GDK_TYPE_BROADWAY_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_DISPLAY:=gdk_broadway_display_get_type;
  end;

function GDK_BROADWAY_DISPLAY(object : longint) : longint;
begin
  GDK_BROADWAY_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplay);
end;

function GDK_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_BROADWAY_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplayClass);
end;

function GDK_IS_BROADWAY_DISPLAY(object : longint) : longint;
begin
  GDK_IS_BROADWAY_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_DISPLAY);
end;

function GDK_IS_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_IS_BROADWAY_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_DISPLAY);
end;

function GDK_BROADWAY_DISPLAY_GET_CLASS(obj : longint) : longint;
begin
  GDK_BROADWAY_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplayClass);
end;


end.
