unit gdkcontentformats;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkContentFormats = record
  end;
  PGdkContentFormats = ^TGdkContentFormats;

  TGdkContentFormatsBuilder = record
  end;
  PGdkContentFormatsBuilder = ^TGdkContentFormatsBuilder;

  TGdkFileList = record
  end;
  PGdkFileList = ^TGdkFileList;

function gdk_intern_mime_type(_string: PChar): PChar; cdecl; external gtklib;
function gdk_content_formats_get_type: TGType; cdecl; external gtklib;
function gdk_content_formats_new(mime_types: PPchar; n_mime_types: Tguint): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_new_for_gtype(_type: TGType): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_parse(_string: PChar): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_ref(formats: PGdkContentFormats): PGdkContentFormats; cdecl; external gtklib;
procedure gdk_content_formats_unref(formats: PGdkContentFormats); cdecl; external gtklib;
procedure gdk_content_formats_print(formats: PGdkContentFormats; _string: PGString); cdecl; external gtklib;
function gdk_content_formats_to_string(formats: PGdkContentFormats): PChar; cdecl; external gtklib;
function gdk_content_formats_get_gtypes(formats: PGdkContentFormats; n_gtypes: Pgsize): PGType; cdecl; external gtklib;
function gdk_content_formats_get_mime_types(formats: PGdkContentFormats; n_mime_types: Pgsize): PPchar; cdecl; external gtklib;
function gdk_content_formats_union(First: PGdkContentFormats; second: PGdkContentFormats): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_match(First: PGdkContentFormats; second: PGdkContentFormats): Tgboolean; cdecl; external gtklib;
function gdk_content_formats_match_gtype(First: PGdkContentFormats; second: PGdkContentFormats): TGType; cdecl; external gtklib;
function gdk_content_formats_match_mime_type(First: PGdkContentFormats; second: PGdkContentFormats): PChar; cdecl; external gtklib;
function gdk_content_formats_contain_gtype(formats: PGdkContentFormats; _type: TGType): Tgboolean; cdecl; external gtklib;
function gdk_content_formats_contain_mime_type(formats: PGdkContentFormats; mime_type: PChar): Tgboolean; cdecl; external gtklib;

function gdk_content_formats_builder_get_type: TGType; cdecl; external gtklib;
function gdk_content_formats_builder_new: PGdkContentFormatsBuilder; cdecl; external gtklib;
function gdk_content_formats_builder_ref(builder: PGdkContentFormatsBuilder): PGdkContentFormatsBuilder; cdecl; external gtklib;
procedure gdk_content_formats_builder_unref(builder: PGdkContentFormatsBuilder); cdecl; external gtklib;
function gdk_content_formats_builder_free_to_formats(builder: PGdkContentFormatsBuilder): PGdkContentFormats; cdecl; external gtklib;
function gdk_content_formats_builder_to_formats(builder: PGdkContentFormatsBuilder): PGdkContentFormats; cdecl; external gtklib;
procedure gdk_content_formats_builder_add_formats(builder: PGdkContentFormatsBuilder; formats: PGdkContentFormats); cdecl; external gtklib;
procedure gdk_content_formats_builder_add_mime_type(builder: PGdkContentFormatsBuilder; mime_type: PChar); cdecl; external gtklib;
procedure gdk_content_formats_builder_add_gtype(builder: PGdkContentFormatsBuilder; _type: TGType); cdecl; external gtklib;

function gdk_file_list_get_type: TGType; cdecl; external gtklib;

function gdk_file_list_get_files(file_list: PGdkFileList): PGSList; cdecl; external gtklib;
function gdk_file_list_new_from_list(files: PGSList): PGdkFileList; cdecl; external gtklib;
function gdk_file_list_new_from_array(files: PPGFile; n_files: Tgsize): PGdkFileList; cdecl; external gtklib;

// === Konventiert am: 31-7-24 16:35:25 ===

function GDK_TYPE_CONTENT_FORMATS: TGType;

function GDK_TYPE_CONTENT_FORMATS_BUILDER: TGType;
function GDK_TYPE_FILE_LIST: TGType;


implementation

function GDK_TYPE_CONTENT_FORMATS: TGType;
begin
  GDK_TYPE_CONTENT_FORMATS := gdk_content_formats_get_type;
end;

function GDK_TYPE_CONTENT_FORMATS_BUILDER: TGType;
begin
  GDK_TYPE_CONTENT_FORMATS_BUILDER := gdk_content_formats_builder_get_type;
end;

function GDK_TYPE_FILE_LIST: TGType;
begin
  GDK_TYPE_FILE_LIST := gdk_file_list_get_type;
end;


end.
