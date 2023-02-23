
unit gdkdrop;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdrop.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdrop.h
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
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkContentFormats  = ^GdkContentFormats;
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkDrag  = ^GdkDrag;
PGdkDrop  = ^GdkDrop;
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
PGInputStream  = ^GInputStream;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DROP_H__}
{$define __GDK_DROP_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}



function GDK_TYPE_DROP : longint; { return type might be wrong }

function GDK_DROP(object : longint) : longint;

function GDK_IS_DROP(object : longint) : longint;


function gdk_drop_get_type:TGType;cdecl;external;

function gdk_drop_get_display(self:PGdkDrop):PGdkDisplay;cdecl;external;

function gdk_drop_get_device(self:PGdkDrop):PGdkDevice;cdecl;external;

function gdk_drop_get_surface(self:PGdkDrop):PGdkSurface;cdecl;external;

function gdk_drop_get_formats(self:PGdkDrop):PGdkContentFormats;cdecl;external;

function gdk_drop_get_actions(self:PGdkDrop):TGdkDragAction;cdecl;external;

function gdk_drop_get_drag(self:PGdkDrop):PGdkDrag;cdecl;external;

procedure gdk_drop_status(self:PGdkDrop; actions:TGdkDragAction; preferred:TGdkDragAction);cdecl;external;

procedure gdk_drop_finish(self:PGdkDrop; action:TGdkDragAction);cdecl;external;

procedure gdk_drop_read_async(self:PGdkDrop; mime_types:PPchar; io_priority:longint; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;

function gdk_drop_read_finish(self:PGdkDrop; result:PGAsyncResult; out_mime_type:PPchar; error:PPGError):PGInputStream;cdecl;external;

procedure gdk_drop_read_value_async(self:PGdkDrop; _type:TGType; io_priority:longint; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;

function gdk_drop_read_value_finish(self:PGdkDrop; result:PGAsyncResult; error:PPGError):PGValue;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DROP : longint; { return type might be wrong }
  begin
    GDK_TYPE_DROP:=gdk_drop_get_type;
  end;

function GDK_DROP(object : longint) : longint;
begin
  GDK_DROP:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DROP,GdkDrop);
end;

function GDK_IS_DROP(object : longint) : longint;
begin
  GDK_IS_DROP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DROP);
end;


end.
