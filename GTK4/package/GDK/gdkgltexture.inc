/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkGLTexture = record
  end;
  PGdkGLTexture = ^TGdkGLTexture;

function gdk_gl_texture_get_type: TGType; cdecl; external gtklib;
function gdk_gl_texture_new(context: PGdkGLContext; id: Tguint; Width: longint; Height: longint; Destroy: TGDestroyNotify;
  Data: Tgpointer): PGdkTexture; cdecl; external gtklib;
procedure gdk_gl_texture_release(self: PGdkGLTexture); cdecl; external gtklib;

// === Konventiert am: 2-8-24 15:54:52 ===

function GDK_TYPE_GL_TEXTURE: TGType;
function GDK_GL_TEXTURE(obj: Pointer): PGdkGLTexture;
function GDK_IS_GL_TEXTURE(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_GL_TEXTURE: TGType;
begin
  GDK_TYPE_GL_TEXTURE := gdk_gl_texture_get_type;
end;

function GDK_GL_TEXTURE(obj: Pointer): PGdkGLTexture;
begin
  Result := PGdkGLTexture(g_type_check_instance_cast(obj, GDK_TYPE_GL_TEXTURE));
end;

function GDK_IS_GL_TEXTURE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_GL_TEXTURE);
end;



{$ENDIF read_implementation}
