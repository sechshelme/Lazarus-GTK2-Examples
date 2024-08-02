unit gdkcontentdeserializer;

interface

uses
  glib2, common_GTK, gdkcontentformats;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkContentDeserializer = record
  end;
  PGdkContentDeserializer = ^TGdkContentDeserializer;

  TGdkContentDeserializeFunc = procedure(deserializer: PGdkContentDeserializer); cdecl;

function gdk_content_deserializer_get_type: TGType; cdecl; external gtklib;
function gdk_content_deserializer_get_mime_type(deserializer: PGdkContentDeserializer): PChar; cdecl; external gtklib;
function gdk_content_deserializer_get_gtype(deserializer: PGdkContentDeserializer): TGType; cdecl; external gtklib;
function gdk_content_deserializer_get_value(deserializer: PGdkContentDeserializer): PGValue; cdecl; external gtklib;
function gdk_content_deserializer_get_input_stream(deserializer: PGdkContentDeserializer): PGInputStream; cdecl; external gtklib;
function gdk_content_deserializer_get_priority(deserializer: PGdkContentDeserializer): longint; cdecl; external gtklib;
function gdk_content_deserializer_get_cancellable(deserializer: PGdkContentDeserializer): PGCancellable; cdecl; external gtklib;
function gdk_content_deserializer_get_user_data(deserializer: PGdkContentDeserializer): Tgpointer; cdecl; external gtklib;
procedure gdk_content_deserializer_set_task_data(deserializer: PGdkContentDeserializer; Data: Tgpointer; notify: TGDestroyNotify); cdecl; external gtklib;
function gdk_content_deserializer_get_task_data(deserializer: PGdkContentDeserializer): Tgpointer; cdecl; external gtklib;
procedure gdk_content_deserializer_return_success(deserializer: PGdkContentDeserializer); cdecl; external gtklib;
procedure gdk_content_deserializer_return_error(deserializer: PGdkContentDeserializer; error: PGError); cdecl; external gtklib;
function gdk_content_formats_union_deserialize_gtypes(formats: PGdkContentFormats): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_union_deserialize_mime_types(formats: PGdkContentFormats): PGdkContentFormats; cdecl; external gtklib;
procedure gdk_content_register_deserializer(mime_type: PChar; _type: TGType; deserialize: TGdkContentDeserializeFunc; Data: Tgpointer; notify: TGDestroyNotify); cdecl; external gtklib;
procedure gdk_content_deserialize_async(stream: PGInputStream; mime_type: PChar; _type: TGType; io_priority: longint; cancellable: PGCancellable;
  callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gdk_content_deserialize_finish(Result: PGAsyncResult; Value: PGValue; error: PPGError): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 31-7-24 17:03:20 ===

function GDK_TYPE_CONTENT_DESERIALIZER: TGType;
function GDK_CONTENT_DESERIALIZER(obj: Pointer): PGdkContentDeserializer;
function GDK_IS_CONTENT_DESERIALIZER(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_CONTENT_DESERIALIZER: TGType;
begin
  GDK_TYPE_CONTENT_DESERIALIZER := gdk_content_deserializer_get_type;
end;

function GDK_CONTENT_DESERIALIZER(obj: Pointer): PGdkContentDeserializer;
begin
  Result := PGdkContentDeserializer(g_type_check_instance_cast(obj, GDK_TYPE_CONTENT_DESERIALIZER));
end;

function GDK_IS_CONTENT_DESERIALIZER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_CONTENT_DESERIALIZER);
end;



end.
