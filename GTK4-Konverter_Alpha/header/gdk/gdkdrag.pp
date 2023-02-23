
unit gdkdrag;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdrag.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdrag.h
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
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentProvider  = ^GdkContentProvider;
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkDrag  = ^GdkDrag;
PGdkDragCancelReason  = ^GdkDragCancelReason;
PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_DND_H__}
{$define __GDK_DND_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkdevice.h>}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdkevents.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_DRAG : longint; { return type might be wrong }

function GDK_DRAG(object : longint) : longint;

function GDK_IS_DRAG(object : longint) : longint;


type
  PGdkDragCancelReason = ^TGdkDragCancelReason;
  TGdkDragCancelReason = (GDK_DRAG_CANCEL_NO_TARGET,GDK_DRAG_CANCEL_USER_CANCELLED,
    GDK_DRAG_CANCEL_ERROR);


function gdk_drag_get_type:TGType;cdecl;external;

function gdk_drag_get_display(drag:PGdkDrag):PGdkDisplay;cdecl;external;

function gdk_drag_get_device(drag:PGdkDrag):PGdkDevice;cdecl;external;

function gdk_drag_get_formats(drag:PGdkDrag):PGdkContentFormats;cdecl;external;

function gdk_drag_get_actions(drag:PGdkDrag):TGdkDragAction;cdecl;external;

function gdk_drag_get_selected_action(drag:PGdkDrag):TGdkDragAction;cdecl;external;

function gdk_drag_action_is_unique(action:TGdkDragAction):Tgboolean;cdecl;external;

function gdk_drag_begin(surface:PGdkSurface; device:PGdkDevice; content:PGdkContentProvider; actions:TGdkDragAction; dx:Tdouble; 
           dy:Tdouble):PGdkDrag;cdecl;external;

procedure gdk_drag_drop_done(drag:PGdkDrag; success:Tgboolean);cdecl;external;

function gdk_drag_get_drag_surface(drag:PGdkDrag):PGdkSurface;cdecl;external;

procedure gdk_drag_set_hotspot(drag:PGdkDrag; hot_x:longint; hot_y:longint);cdecl;external;

function gdk_drag_get_content(drag:PGdkDrag):PGdkContentProvider;cdecl;external;

function gdk_drag_get_surface(drag:PGdkDrag):PGdkSurface;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DRAG : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAG:=gdk_drag_get_type;
  end;

function GDK_DRAG(object : longint) : longint;
begin
  GDK_DRAG:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DRAG,GdkDrag);
end;

function GDK_IS_DRAG(object : longint) : longint;
begin
  GDK_IS_DRAG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DRAG);
end;


end.
