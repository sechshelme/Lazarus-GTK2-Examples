unit gdkclipboard;

interface

uses
  glib2, common_GTK, gdktypes, gdkcontentformats, gdktexture;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkClipboard = record
  end;
  PGdkClipboard = ^TGdkClipboard;

function gdk_clipboard_get_type: TGType; cdecl; external gtklib;
function gdk_clipboard_get_display(clipboard: PGdkClipboard): PGdkDisplay; cdecl; external gtklib;
function gdk_clipboard_get_formats(clipboard: PGdkClipboard): PGdkContentFormats; cdecl; external gtklib;
function gdk_clipboard_is_local(clipboard: PGdkClipboard): Tgboolean; cdecl; external gtklib;
function gdk_clipboard_get_content(clipboard: PGdkClipboard): PGdkContentProvider; cdecl; external gtklib;
procedure gdk_clipboard_store_async(clipboard: PGdkClipboard; io_priority: longint; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gdk_clipboard_store_finish(clipboard: PGdkClipboard; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gdk_clipboard_read_async(clipboard: PGdkClipboard; mime_types: PPchar; io_priority: longint; cancellable: PGCancellable; callback: TGAsyncReadyCallback;
  user_data: Tgpointer); cdecl; external gtklib;
function gdk_clipboard_read_finish(clipboard: PGdkClipboard; Result: PGAsyncResult; out_mime_type: PPchar; error: PPGError): PGInputStream; cdecl; external gtklib;
procedure gdk_clipboard_read_value_async(clipboard: PGdkClipboard; _type: TGType; io_priority: longint; cancellable: PGCancellable; callback: TGAsyncReadyCallback;
  user_data: Tgpointer); cdecl; external gtklib;
function gdk_clipboard_read_value_finish(clipboard: PGdkClipboard; Result: PGAsyncResult; error: PPGError): PGValue; cdecl; external gtklib;
procedure gdk_clipboard_read_texture_async(clipboard: PGdkClipboard; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gdk_clipboard_read_texture_finish(clipboard: PGdkClipboard; Result: PGAsyncResult; error: PPGError): PGdkTexture; cdecl; external gtklib;
procedure gdk_clipboard_read_text_async(clipboard: PGdkClipboard; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gdk_clipboard_read_text_finish(clipboard: PGdkClipboard; Result: PGAsyncResult; error: PPGError): PChar; cdecl; external gtklib;
function gdk_clipboard_set_content(clipboard: PGdkClipboard; provider: PGdkContentProvider): Tgboolean; cdecl; external gtklib;
procedure gdk_clipboard_set(clipboard: PGdkClipboard; _type: TGType; args: array of const); cdecl; external gtklib;
procedure gdk_clipboard_set(clipboard: PGdkClipboard; _type: TGType); cdecl; external gtklib;
procedure gdk_clipboard_set_valist(clipboard: PGdkClipboard; _type: TGType; args: Tva_list); cdecl; external gtklib;
procedure gdk_clipboard_set_value(clipboard: PGdkClipboard; Value: PGValue); cdecl; external gtklib;
procedure gdk_clipboard_set_text(clipboard: PGdkClipboard; Text: PChar); cdecl; external gtklib;
procedure gdk_clipboard_set_texture(clipboard: PGdkClipboard; texture: PGdkTexture); cdecl; external gtklib;

// === Konventiert am: 31-7-24 16:22:43 ===

function GDK_TYPE_CLIPBOARD: TGType;
function GDK_CLIPBOARD(obj: Pointer): PGdkClipboard;
function GDK_IS_CLIPBOARD(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_CLIPBOARD: TGType;
begin
  GDK_TYPE_CLIPBOARD := gdk_clipboard_get_type;
end;

function GDK_CLIPBOARD(obj: Pointer): PGdkClipboard;
begin
  Result := PGdkClipboard(g_type_check_instance_cast(obj, GDK_TYPE_CLIPBOARD));
end;

function GDK_IS_CLIPBOARD(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_CLIPBOARD);
end;



end.
