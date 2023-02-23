
unit gdkapplaunchcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkapplaunchcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkapplaunchcontext.h
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
PGdkAppLaunchContext  = ^GdkAppLaunchContext;
PGdkDisplay  = ^GdkDisplay;
PGIcon  = ^GIcon;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_APP_LAUNCH_CONTEXT_H__}
{$define __GDK_APP_LAUNCH_CONTEXT_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }

function GDK_APP_LAUNCH_CONTEXT(o : longint) : longint;

function GDK_IS_APP_LAUNCH_CONTEXT(o : longint) : longint;


function gdk_app_launch_context_get_type:TGType;cdecl;external;

function gdk_app_launch_context_get_display(context:PGdkAppLaunchContext):PGdkDisplay;cdecl;external;

procedure gdk_app_launch_context_set_desktop(context:PGdkAppLaunchContext; desktop:longint);cdecl;external;

procedure gdk_app_launch_context_set_timestamp(context:PGdkAppLaunchContext; timestamp:Tguint32);cdecl;external;

procedure gdk_app_launch_context_set_icon(context:PGdkAppLaunchContext; icon:PGIcon);cdecl;external;

procedure gdk_app_launch_context_set_icon_name(context:PGdkAppLaunchContext; icon_name:Pchar);cdecl;external;

{$endif}


implementation

function GDK_TYPE_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_APP_LAUNCH_CONTEXT:=gdk_app_launch_context_get_type;
  end;

function GDK_APP_LAUNCH_CONTEXT(o : longint) : longint;
begin
  GDK_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_APP_LAUNCH_CONTEXT,GdkAppLaunchContext);
end;

function GDK_IS_APP_LAUNCH_CONTEXT(o : longint) : longint;
begin
  GDK_IS_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_APP_LAUNCH_CONTEXT);
end;


end.
