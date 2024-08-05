/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_FINAL_TYPE (GskGLShader, gsk_gl_shader, GSK, GL_SHADER, GObject) }
type
  TGskGLShader = record
  end;
  PGskGLShader = ^TGskGLShader;

  TGskGLShaderClass = record
    parent_class: TGObjectClass;
  end;
  PGskGLShaderClass = ^TGskGLShaderClass;

  TGskShaderArgsBuilder = record
  end;
  PGskShaderArgsBuilder = ^TGskShaderArgsBuilder;

function gsk_gl_shader_get_type: TGType; cdecl; external gtklib;
function gsk_gl_shader_new_from_bytes(sourcecode: PGBytes): PGskGLShader; cdecl; external gtklib;
function gsk_gl_shader_new_from_resource(resource_path: PChar): PGskGLShader; cdecl; external gtklib;
function gsk_gl_shader_compile(shader: PGskGLShader; renderer: PGskRenderer; error: PPGError): Tgboolean; cdecl; external gtklib;
function gsk_gl_shader_get_source(shader: PGskGLShader): PGBytes; cdecl; external gtklib;
function gsk_gl_shader_get_resource(shader: PGskGLShader): PChar; cdecl; external gtklib;
function gsk_gl_shader_get_n_textures(shader: PGskGLShader): longint; cdecl; external gtklib;
function gsk_gl_shader_get_n_uniforms(shader: PGskGLShader): longint; cdecl; external gtklib;
function gsk_gl_shader_get_uniform_name(shader: PGskGLShader; idx: longint): PChar; cdecl; external gtklib;
function gsk_gl_shader_find_uniform_by_name(shader: PGskGLShader; Name: PChar): longint; cdecl; external gtklib;
function gsk_gl_shader_get_uniform_type(shader: PGskGLShader; idx: longint): TGskGLUniformType; cdecl; external gtklib;
function gsk_gl_shader_get_uniform_offset(shader: PGskGLShader; idx: longint): longint; cdecl; external gtklib;
function gsk_gl_shader_get_args_size(shader: PGskGLShader): Tgsize; cdecl; external gtklib;
function gsk_gl_shader_format_args_va(shader: PGskGLShader; uniforms: Tva_list): PGBytes; cdecl; external gtklib;
function gsk_gl_shader_format_args(shader: PGskGLShader; args: array of const): PGBytes; cdecl; external gtklib;
function gsk_gl_shader_format_args(shader: PGskGLShader): PGBytes; cdecl; external gtklib;
function gsk_gl_shader_get_arg_float(shader: PGskGLShader; args: PGBytes; idx: longint): single; cdecl; external gtklib;
function gsk_gl_shader_get_arg_int(shader: PGskGLShader; args: PGBytes; idx: longint): Tgint32; cdecl; external gtklib;
function gsk_gl_shader_get_arg_uint(shader: PGskGLShader; args: PGBytes; idx: longint): Tguint32; cdecl; external gtklib;
function gsk_gl_shader_get_arg_bool(shader: PGskGLShader; args: PGBytes; idx: longint): Tgboolean; cdecl; external gtklib;
procedure gsk_gl_shader_get_arg_vec2(shader: PGskGLShader; args: PGBytes; idx: longint; out_value: Pgraphene_vec2_t); cdecl; external gtklib;
procedure gsk_gl_shader_get_arg_vec3(shader: PGskGLShader; args: PGBytes; idx: longint; out_value: Pgraphene_vec3_t); cdecl; external gtklib;
procedure gsk_gl_shader_get_arg_vec4(shader: PGskGLShader; args: PGBytes; idx: longint; out_value: Pgraphene_vec4_t); cdecl; external gtklib;
function gsk_shader_args_builder_get_type: TGType; cdecl; external gtklib;
function gsk_shader_args_builder_new(shader: PGskGLShader; initial_values: PGBytes): PGskShaderArgsBuilder; cdecl; external gtklib;
function gsk_shader_args_builder_to_args(builder: PGskShaderArgsBuilder): PGBytes; cdecl; external gtklib;
function gsk_shader_args_builder_free_to_args(builder: PGskShaderArgsBuilder): PGBytes; cdecl; external gtklib;
function gsk_shader_args_builder_ref(builder: PGskShaderArgsBuilder): PGskShaderArgsBuilder; cdecl; external gtklib;
procedure gsk_shader_args_builder_unref(builder: PGskShaderArgsBuilder); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_float(builder: PGskShaderArgsBuilder; idx: longint; Value: single); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_int(builder: PGskShaderArgsBuilder; idx: longint; Value: Tgint32); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_uint(builder: PGskShaderArgsBuilder; idx: longint; Value: Tguint32); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_bool(builder: PGskShaderArgsBuilder; idx: longint; Value: Tgboolean); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_vec2(builder: PGskShaderArgsBuilder; idx: longint; Value: Pgraphene_vec2_t); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_vec3(builder: PGskShaderArgsBuilder; idx: longint; Value: Pgraphene_vec3_t); cdecl; external gtklib;
procedure gsk_shader_args_builder_set_vec4(builder: PGskShaderArgsBuilder; idx: longint; Value: Pgraphene_vec4_t); cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:58:31 ===

function GSK_TYPE_GL_SHADER: TGType;
function GSK_GL_SHADER(obj: Pointer): PGskGLShader;
function GSK_IS_GL_SHADER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GSK_TYPE_GL_SHADER: TGType;
begin
  Result := gsk_gl_shader_get_type;
end;

function GSK_GL_SHADER(obj: Pointer): PGskGLShader;
begin
  Result := PGskGLShader(g_type_check_instance_cast(obj, GSK_TYPE_GL_SHADER));
end;

function GSK_IS_GL_SHADER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_GL_SHADER);
end;


{$ENDIF read_implementation}
