/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_DERIVABLE_TYPE (GtkMediaStream, gtk_media_stream, GTK, MEDIA_STREAM, GObject) }
type
  TGtkMediaStream = record
    parent_instance: TGObject
  end;
  PGtkMediaStream = ^TGtkMediaStream;

  TGtkMediaStreamClass = record
    parent_class: TGObjectClass;
    play: function(self: PGtkMediaStream): Tgboolean; cdecl;
    pause: procedure(self: PGtkMediaStream); cdecl;
    seek: procedure(self: PGtkMediaStream; timestamp: Tgint64); cdecl;
    update_audio: procedure(self: PGtkMediaStream; muted: Tgboolean; volume: Tdouble); cdecl;
    realize: procedure(self: PGtkMediaStream; surface: PGdkSurface); cdecl;
    unrealize: procedure(self: PGtkMediaStream; surface: PGdkSurface); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
    _gtk_reserved5: procedure; cdecl;
    _gtk_reserved6: procedure; cdecl;
    _gtk_reserved7: procedure; cdecl;
    _gtk_reserved8: procedure; cdecl;
  end;
  PGtkMediaStreamClass = ^TGtkMediaStreamClass;


function gtk_media_stream_get_type: TGType; cdecl; external gtklib;
function gtk_media_stream_is_prepared(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
function gtk_media_stream_get_error(self: PGtkMediaStream): PGError; cdecl; external gtklib;
function gtk_media_stream_has_audio(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
function gtk_media_stream_has_video(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
procedure gtk_media_stream_play(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_pause(self: PGtkMediaStream); cdecl; external gtklib;
function gtk_media_stream_get_playing(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
procedure gtk_media_stream_set_playing(self: PGtkMediaStream; playing: Tgboolean); cdecl; external gtklib;
function gtk_media_stream_get_ended(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
function gtk_media_stream_get_timestamp(self: PGtkMediaStream): Tgint64; cdecl; external gtklib;
function gtk_media_stream_get_duration(self: PGtkMediaStream): Tgint64; cdecl; external gtklib;
function gtk_media_stream_is_seekable(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
function gtk_media_stream_is_seeking(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
procedure gtk_media_stream_seek(self: PGtkMediaStream; timestamp: Tgint64); cdecl; external gtklib;
function gtk_media_stream_get_loop(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
procedure gtk_media_stream_set_loop(self: PGtkMediaStream; loop: Tgboolean); cdecl; external gtklib;
function gtk_media_stream_get_muted(self: PGtkMediaStream): Tgboolean; cdecl; external gtklib;
procedure gtk_media_stream_set_muted(self: PGtkMediaStream; muted: Tgboolean); cdecl; external gtklib;
function gtk_media_stream_get_volume(self: PGtkMediaStream): Tdouble; cdecl; external gtklib;
procedure gtk_media_stream_set_volume(self: PGtkMediaStream; volume: Tdouble); cdecl; external gtklib;
procedure gtk_media_stream_realize(self: PGtkMediaStream; surface: PGdkSurface); cdecl; external gtklib;
procedure gtk_media_stream_unrealize(self: PGtkMediaStream; surface: PGdkSurface); cdecl; external gtklib;
procedure gtk_media_stream_prepared(self: PGtkMediaStream; has_audio: Tgboolean; has_video: Tgboolean; seekable: Tgboolean; duration: Tgint64); cdecl; external gtklib;
procedure gtk_media_stream_unprepared(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_stream_prepared(self: PGtkMediaStream; has_audio: Tgboolean; has_video: Tgboolean; seekable: Tgboolean; duration: Tgint64); cdecl; external gtklib;
procedure gtk_media_stream_stream_unprepared(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_update(self: PGtkMediaStream; timestamp: Tgint64); cdecl; external gtklib;
procedure gtk_media_stream_ended(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_stream_ended(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_seek_success(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_seek_failed(self: PGtkMediaStream); cdecl; external gtklib;
procedure gtk_media_stream_gerror(self: PGtkMediaStream; error: PGError); cdecl; external gtklib;
procedure gtk_media_stream_error(self: PGtkMediaStream; domain: TGQuark; code: longint; format: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_media_stream_error(self: PGtkMediaStream; domain: TGQuark; code: longint; format: PChar); cdecl; external gtklib;
procedure gtk_media_stream_error_valist(self: PGtkMediaStream; domain: TGQuark; code: longint; format: PChar; args: Tva_list); cdecl; external gtklib;

// === Konventiert am: 23-7-24 13:54:56 ===

function GTK_TYPE_MEDIA_STREAM: TGType;
function GTK_MEDIA_STREAM(obj: Pointer): PGtkMediaStream;
function GTK_IS_MEDIA_STREAM(obj: Pointer): Tgboolean;
function GTK_MEDIA_STREAM_CLASS(klass: Pointer): PGtkMediaStreamClass;
function GTK_IS_MEDIA_STREAM_CLASS(klass: Pointer): Tgboolean;
function GTK_MEDIA_STREAM_GET_CLASS(obj: Pointer): PGtkMediaStreamClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_MEDIA_STREAM: TGType;
begin
  Result := gtk_media_stream_get_type;
end;

function GTK_MEDIA_STREAM(obj: Pointer): PGtkMediaStream;
begin
  Result := PGtkMediaStream(g_type_check_instance_cast(obj, GTK_TYPE_MEDIA_STREAM));
end;

function GTK_IS_MEDIA_STREAM(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MEDIA_STREAM);
end;

function GTK_MEDIA_STREAM_CLASS(klass: Pointer): PGtkMediaStreamClass;
begin
  Result := PGtkMediaStreamClass(g_type_check_class_cast(klass, GTK_TYPE_MEDIA_STREAM));
end;

function GTK_IS_MEDIA_STREAM_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_MEDIA_STREAM);
end;

function GTK_MEDIA_STREAM_GET_CLASS(obj: Pointer): PGtkMediaStreamClass;
begin
  Result := PGtkMediaStreamClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
