
unit gdkdisplay;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdisplay.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdisplay.h
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
PGdkClipboard  = ^GdkClipboard;
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkEvent  = ^GdkEvent;
PGdkGLContext  = ^GdkGLContext;
PGdkKeymapKey  = ^GdkKeymapKey;
PGdkModifierType  = ^GdkModifierType;
PGdkMonitor  = ^GdkMonitor;
PGdkSeat  = ^GdkSeat;
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
PGList  = ^GList;
PGListModel  = ^GListModel;
Pguint  = ^guint;
PGValue  = ^GValue;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DISPLAY_H__}
{$define __GDK_DISPLAY_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdkseat.h>}
{$include <gdk/gdkmonitor.h>}


function GDK_TYPE_DISPLAY : longint; { return type might be wrong }

function GDK_DISPLAY(object : longint) : longint;

function GDK_IS_DISPLAY(object : longint) : longint;


function gdk_display_get_type:TGType;cdecl;external;

function gdk_display_open(display_name:Pchar):PGdkDisplay;cdecl;external;

function gdk_display_get_name(display:PGdkDisplay):Pchar;cdecl;external;

function gdk_display_device_is_grabbed(display:PGdkDisplay; device:PGdkDevice):Tgboolean;cdecl;external;

procedure gdk_display_beep(display:PGdkDisplay);cdecl;external;

procedure gdk_display_sync(display:PGdkDisplay);cdecl;external;

procedure gdk_display_flush(display:PGdkDisplay);cdecl;external;

procedure gdk_display_close(display:PGdkDisplay);cdecl;external;

function gdk_display_is_closed(display:PGdkDisplay):Tgboolean;cdecl;external;

function gdk_display_is_composited(display:PGdkDisplay):Tgboolean;cdecl;external;

function gdk_display_is_rgba(display:PGdkDisplay):Tgboolean;cdecl;external;

function gdk_display_supports_input_shapes(display:PGdkDisplay):Tgboolean;cdecl;external;

function gdk_display_prepare_gl(self:PGdkDisplay; error:PPGError):Tgboolean;cdecl;external;

function gdk_display_create_gl_context(self:PGdkDisplay; error:PPGError):PGdkGLContext;cdecl;external;

function gdk_display_get_default:PGdkDisplay;cdecl;external;

function gdk_display_get_clipboard(display:PGdkDisplay):PGdkClipboard;cdecl;external;

function gdk_display_get_primary_clipboard(display:PGdkDisplay):PGdkClipboard;cdecl;external;

procedure gdk_display_notify_startup_complete(display:PGdkDisplay; startup_id:Pchar);cdecl;external;

function gdk_display_get_startup_notification_id(display:PGdkDisplay):Pchar;cdecl;external;

function gdk_display_get_app_launch_context(display:PGdkDisplay):PGdkAppLaunchContext;cdecl;external;

function gdk_display_get_default_seat(display:PGdkDisplay):PGdkSeat;cdecl;external;

function gdk_display_list_seats(display:PGdkDisplay):PGList;cdecl;external;

function gdk_display_get_monitors(self:PGdkDisplay):PGListModel;cdecl;external;

function gdk_display_get_monitor_at_surface(display:PGdkDisplay; surface:PGdkSurface):PGdkMonitor;cdecl;external;

procedure gdk_display_put_event(display:PGdkDisplay; event:PGdkEvent);cdecl;external;

function gdk_display_map_keyval(display:PGdkDisplay; keyval:Tguint; keys:PPGdkKeymapKey; n_keys:Plongint):Tgboolean;cdecl;external;

function gdk_display_map_keycode(display:PGdkDisplay; keycode:Tguint; keys:PPGdkKeymapKey; keyvals:PPguint; n_entries:Plongint):Tgboolean;cdecl;external;

function gdk_display_translate_key(display:PGdkDisplay; keycode:Tguint; state:TGdkModifierType; group:longint; keyval:Pguint; 
           effective_group:Plongint; level:Plongint; consumed:PGdkModifierType):Tgboolean;cdecl;external;

function gdk_display_get_setting(display:PGdkDisplay; name:Pchar; value:PGValue):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_DISPLAY:=gdk_display_get_type;
  end;

function GDK_DISPLAY(object : longint) : longint;
begin
  GDK_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DISPLAY,GdkDisplay);
end;

function GDK_IS_DISPLAY(object : longint) : longint;
begin
  GDK_IS_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DISPLAY);
end;


end.
