/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {GDK_DECLARE_INTERNAL_TYPE (GdkGLTextureBuilder, gdk_gl_texture_builder, GDK, GL_TEXTURE_BUILDER, GObject) }
type
  TGdkGLTextureBuilder = record
  end;
  PGdkGLTextureBuilder = ^TGdkGLTextureBuilder;

  TGdkGLTextureBuilderClass = record
  end;
  PGdkGLTextureBuilderClass = ^TGdkGLTextureBuilderClass;

function gdk_gl_texture_builder_get_type: TGType; cdecl; external gtklib;
function gdk_gl_texture_builder_new: PGdkGLTextureBuilder; cdecl; external gtklib;
function gdk_gl_texture_builder_get_context(self: PGdkGLTextureBuilder): PGdkGLContext; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_context(self: PGdkGLTextureBuilder; context: PGdkGLContext); cdecl; external gtklib;
function gdk_gl_texture_builder_get_id(self: PGdkGLTextureBuilder): Tguint; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_id(self: PGdkGLTextureBuilder; id: Tguint); cdecl; external gtklib;
function gdk_gl_texture_builder_get_width(self: PGdkGLTextureBuilder): longint; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_width(self: PGdkGLTextureBuilder; Width: longint); cdecl; external gtklib;
function gdk_gl_texture_builder_get_height(self: PGdkGLTextureBuilder): longint; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_height(self: PGdkGLTextureBuilder; Height: longint); cdecl; external gtklib;
function gdk_gl_texture_builder_get_format(self: PGdkGLTextureBuilder): TGdkMemoryFormat; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_format(self: PGdkGLTextureBuilder; format: TGdkMemoryFormat); cdecl; external gtklib;
function gdk_gl_texture_builder_get_has_mipmap(self: PGdkGLTextureBuilder): Tgboolean; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_has_mipmap(self: PGdkGLTextureBuilder; has_mipmap: Tgboolean); cdecl; external gtklib;
function gdk_gl_texture_builder_get_sync(self: PGdkGLTextureBuilder): Tgpointer; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_sync(self: PGdkGLTextureBuilder; sync: Tgpointer); cdecl; external gtklib;
function gdk_gl_texture_builder_get_update_texture(self: PGdkGLTextureBuilder): PGdkTexture; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_update_texture(self: PGdkGLTextureBuilder; texture: PGdkTexture); cdecl; external gtklib;
function gdk_gl_texture_builder_get_update_region(self: PGdkGLTextureBuilder): Pcairo_region_t; cdecl; external gtklib;
procedure gdk_gl_texture_builder_set_update_region(self: PGdkGLTextureBuilder; region: Pcairo_region_t); cdecl; external gtklib;
function gdk_gl_texture_builder_build(self: PGdkGLTextureBuilder; Destroy: TGDestroyNotify; Data: Tgpointer): PGdkTexture; cdecl; external gtklib;

// === Konventiert am: 31-7-24 19:30:34 ===

function GDK_TYPE_GL_TEXTURE_BUILDER: TGType;
function GDK_GL_TEXTURE_BUILDER(obj: Pointer): PGdkGLTextureBuilder;
function GDK_IS_GL_TEXTURE_BUILDER(obj: Pointer): Tgboolean;
function GDK_GL_TEXTURE_BUILDER_CLASS(klass: Pointer): PGdkGLTextureBuilderClass;
function GDK_IS_GL_TEXTURE_BUILDER_CLASS(klass: Pointer): Tgboolean;
function GDK_GL_TEXTURE_BUILDER_GET_CLASS(obj: Pointer): PGdkGLTextureBuilderClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_GL_TEXTURE_BUILDER: TGType;
begin
  Result := gdk_gl_texture_builder_get_type;
end;

function GDK_GL_TEXTURE_BUILDER(obj: Pointer): PGdkGLTextureBuilder;
begin
  Result := PGdkGLTextureBuilder(g_type_check_instance_cast(obj, GDK_TYPE_GL_TEXTURE_BUILDER));
end;

function GDK_IS_GL_TEXTURE_BUILDER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_GL_TEXTURE_BUILDER);
end;

function GDK_GL_TEXTURE_BUILDER_CLASS(klass: Pointer): PGdkGLTextureBuilderClass;
begin
  Result := PGdkGLTextureBuilderClass(g_type_check_class_cast(klass, GDK_TYPE_GL_TEXTURE_BUILDER));
end;

function GDK_IS_GL_TEXTURE_BUILDER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_GL_TEXTURE_BUILDER);
end;

function GDK_GL_TEXTURE_BUILDER_GET_CLASS(obj: Pointer): PGdkGLTextureBuilderClass;
begin
  Result := PGdkGLTextureBuilderClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
