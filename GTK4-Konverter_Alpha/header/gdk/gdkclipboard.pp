
unit gdkclipboard;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkclipboard.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkclipboard.h
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
PGdkClipboard  = ^GdkClipboard;
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentProvider  = ^GdkContentProvider;
PGdkDisplay  = ^GdkDisplay;
PGdkTexture  = ^GdkTexture;
PGError  = ^GError;
PGInputStream  = ^GInputStream;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_CLIPBOARD_H__}
{$define __GDK_CLIPBOARD_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gio/gio.h>}


function GDK_TYPE_CLIPBOARD : longint; { return type might be wrong }

function GDK_CLIPBOARD(obj : longint) : longint;

function GDK_IS_CLIPBOARD(obj : longint) : longint;


function gdk_clipboard_get_type:TGType;cdecl;external;

function gdk_clipboard_get_display(clipboard:PGdkClipboard):PGdkDisplay;cdecl;external;

function gdk_clipboard_get_formats(clipboard:PGdkClipboard):PGdkContentFormats;cdecl;external;

function gdk_clipboard_is_local(clipboard:PGdkClipboard):Tgboolean;cdecl;external;

function gdk_clipboard_get_content(clipboard:PGdkClipboard):PGdkContentProvider;cdecl;external;

procedure gdk_clipboard_store_async(clipboard:PGdkClipboard; io_priority:longint; cancellable:PGCancellable; callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;

function gdk_clipboard_store_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):Tgboolean;cdecl;external;

procedure gdk_clipboard_read_async(clipboard:PGdkClipboard; mime_types:PPchar; io_priority:longint; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;

function gdk_clipboard_read_finish(clipboard:PGdkClipboard; result:PGAsyncResult; out_mime_type:PPchar; error:PPGError):PGInputStream;cdecl;external;

procedure gdk_clipboard_read_value_async(clipboard:PGdkClipboard; _type:TGType; io_priority:longint; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;

function gdk_clipboard_read_value_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):PGValue;cdecl;external;

procedure gdk_clipboard_read_texture_async(clipboard:PGdkClipboard; cancellable:PGCancellable; callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;

function gdk_clipboard_read_texture_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):PGdkTexture;cdecl;external;

procedure gdk_clipboard_read_text_async(clipboard:PGdkClipboard; cancellable:PGCancellable; callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;

function gdk_clipboard_read_text_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):Pchar;cdecl;external;

function gdk_clipboard_set_content(clipboard:PGdkClipboard; provider:PGdkContentProvider):Tgboolean;cdecl;external;

procedure gdk_clipboard_set(clipboard:PGdkClipboard; _type:TGType; args:array of const);cdecl;external;
procedure gdk_clipboard_set(clipboard:PGdkClipboard; _type:TGType);cdecl;external;

procedure gdk_clipboard_set_valist(clipboard:PGdkClipboard; _type:TGType; args:Tva_list);cdecl;external;

procedure gdk_clipboard_set_value(clipboard:PGdkClipboard; value:PGValue);cdecl;external;

procedure gdk_clipboard_set_text(clipboard:PGdkClipboard; text:Pchar);cdecl;external;

procedure gdk_clipboard_set_texture(clipboard:PGdkClipboard; texture:PGdkTexture);cdecl;external;

{$endif}


implementation

function GDK_TYPE_CLIPBOARD : longint; { return type might be wrong }
  begin
    GDK_TYPE_CLIPBOARD:=gdk_clipboard_get_type;
  end;

function GDK_CLIPBOARD(obj : longint) : longint;
begin
  GDK_CLIPBOARD:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CLIPBOARD,GdkClipboard);
end;

function GDK_IS_CLIPBOARD(obj : longint) : longint;
begin
  GDK_IS_CLIPBOARD:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CLIPBOARD);
end;


end.
