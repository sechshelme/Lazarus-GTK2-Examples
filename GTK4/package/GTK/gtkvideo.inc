/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkVideo, gtk_video, GTK, VIDEO, GtkWidget) }
type
  TGtkVideo = record
  end;
  PGtkVideo = ^TGtkVideo;

  TGtkVideoClass = record
    parent_class: TGtkWidgetClass;
  end;
  PGtkVideoClass = ^TGtkVideoClass;

function gtk_video_get_type: TGType; cdecl; external gtklib;
function gtk_video_new: PGtkWidget; cdecl; external gtklib;
function gtk_video_new_for_media_stream(stream: PGtkMediaStream): PGtkWidget; cdecl; external gtklib;
function gtk_video_new_for_file(file_: PGFile): PGtkWidget; cdecl; external gtklib;
function gtk_video_new_for_filename(filename: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_video_new_for_resource(resource_path: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_video_get_media_stream(self: PGtkVideo): PGtkMediaStream; cdecl; external gtklib;
procedure gtk_video_set_media_stream(self: PGtkVideo; stream: PGtkMediaStream); cdecl; external gtklib;
function gtk_video_get_file(self: PGtkVideo): PGFile; cdecl; external gtklib;
procedure gtk_video_set_file(self: PGtkVideo; file_: PGFile); cdecl; external gtklib;
procedure gtk_video_set_filename(self: PGtkVideo; filename: PChar); cdecl; external gtklib;
procedure gtk_video_set_resource(self: PGtkVideo; resource_path: PChar); cdecl; external gtklib;
function gtk_video_get_autoplay(self: PGtkVideo): Tgboolean; cdecl; external gtklib;
procedure gtk_video_set_autoplay(self: PGtkVideo; autoplay: Tgboolean); cdecl; external gtklib;
function gtk_video_get_loop(self: PGtkVideo): Tgboolean; cdecl; external gtklib;
procedure gtk_video_set_loop(self: PGtkVideo; loop: Tgboolean); cdecl; external gtklib;
function gtk_video_get_graphics_offload(self: PGtkVideo): TGtkGraphicsOffloadEnabled; cdecl; external gtklib;
procedure gtk_video_set_graphics_offload(self: PGtkVideo; Enabled: TGtkGraphicsOffloadEnabled); cdecl; external gtklib;

// === Konventiert am: 28-7-24 17:06:57 ===

function GTK_TYPE_VIDEO: TGType;
function GTK_VIDEO(obj: Pointer): PGtkVideo;
function GTK_IS_VIDEO(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_VIDEO: TGType;
begin
  Result := gtk_video_get_type;
end;

function GTK_VIDEO(obj: Pointer): PGtkVideo;
begin
  Result := PGtkVideo(g_type_check_instance_cast(obj, GTK_TYPE_VIDEO));
end;

function GTK_IS_VIDEO(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_VIDEO);
end;




{$ENDIF read_implementation}
