unit gdkcontentprovider;

interface

uses
  glib2, common_GTK, gdkclipboard, gdkcontentformats, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  // Ausgelagert
  //TGdkContentProvider = record
  //  parent: TGObject;
  //end;
  //PGdkContentProvider = ^TGdkContentProvider;
  //PPGdkContentProvider = ^PGdkContentProvider;

  TGdkContentProviderClass = record
    parent_class: TGObjectClass;
    content_changed: procedure(provider: PGdkContentProvider); cdecl;
    attach_clipboard: procedure(provider: PGdkContentProvider; clipboard: PGdkClipboard); cdecl;
    detach_clipboard: procedure(provider: PGdkContentProvider; clipboard: PGdkClipboard); cdecl;
    ref_formats: function(provider: PGdkContentProvider): PGdkContentFormats; cdecl;
    ref_storable_formats: function(provider: PGdkContentProvider): PGdkContentFormats; cdecl;
    write_mime_type_async: procedure(provider: PGdkContentProvider; mime_type: PChar; stream: PGOutputStream; io_priority: longint; cancellable: PGCancellable;
      callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl;
    write_mime_type_finish: function(provider: PGdkContentProvider; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl;
    get_value: function(provider: PGdkContentProvider; Value: PGValue; error: PPGError): Tgboolean; cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGdkContentProviderClass = ^TGdkContentProviderClass;


function gdk_content_provider_get_type: TGType; cdecl; external gtklib;
function gdk_content_provider_ref_formats(provider: PGdkContentProvider): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_provider_ref_storable_formats(provider: PGdkContentProvider): PGdkContentFormats; cdecl; external gtklib;
procedure gdk_content_provider_content_changed(provider: PGdkContentProvider); cdecl; external gtklib;
procedure gdk_content_provider_write_mime_type_async(provider: PGdkContentProvider; mime_type: PChar; stream: PGOutputStream; io_priority: longint; cancellable: PGCancellable;
  callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gdk_content_provider_write_mime_type_finish(provider: PGdkContentProvider; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;
function gdk_content_provider_get_value(provider: PGdkContentProvider; Value: PGValue; error: PPGError): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 19:10:57 ===

function GDK_TYPE_CONTENT_PROVIDER: TGType;
function GDK_CONTENT_PROVIDER(obj: Pointer): PGdkContentProvider;
function GDK_CONTENT_PROVIDER_CLASS(klass: Pointer): PGdkContentProviderClass;
function GDK_IS_CONTENT_PROVIDER(obj: Pointer): Tgboolean;
function GDK_IS_CONTENT_PROVIDER_CLASS(klass: Pointer): Tgboolean;
function GDK_CONTENT_PROVIDER_GET_CLASS(obj: Pointer): PGdkContentProviderClass;

implementation

function GDK_TYPE_CONTENT_PROVIDER: TGType;
begin
  GDK_TYPE_CONTENT_PROVIDER := gdk_content_provider_get_type;
end;

function GDK_CONTENT_PROVIDER(obj: Pointer): PGdkContentProvider;
begin
  Result := PGdkContentProvider(g_type_check_instance_cast(obj, GDK_TYPE_CONTENT_PROVIDER));
end;

function GDK_CONTENT_PROVIDER_CLASS(klass: Pointer): PGdkContentProviderClass;
begin
  Result := PGdkContentProviderClass(g_type_check_class_cast(klass, GDK_TYPE_CONTENT_PROVIDER));
end;

function GDK_IS_CONTENT_PROVIDER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_CONTENT_PROVIDER);
end;

function GDK_IS_CONTENT_PROVIDER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_CONTENT_PROVIDER);
end;

function GDK_CONTENT_PROVIDER_GET_CLASS(obj: Pointer): PGdkContentProviderClass;
begin
  Result := PGdkContentProviderClass(PGTypeInstance(obj)^.g_class);
end;



end.
