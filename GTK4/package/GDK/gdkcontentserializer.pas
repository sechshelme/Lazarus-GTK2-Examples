unit gdkcontentserializer;

interface

uses
  glib2, common_GTK,  gdkcontentformats;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkContentSerializer = record
  end;
  PGdkContentSerializer = ^TGdkContentSerializer;

  TGdkContentSerializeFunc = procedure(serializer: PGdkContentSerializer); cdecl;

function gdk_content_serializer_get_type: TGType; cdecl; external gtklib;
function gdk_content_serializer_get_mime_type(serializer: PGdkContentSerializer): PChar; cdecl; external gtklib;
function gdk_content_serializer_get_gtype(serializer: PGdkContentSerializer): TGType; cdecl; external gtklib;
function gdk_content_serializer_get_value(serializer: PGdkContentSerializer): PGValue; cdecl; external gtklib;
function gdk_content_serializer_get_output_stream(serializer: PGdkContentSerializer): PGOutputStream; cdecl; external gtklib;
function gdk_content_serializer_get_priority(serializer: PGdkContentSerializer): longint; cdecl; external gtklib;
function gdk_content_serializer_get_cancellable(serializer: PGdkContentSerializer): PGCancellable; cdecl; external gtklib;
function gdk_content_serializer_get_user_data(serializer: PGdkContentSerializer): Tgpointer; cdecl; external gtklib;
procedure gdk_content_serializer_set_task_data(serializer: PGdkContentSerializer; Data: Tgpointer; notify: TGDestroyNotify); cdecl; external gtklib;
function gdk_content_serializer_get_task_data(serializer: PGdkContentSerializer): Tgpointer; cdecl; external gtklib;
procedure gdk_content_serializer_return_success(serializer: PGdkContentSerializer); cdecl; external gtklib;
procedure gdk_content_serializer_return_error(serializer: PGdkContentSerializer; error: PGError); cdecl; external gtklib;
function gdk_content_formats_union_serialize_gtypes(formats: PGdkContentFormats): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_union_serialize_mime_types(formats: PGdkContentFormats): PGdkContentFormats; cdecl; external gtklib;
procedure gdk_content_register_serializer(_type: TGType; mime_type: PChar; serialize: TGdkContentSerializeFunc; Data: Tgpointer; notify: TGDestroyNotify); cdecl; external gtklib;
procedure gdk_content_serialize_async(stream: PGOutputStream; mime_type: PChar; Value: PGValue; io_priority: longint; cancellable: PGCancellable;
  callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gdk_content_serialize_finish(Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 31-7-24 17:03:25 ===

function GDK_TYPE_CONTENT_SERIALIZER: TGType;
function GDK_CONTENT_SERIALIZER(obj: Pointer): PGdkContentSerializer;
function GDK_IS_CONTENT_SERIALIZER(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_CONTENT_SERIALIZER: TGType;
begin
  GDK_TYPE_CONTENT_SERIALIZER := gdk_content_serializer_get_type;
end;

function GDK_CONTENT_SERIALIZER(obj: Pointer): PGdkContentSerializer;
begin
  Result := PGdkContentSerializer(g_type_check_instance_cast(obj, GDK_TYPE_CONTENT_SERIALIZER));
end;

function GDK_IS_CONTENT_SERIALIZER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_CONTENT_SERIALIZER);
end;



end.
