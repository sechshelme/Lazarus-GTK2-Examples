
unit gdkwaylandsurface;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandsurface.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandsurface.h
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
    PGdkToplevel  = ^GdkToplevel;
    PGdkWaylandPopup  = ^GdkWaylandPopup;
    PGdkWaylandSurface  = ^GdkWaylandSurface;
    PGdkWaylandToplevel  = ^GdkWaylandToplevel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_WAYLAND_SURFACE_H__}
{$define __GDK_WAYLAND_SURFACE_H__}
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <wayland-client.h>}

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkWaylandSurface = ^TGdkWaylandSurface;
  TGdkWaylandSurface = TGdkSurface;

  PGdkWaylandToplevel = ^TGdkWaylandToplevel;
  TGdkWaylandToplevel = TGdkToplevel;

  PGdkWaylandPopup = ^TGdkWaylandPopup;
  TGdkWaylandPopup = TGdkPopup;
{$endif}

function GDK_TYPE_WAYLAND_SURFACE : longint; { return type might be wrong }

function GDK_WAYLAND_SURFACE(object : longint) : longint;

function GDK_IS_WAYLAND_SURFACE(object : longint) : longint;

function GDK_TYPE_WAYLAND_TOPLEVEL : longint; { return type might be wrong }

function GDK_WAYLAND_TOPLEVEL(object : longint) : longint;

function GDK_IS_WAYLAND_TOPLEVEL(object : longint) : longint;

function GDK_TYPE_WAYLAND_POPUP : longint; { return type might be wrong }

function GDK_WAYLAND_POPUP(object : longint) : longint;

function GDK_IS_WAYLAND_POPUP(object : longint) : longint;


function gdk_wayland_surface_get_type:TGType;cdecl;external;

function gdk_wayland_toplevel_get_type:TGType;cdecl;external;

function gdk_wayland_popup_get_type:TGType;cdecl;external;

(* error 
struct wl_surface       *gdk_wayland_surface_get_wl_surface       (GdkSurface *surface);
in declaration at line 63 *)
    type

      TGdkWaylandToplevelExported = procedure (toplevel:PGdkToplevel; handle:Pchar; user_data:Tgpointer);cdecl;


function gdk_wayland_toplevel_export_handle(toplevel:PGdkToplevel; callback:TGdkWaylandToplevelExported; user_data:Tgpointer; destroy_func:TGDestroyNotify):Tgboolean;cdecl;external;

procedure gdk_wayland_toplevel_unexport_handle(toplevel:PGdkToplevel);cdecl;external;

function gdk_wayland_toplevel_set_transient_for_exported(toplevel:PGdkToplevel; parent_handle_str:Pchar):Tgboolean;cdecl;external;

procedure gdk_wayland_toplevel_set_application_id(toplevel:PGdkToplevel; application_id:Pchar);cdecl;external;

{$endif}


implementation

function GDK_TYPE_WAYLAND_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_SURFACE:=gdk_wayland_surface_get_type;
  end;

function GDK_WAYLAND_SURFACE(object : longint) : longint;
begin
  GDK_WAYLAND_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_SURFACE,GdkWaylandSurface);
end;

function GDK_IS_WAYLAND_SURFACE(object : longint) : longint;
begin
  GDK_IS_WAYLAND_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_SURFACE);
end;

function GDK_TYPE_WAYLAND_TOPLEVEL : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_TOPLEVEL:=gdk_wayland_toplevel_get_type;
  end;

function GDK_WAYLAND_TOPLEVEL(object : longint) : longint;
begin
  GDK_WAYLAND_TOPLEVEL:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_TOPLEVEL,GdkWaylandToplevel);
end;

function GDK_IS_WAYLAND_TOPLEVEL(object : longint) : longint;
begin
  GDK_IS_WAYLAND_TOPLEVEL:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_TOPLEVEL);
end;

function GDK_TYPE_WAYLAND_POPUP : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_POPUP:=gdk_wayland_popup_get_type;
  end;

function GDK_WAYLAND_POPUP(object : longint) : longint;
begin
  GDK_WAYLAND_POPUP:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_POPUP,GdkWaylandPopup);
end;

function GDK_IS_WAYLAND_POPUP(object : longint) : longint;
begin
  GDK_IS_WAYLAND_POPUP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_POPUP);
end;


end.
