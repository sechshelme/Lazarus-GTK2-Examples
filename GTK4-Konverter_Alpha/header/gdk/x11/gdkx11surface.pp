
unit gdkx11surface;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11surface.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11surface.h
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
PGdkSurface  = ^GdkSurface;
PGdkX11Surface  = ^GdkX11Surface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_X11_SURFACE_H__}
{$define __GDK_X11_SURFACE_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}


function GDK_TYPE_X11_SURFACE : longint; { return type might be wrong }

function GDK_X11_SURFACE(object : longint) : longint;

function GDK_X11_SURFACE_CLASS(klass : longint) : longint;

function GDK_IS_X11_SURFACE(object : longint) : longint;

function GDK_IS_X11_SURFACE_CLASS(klass : longint) : longint;

function GDK_X11_SURFACE_GET_CLASS(obj : longint) : longint;

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkX11Surface = ^TGdkX11Surface;
  TGdkX11Surface = TGdkSurface;
{$endif}
type


function gdk_x11_surface_get_type:TGType;cdecl;external;

function gdk_x11_surface_get_xid(surface:PGdkSurface):TWindow;cdecl;external;

procedure gdk_x11_surface_set_user_time(surface:PGdkSurface; timestamp:Tguint32);cdecl;external;

procedure gdk_x11_surface_set_utf8_property(surface:PGdkSurface; name:Pchar; value:Pchar);cdecl;external;

procedure gdk_x11_surface_set_theme_variant(surface:PGdkSurface; variant:Pchar);cdecl;external;

procedure gdk_x11_surface_move_to_current_desktop(surface:PGdkSurface);cdecl;external;

function gdk_x11_surface_get_desktop(surface:PGdkSurface):Tguint32;cdecl;external;

procedure gdk_x11_surface_move_to_desktop(surface:PGdkSurface; desktop:Tguint32);cdecl;external;

procedure gdk_x11_surface_set_frame_sync_enabled(surface:PGdkSurface; frame_sync_enabled:Tgboolean);cdecl;external;

function GDK_SURFACE_XDISPLAY(win : longint) : longint;


function GDK_SURFACE_XID(win : longint) : longint;


function gdk_x11_get_server_time(surface:PGdkSurface):Tguint32;cdecl;external;

function gdk_x11_surface_lookup_for_display(display:PGdkDisplay; window:TWindow):PGdkSurface;cdecl;external;

procedure gdk_x11_surface_set_skip_taskbar_hint(surface:PGdkSurface; skips_taskbar:Tgboolean);cdecl;external;

procedure gdk_x11_surface_set_skip_pager_hint(surface:PGdkSurface; skips_pager:Tgboolean);cdecl;external;

procedure gdk_x11_surface_set_urgency_hint(surface:PGdkSurface; urgent:Tgboolean);cdecl;external;

procedure gdk_x11_surface_set_group(surface:PGdkSurface; leader:PGdkSurface);cdecl;external;

function gdk_x11_surface_get_group(surface:PGdkSurface):PGdkSurface;cdecl;external;

{$endif}


implementation

function GDK_TYPE_X11_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_SURFACE:=gdk_x11_surface_get_type;
  end;

function GDK_X11_SURFACE(object : longint) : longint;
begin
  GDK_X11_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_SURFACE,GdkX11Surface);
end;

function GDK_X11_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_X11_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_SURFACE,GdkX11SurfaceClass);
end;

function GDK_IS_X11_SURFACE(object : longint) : longint;
begin
  GDK_IS_X11_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_SURFACE);
end;

function GDK_IS_X11_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_SURFACE);
end;

function GDK_X11_SURFACE_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_SURFACE,GdkX11SurfaceClass);
end;

function GDK_SURFACE_XDISPLAY(win : longint) : longint;
begin
  GDK_SURFACE_XDISPLAY:=GDK_DISPLAY_XDISPLAY(gdk_surface_get_display(win));
end;

function GDK_SURFACE_XID(win : longint) : longint;
begin
  GDK_SURFACE_XID:=gdk_x11_surface_get_xid(win);
end;


end.
