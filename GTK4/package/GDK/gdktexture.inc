/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkTexture = record
  end;
  PGdkTexture = ^TGdkTexture;


function gdk_texture_error_quark: TGQuark; cdecl; external gtklib;

type
  PGdkTextureError = ^TGdkTextureError;
  TGdkTextureError = longint;

const
  GDK_TEXTURE_ERROR_TOO_LARGE = 0;
  GDK_TEXTURE_ERROR_CORRUPT_IMAGE = 1;
  GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT = 2;
  GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT = 3;


function gdk_texture_get_type: TGType; cdecl; external gtklib;
function gdk_texture_new_for_pixbuf(pixbuf: PGdkPixbuf): PGdkTexture; cdecl; external gtklib;
function gdk_texture_new_from_resource(resource_path: PChar): PGdkTexture; cdecl; external gtklib;
function gdk_texture_new_from_file(file_: PGFile; error: PPGError): PGdkTexture; cdecl; external gtklib;
function gdk_texture_new_from_filename(path: PChar; error: PPGError): PGdkTexture; cdecl; external gtklib;
function gdk_texture_new_from_bytes(bytes: PGBytes; error: PPGError): PGdkTexture; cdecl; external gtklib;
function gdk_texture_get_width(texture: PGdkTexture): longint; cdecl; external gtklib;
function gdk_texture_get_height(texture: PGdkTexture): longint; cdecl; external gtklib;
function gdk_texture_get_format(self: PGdkTexture): TGdkMemoryFormat; cdecl; external gtklib;
procedure gdk_texture_download(texture: PGdkTexture; Data: Pguchar; stride: Tgsize); cdecl; external gtklib;
function gdk_texture_save_to_png(texture: PGdkTexture; filename: PChar): Tgboolean; cdecl; external gtklib;
function gdk_texture_save_to_png_bytes(texture: PGdkTexture): PGBytes; cdecl; external gtklib;
function gdk_texture_save_to_tiff(texture: PGdkTexture; filename: PChar): Tgboolean; cdecl; external gtklib;
function gdk_texture_save_to_tiff_bytes(texture: PGdkTexture): PGBytes; cdecl; external gtklib;

function GDK_TEXTURE_ERROR: TGQuark;


// === Konventiert am: 31-7-24 19:30:44 ===

function GDK_TYPE_TEXTURE: TGType;
function GDK_TEXTURE(obj: Pointer): PGdkTexture;
function GDK_IS_TEXTURE(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_TEXTURE: TGType;
begin
  GDK_TYPE_TEXTURE := gdk_texture_get_type;
end;

function GDK_TEXTURE(obj: Pointer): PGdkTexture;
begin
  Result := PGdkTexture(g_type_check_instance_cast(obj, GDK_TYPE_TEXTURE));
end;

function GDK_IS_TEXTURE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_TEXTURE);
end;

// =====

function GDK_TEXTURE_ERROR: TGQuark;
begin
  GDK_TEXTURE_ERROR := gdk_texture_error_quark;
end;


{$ENDIF read_implementation}
