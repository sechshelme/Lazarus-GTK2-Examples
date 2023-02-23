
unit gdksurface;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdksurface.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdksurface.h
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
Pcairo_region_t  = ^cairo_region_t;
Pcairo_surface_t  = ^cairo_surface_t;
Pdouble  = ^double;
PGdkCairoContext  = ^GdkCairoContext;
PGdkCursor  = ^GdkCursor;
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkFrameClock  = ^GdkFrameClock;
PGdkGLContext  = ^GdkGLContext;
PGdkModifierType  = ^GdkModifierType;
PGdkSurface  = ^GdkSurface;
PGdkVulkanContext  = ^GdkVulkanContext;
PGError  = ^GError;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_SURFACE_H__}
{$define __GDK_SURFACE_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdkframeclock.h>}
{$include <gdk/gdkmonitor.h>}
{$include <gdk/gdkpopuplayout.h>}

type

function GDK_TYPE_SURFACE : longint; { return type might be wrong }

function GDK_SURFACE(object : longint) : longint;

function GDK_SURFACE_CLASS(klass : longint) : longint;

function GDK_IS_SURFACE(object : longint) : longint;

function GDK_IS_SURFACE_CLASS(klass : longint) : longint;

function GDK_SURFACE_GET_CLASS(obj : longint) : longint;


function gdk_surface_get_type:TGType;cdecl;external;

function gdk_surface_new_toplevel(display:PGdkDisplay):PGdkSurface;cdecl;external;

function gdk_surface_new_popup(parent:PGdkSurface; autohide:Tgboolean):PGdkSurface;cdecl;external;

procedure gdk_surface_destroy(surface:PGdkSurface);cdecl;external;

function gdk_surface_is_destroyed(surface:PGdkSurface):Tgboolean;cdecl;external;

function gdk_surface_get_display(surface:PGdkSurface):PGdkDisplay;cdecl;external;

procedure gdk_surface_hide(surface:PGdkSurface);cdecl;external;

procedure gdk_surface_set_input_region(surface:PGdkSurface; region:Pcairo_region_t);cdecl;external;

function gdk_surface_get_mapped(surface:PGdkSurface):Tgboolean;cdecl;external;

procedure gdk_surface_set_cursor(surface:PGdkSurface; cursor:PGdkCursor);cdecl;external;

function gdk_surface_get_cursor(surface:PGdkSurface):PGdkCursor;cdecl;external;

procedure gdk_surface_set_device_cursor(surface:PGdkSurface; device:PGdkDevice; cursor:PGdkCursor);cdecl;external;

function gdk_surface_get_device_cursor(surface:PGdkSurface; device:PGdkDevice):PGdkCursor;cdecl;external;

function gdk_surface_get_width(surface:PGdkSurface):longint;cdecl;external;

function gdk_surface_get_height(surface:PGdkSurface):longint;cdecl;external;

function gdk_surface_translate_coordinates(from:PGdkSurface; to:PGdkSurface; x:Pdouble; y:Pdouble):Tgboolean;cdecl;external;

function gdk_surface_get_scale_factor(surface:PGdkSurface):longint;cdecl;external;

function gdk_surface_get_device_position(surface:PGdkSurface; device:PGdkDevice; x:Pdouble; y:Pdouble; mask:PGdkModifierType):Tgboolean;cdecl;external;

function gdk_surface_create_similar_surface(surface:PGdkSurface; content:Tcairo_content_t; width:longint; height:longint):Pcairo_surface_t;cdecl;external;

procedure gdk_surface_beep(surface:PGdkSurface);cdecl;external;

procedure gdk_surface_queue_render(surface:PGdkSurface);cdecl;external;

procedure gdk_surface_request_layout(surface:PGdkSurface);cdecl;external;

function gdk_surface_get_frame_clock(surface:PGdkSurface):PGdkFrameClock;cdecl;external;

procedure gdk_surface_set_opaque_region(surface:PGdkSurface; region:Pcairo_region_t);cdecl;external;

function gdk_surface_create_cairo_context(surface:PGdkSurface):PGdkCairoContext;cdecl;external;

function gdk_surface_create_gl_context(surface:PGdkSurface; error:PPGError):PGdkGLContext;cdecl;external;

function gdk_surface_create_vulkan_context(surface:PGdkSurface; error:PPGError):PGdkVulkanContext;cdecl;external;
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC (GdkSurface, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC (GdkSurface, g_object_unref)

{$endif}


implementation

function GDK_TYPE_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_SURFACE:=gdk_surface_get_type;
  end;

function GDK_SURFACE(object : longint) : longint;
begin
  GDK_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_SURFACE,GdkSurface);
end;

function GDK_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_SURFACE,GdkSurfaceClass);
end;

function GDK_IS_SURFACE(object : longint) : longint;
begin
  GDK_IS_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_SURFACE);
end;

function GDK_IS_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_IS_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_SURFACE);
end;

function GDK_SURFACE_GET_CLASS(obj : longint) : longint;
begin
  GDK_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_SURFACE,GdkSurfaceClass);
end;


end.
