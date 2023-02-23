
unit gdkwaylanddisplay;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylanddisplay.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylanddisplay.h
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
    PGdkWaylandDisplay  = ^GdkWaylandDisplay;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_WAYLAND_DISPLAY_H__}
{$define __GDK_WAYLAND_DISPLAY_H__}
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkWaylandDisplay = ^TGdkWaylandDisplay;
  TGdkWaylandDisplay = TGdkDisplay;
{$endif}
type

function GDK_TYPE_WAYLAND_DISPLAY : longint; { return type might be wrong }

function GDK_WAYLAND_DISPLAY(object : longint) : longint;

function GDK_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;

function GDK_IS_WAYLAND_DISPLAY(object : longint) : longint;

function GDK_IS_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;

function GDK_WAYLAND_DISPLAY_GET_CLASS(obj : longint) : longint;


function gdk_wayland_display_get_type:TGType;cdecl;external;

(* error 
struct wl_display      *gdk_wayland_display_get_wl_display      (GdkDisplay *display);
in declaration at line 49 *)

(* error 
struct wl_compositor   *gdk_wayland_display_get_wl_compositor   (GdkDisplay *display);
in declaration at line 51 *)

procedure gdk_wayland_display_set_cursor_theme(display:PGdkDisplay; name:Pchar; size:longint);cdecl;external;

function gdk_wayland_display_get_startup_notification_id(display:PGdkDisplay):Pchar;cdecl;external;

procedure gdk_wayland_display_set_startup_notification_id(display:PGdkDisplay; startup_id:Pchar);cdecl;external;

function gdk_wayland_display_query_registry(display:PGdkDisplay; global:Pchar):Tgboolean;cdecl;external;

function gdk_wayland_display_get_egl_display(display:PGdkDisplay):Tgpointer;cdecl;external;

{$endif}


implementation

function GDK_TYPE_WAYLAND_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_DISPLAY:=gdk_wayland_display_get_type;
  end;

function GDK_WAYLAND_DISPLAY(object : longint) : longint;
begin
  GDK_WAYLAND_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplay);
end;

function GDK_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_WAYLAND_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplayClass);
end;

function GDK_IS_WAYLAND_DISPLAY(object : longint) : longint;
begin
  GDK_IS_WAYLAND_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_DISPLAY);
end;

function GDK_IS_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_IS_WAYLAND_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_WAYLAND_DISPLAY);
end;

function GDK_WAYLAND_DISPLAY_GET_CLASS(obj : longint) : longint;
begin
  GDK_WAYLAND_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplayClass);
end;


end.
