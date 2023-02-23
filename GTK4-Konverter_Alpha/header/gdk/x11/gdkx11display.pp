
unit gdkx11display;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11display.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11display.h
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
    PDisplay  = ^Display;
    PGdkCursor  = ^GdkCursor;
    PGdkDisplay  = ^GdkDisplay;
    PGdkMonitor  = ^GdkMonitor;
    PGdkSurface  = ^GdkSurface;
    PGdkX11Display  = ^GdkX11Display;
    PGdkX11Screen  = ^GdkX11Screen;
    PScreen  = ^Screen;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_X11_DISPLAY_H__}
{$define __GDK_X11_DISPLAY_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gdk/x11/gdkx11screen.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkX11Display = ^TGdkX11Display;
  TGdkX11Display = TGdkDisplay;
{$endif}
type

function GDK_TYPE_X11_DISPLAY : longint; { return type might be wrong }

function GDK_X11_DISPLAY(object : longint) : longint;

function GDK_X11_DISPLAY_CLASS(klass : longint) : longint;

function GDK_IS_X11_DISPLAY(object : longint) : longint;

function GDK_IS_X11_DISPLAY_CLASS(klass : longint) : longint;

function GDK_X11_DISPLAY_GET_CLASS(obj : longint) : longint;


function gdk_x11_display_get_type:TGType;cdecl;external;

function gdk_x11_display_open(display_name:Pchar):PGdkDisplay;cdecl;external;

function gdk_x11_display_get_xdisplay(display:PGdkDisplay):PDisplay;cdecl;external;

function gdk_x11_display_get_xscreen(display:PGdkDisplay):PScreen;cdecl;external;

function gdk_x11_display_get_xrootwindow(display:PGdkDisplay):TWindow;cdecl;external;

function gdk_x11_display_get_xcursor(display:PGdkDisplay; cursor:PGdkCursor):TCursor;cdecl;external;

function GDK_DISPLAY_XDISPLAY(display : longint) : longint;


function gdk_x11_display_get_user_time(display:PGdkDisplay):Tguint32;cdecl;external;

function gdk_x11_display_get_startup_notification_id(display:PGdkDisplay):Pchar;cdecl;external;

procedure gdk_x11_display_set_startup_notification_id(display:PGdkDisplay; startup_id:Pchar);cdecl;external;

procedure gdk_x11_display_set_program_class(display:PGdkDisplay; program_class:Pchar);cdecl;external;

procedure gdk_x11_display_set_cursor_theme(display:PGdkDisplay; theme:Pchar; size:longint);cdecl;external;

procedure gdk_x11_display_broadcast_startup_message(display:PGdkDisplay; message_type:Pchar; args:array of const);cdecl;external;
procedure gdk_x11_display_broadcast_startup_message(display:PGdkDisplay; message_type:Pchar);cdecl;external;

function gdk_x11_lookup_xdisplay(xdisplay:PDisplay):PGdkDisplay;cdecl;external;

function gdk_x11_display_get_screen(display:PGdkDisplay):PGdkX11Screen;cdecl;external;

function gdk_x11_display_get_primary_monitor(display:PGdkDisplay):PGdkMonitor;cdecl;external;

procedure gdk_x11_display_grab(display:PGdkDisplay);cdecl;external;

procedure gdk_x11_display_ungrab(display:PGdkDisplay);cdecl;external;

procedure gdk_x11_display_set_surface_scale(display:PGdkDisplay; scale:longint);cdecl;external;

procedure gdk_x11_display_error_trap_push(display:PGdkDisplay);cdecl;external;


(* error 
G_GNUC_WARN_UNUSED_RESULT int  gdk_x11_display_error_trap_pop         (GdkDisplay *display);
in declaration at line 124 *)

procedure gdk_x11_display_error_trap_pop_ignored(display:PGdkDisplay);cdecl;external;

procedure gdk_x11_set_sm_client_id(sm_client_id:Pchar);cdecl;external;

function gdk_x11_display_get_default_group(display:PGdkDisplay):PGdkSurface;cdecl;external;

{$endif}


implementation

function GDK_TYPE_X11_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_DISPLAY:=gdk_x11_display_get_type;
  end;

function GDK_X11_DISPLAY(object : longint) : longint;
begin
  GDK_X11_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_DISPLAY,GdkX11Display);
end;

function GDK_X11_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_X11_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_DISPLAY,GdkX11DisplayClass);
end;

function GDK_IS_X11_DISPLAY(object : longint) : longint;
begin
  GDK_IS_X11_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_DISPLAY);
end;

function GDK_IS_X11_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_DISPLAY);
end;

function GDK_X11_DISPLAY_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_DISPLAY,GdkX11DisplayClass);
end;

function GDK_DISPLAY_XDISPLAY(display : longint) : longint;
begin
  GDK_DISPLAY_XDISPLAY:=gdk_x11_display_get_xdisplay(display);
end;


end.
