
unit gdkx11screen;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11screen.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11screen.h
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
PGdkX11Screen  = ^GdkX11Screen;
PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_X11_SCREEN_H__}
{$define __GDK_X11_SCREEN_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}


function GDK_TYPE_X11_SCREEN : longint; { return type might be wrong }

function GDK_X11_SCREEN(object : longint) : longint;

function GDK_X11_SCREEN_CLASS(klass : longint) : longint;

function GDK_IS_X11_SCREEN(object : longint) : longint;

function GDK_IS_X11_SCREEN_CLASS(klass : longint) : longint;

function GDK_X11_SCREEN_GET_CLASS(obj : longint) : longint;

type


function gdk_x11_screen_get_type:TGType;cdecl;external;

function gdk_x11_screen_get_xscreen(screen:PGdkX11Screen):PScreen;cdecl;external;

function gdk_x11_screen_get_screen_number(screen:PGdkX11Screen):longint;cdecl;external;

function gdk_x11_screen_get_window_manager_name(screen:PGdkX11Screen):Pchar;cdecl;external;

function gdk_x11_screen_supports_net_wm_hint(screen:PGdkX11Screen; property_name:Pchar):Tgboolean;cdecl;external;

function gdk_x11_screen_get_monitor_output(screen:PGdkX11Screen; monitor_num:longint):TXID;cdecl;external;

function gdk_x11_screen_get_number_of_desktops(screen:PGdkX11Screen):Tguint32;cdecl;external;

function gdk_x11_screen_get_current_desktop(screen:PGdkX11Screen):Tguint32;cdecl;external;

{$endif}


implementation

function GDK_TYPE_X11_SCREEN : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_SCREEN:=gdk_x11_screen_get_type;
  end;

function GDK_X11_SCREEN(object : longint) : longint;
begin
  GDK_X11_SCREEN:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_SCREEN,GdkX11Screen);
end;

function GDK_X11_SCREEN_CLASS(klass : longint) : longint;
begin
  GDK_X11_SCREEN_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_SCREEN,GdkX11ScreenClass);
end;

function GDK_IS_X11_SCREEN(object : longint) : longint;
begin
  GDK_IS_X11_SCREEN:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_SCREEN);
end;

function GDK_IS_X11_SCREEN_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_SCREEN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_SCREEN);
end;

function GDK_X11_SCREEN_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_SCREEN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_SCREEN,GdkX11ScreenClass);
end;


end.
