
unit gdkx11applaunchcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11applaunchcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/x11/gdkx11applaunchcontext.h
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
PGdkX11AppLaunchContext  = ^GdkX11AppLaunchContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_X11_APP_LAUNCH_CONTEXT_H__}
{$define __GDK_X11_APP_LAUNCH_CONTEXT_H__}
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GDK_TYPE_X11_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }

function GDK_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;

function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;

function GDK_IS_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;

function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;

function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj : longint) : longint;

{$ifdef GTK_COMPILATION}
type
{$else}
type
  PGdkX11AppLaunchContext = ^TGdkX11AppLaunchContext;
  TGdkX11AppLaunchContext = TGdkAppLaunchContext;
{$endif}
type


function gdk_x11_app_launch_context_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_X11_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_APP_LAUNCH_CONTEXT:=gdk_x11_app_launch_context_get_type;
  end;

function GDK_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;
begin
  GDK_X11_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContext);
end;

function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;
begin
  GDK_X11_APP_LAUNCH_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContextClass);
end;

function GDK_IS_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;
begin
  GDK_IS_X11_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
end;

function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
end;

function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContextClass);
end;


end.
