/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

const
  GTK_MEDIA_FILE_EXTENSION_POINT_NAME = 'gtk-media-file';

  {G_DECLARE_DERIVABLE_TYPE (GtkMediaFile, gtk_media_file, GTK, MEDIA_FILE, GtkMediaStream) }
type
  TGtkMediaFile = record
    parent_instance: TGtkMediaStream
  end;
  PGtkMediaFile = ^TGtkMediaFile;

  PGtkMediaFileClass = ^TGtkMediaFileClass;

  TGtkMediaFileClass = record
    parent_class: TGtkMediaStreamClass;
    Open: procedure(self: PGtkMediaFile); cdecl;
    Close: procedure(self: PGtkMediaFile); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;


function gtk_media_file_get_type: TGType; cdecl; external gtklib;
function gtk_media_file_new: PGtkMediaStream; cdecl; external gtklib;
function gtk_media_file_new_for_filename(filename: PChar): PGtkMediaStream; cdecl; external gtklib;
function gtk_media_file_new_for_resource(resource_path: PChar): PGtkMediaStream; cdecl; external gtklib;
function gtk_media_file_new_for_file(file_: PGFile): PGtkMediaStream; cdecl; external gtklib;
function gtk_media_file_new_for_input_stream(stream: PGInputStream): PGtkMediaStream; cdecl; external gtklib;
procedure gtk_media_file_clear(self: PGtkMediaFile); cdecl; external gtklib;
procedure gtk_media_file_set_filename(self: PGtkMediaFile; filename: PChar); cdecl; external gtklib;
procedure gtk_media_file_set_resource(self: PGtkMediaFile; resource_path: PChar); cdecl; external gtklib;
procedure gtk_media_file_set_file(self: PGtkMediaFile; file_: PGFile); cdecl; external gtklib;
function gtk_media_file_get_file(self: PGtkMediaFile): PGFile; cdecl; external gtklib;
procedure gtk_media_file_set_input_stream(self: PGtkMediaFile; stream: PGInputStream); cdecl; external gtklib;
function gtk_media_file_get_input_stream(self: PGtkMediaFile): PGInputStream; cdecl; external gtklib;

// === Konventiert am: 28-7-24 13:37:10 ===

function GTK_TYPE_MEDIA_FILE: TGType;
function GTK_MEDIA_FILE(obj: Pointer): PGtkMediaFile;
function GTK_IS_MEDIA_FILE(obj: Pointer): Tgboolean;
function GTK_MEDIA_FILE_CLASS(klass: Pointer): PGtkMediaFileClass;
function GTK_IS_MEDIA_FILE_CLASS(klass: Pointer): Tgboolean;
function GTK_MEDIA_FILE_GET_CLASS(obj: Pointer): PGtkMediaFileClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_MEDIA_FILE: TGType;
begin
  Result := gtk_media_file_get_type;
end;

function GTK_MEDIA_FILE(obj: Pointer): PGtkMediaFile;
begin
  Result := PGtkMediaFile(g_type_check_instance_cast(obj, GTK_TYPE_MEDIA_FILE));
end;

function GTK_IS_MEDIA_FILE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MEDIA_FILE);
end;

function GTK_MEDIA_FILE_CLASS(klass: Pointer): PGtkMediaFileClass;
begin
  Result := PGtkMediaFileClass(g_type_check_class_cast(klass, GTK_TYPE_MEDIA_FILE));
end;

function GTK_IS_MEDIA_FILE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_MEDIA_FILE);
end;

function GTK_MEDIA_FILE_GET_CLASS(obj: Pointer): PGtkMediaFileClass;
begin
  Result := PGtkMediaFileClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
