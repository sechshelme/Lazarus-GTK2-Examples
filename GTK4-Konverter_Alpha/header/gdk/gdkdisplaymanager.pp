
unit gdkdisplaymanager;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdisplaymanager.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdisplaymanager.h
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
PGdkDisplayManager  = ^GdkDisplayManager;
PGSList  = ^GSList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_DISPLAY_MANAGER_H__}
{$define __GDK_DISPLAY_MANAGER_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkdisplay.h>}


function GDK_TYPE_DISPLAY_MANAGER : longint; { return type might be wrong }

function GDK_DISPLAY_MANAGER(object : longint) : longint;

function GDK_IS_DISPLAY_MANAGER(object : longint) : longint;


function gdk_display_manager_get_type:TGType;cdecl;external;

function gdk_display_manager_get:PGdkDisplayManager;cdecl;external;

function gdk_display_manager_get_default_display(manager:PGdkDisplayManager):PGdkDisplay;cdecl;external;

procedure gdk_display_manager_set_default_display(manager:PGdkDisplayManager; display:PGdkDisplay);cdecl;external;

function gdk_display_manager_list_displays(manager:PGdkDisplayManager):PGSList;cdecl;external;

function gdk_display_manager_open_display(manager:PGdkDisplayManager; name:Pchar):PGdkDisplay;cdecl;external;

procedure gdk_set_allowed_backends(backends:Pchar);cdecl;external;

{$endif}


implementation

function GDK_TYPE_DISPLAY_MANAGER : longint; { return type might be wrong }
  begin
    GDK_TYPE_DISPLAY_MANAGER:=gdk_display_manager_get_type;
  end;

function GDK_DISPLAY_MANAGER(object : longint) : longint;
begin
  GDK_DISPLAY_MANAGER:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DISPLAY_MANAGER,GdkDisplayManager);
end;

function GDK_IS_DISPLAY_MANAGER(object : longint) : longint;
begin
  GDK_IS_DISPLAY_MANAGER:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DISPLAY_MANAGER);
end;


end.
