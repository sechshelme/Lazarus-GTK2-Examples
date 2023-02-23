
unit gdkwaylandglcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandglcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/wayland/gdkwaylandglcontext.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_WAYLAND_GL_CONTEXT_H__}
{$define __GDK_WAYLAND_GL_CONTEXT_H__}
{$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GDK_TYPE_WAYLAND_GL_CONTEXT : longint; { return type might be wrong }

function GDK_WAYLAND_GL_CONTEXT(obj : longint) : longint;

function GDK_WAYLAND_IS_GL_CONTEXT(obj : longint) : longint;

type


function gdk_wayland_gl_context_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_WAYLAND_GL_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_GL_CONTEXT:=gdk_wayland_gl_context_get_type;
  end;

function GDK_WAYLAND_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_WAYLAND_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_WAYLAND_GL_CONTEXT,GdkWaylandGLContext);
end;

function GDK_WAYLAND_IS_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_WAYLAND_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_WAYLAND_GL_CONTEXT);
end;


end.
