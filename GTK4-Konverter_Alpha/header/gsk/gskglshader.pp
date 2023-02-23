
unit gskglshader;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskglshader.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskglshader.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGBytes  = ^GBytes;
PGError  = ^GError;
Pgraphene_vec2_t  = ^graphene_vec2_t;
Pgraphene_vec3_t  = ^graphene_vec3_t;
Pgraphene_vec4_t  = ^graphene_vec4_t;
PGskGLShader  = ^GskGLShader;
PGskRenderer  = ^GskRenderer;
PGskShaderArgsBuilder  = ^GskShaderArgsBuilder;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GSK_GL_SHADER_H__}
{$define __GSK_GL_SHADER_H__}
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <stdarg.h>}
{$include <gsk/gsktypes.h>}
{$include <gsk/gskenums.h>}


function GSK_TYPE_SHADER_ARGS_BUILDER : longint; { return type might be wrong }


type

function GSK_TYPE_GL_SHADER : longint; { return type might be wrong }




function gsk_gl_shader_new_from_bytes(sourcecode:PGBytes):PGskGLShader;cdecl;external;

function gsk_gl_shader_new_from_resource(resource_path:Pchar):PGskGLShader;cdecl;external;

function gsk_gl_shader_compile(shader:PGskGLShader; renderer:PGskRenderer; error:PPGError):Tgboolean;cdecl;external;

function gsk_gl_shader_get_source(shader:PGskGLShader):PGBytes;cdecl;external;

function gsk_gl_shader_get_resource(shader:PGskGLShader):Pchar;cdecl;external;

function gsk_gl_shader_get_n_textures(shader:PGskGLShader):longint;cdecl;external;

function gsk_gl_shader_get_n_uniforms(shader:PGskGLShader):longint;cdecl;external;

function gsk_gl_shader_get_uniform_name(shader:PGskGLShader; idx:longint):Pchar;cdecl;external;

function gsk_gl_shader_find_uniform_by_name(shader:PGskGLShader; name:Pchar):longint;cdecl;external;

function gsk_gl_shader_get_uniform_type(shader:PGskGLShader; idx:longint):TGskGLUniformType;cdecl;external;

function gsk_gl_shader_get_uniform_offset(shader:PGskGLShader; idx:longint):longint;cdecl;external;

function gsk_gl_shader_get_args_size(shader:PGskGLShader):Tgsize;cdecl;external;


function gsk_gl_shader_format_args_va(shader:PGskGLShader; uniforms:Tva_list):PGBytes;cdecl;external;

function gsk_gl_shader_format_args(shader:PGskGLShader; args:array of const):PGBytes;cdecl;external;
function gsk_gl_shader_format_args(shader:PGskGLShader):PGBytes;cdecl;external;

function gsk_gl_shader_get_arg_float(shader:PGskGLShader; args:PGBytes; idx:longint):single;cdecl;external;

function gsk_gl_shader_get_arg_int(shader:PGskGLShader; args:PGBytes; idx:longint):Tgint32;cdecl;external;

function gsk_gl_shader_get_arg_uint(shader:PGskGLShader; args:PGBytes; idx:longint):Tguint32;cdecl;external;

function gsk_gl_shader_get_arg_bool(shader:PGskGLShader; args:PGBytes; idx:longint):Tgboolean;cdecl;external;

procedure gsk_gl_shader_get_arg_vec2(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec2_t);cdecl;external;

procedure gsk_gl_shader_get_arg_vec3(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec3_t);cdecl;external;

procedure gsk_gl_shader_get_arg_vec4(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec4_t);cdecl;external;

function gsk_shader_args_builder_get_type:TGType;cdecl;external;

function gsk_shader_args_builder_new(shader:PGskGLShader; initial_values:PGBytes):PGskShaderArgsBuilder;cdecl;external;

function gsk_shader_args_builder_to_args(builder:PGskShaderArgsBuilder):PGBytes;cdecl;external;

function gsk_shader_args_builder_free_to_args(builder:PGskShaderArgsBuilder):PGBytes;cdecl;external;

function gsk_shader_args_builder_ref(builder:PGskShaderArgsBuilder):PGskShaderArgsBuilder;cdecl;external;

procedure gsk_shader_args_builder_unref(builder:PGskShaderArgsBuilder);cdecl;external;

procedure gsk_shader_args_builder_set_float(builder:PGskShaderArgsBuilder; idx:longint; value:single);cdecl;external;

procedure gsk_shader_args_builder_set_int(builder:PGskShaderArgsBuilder; idx:longint; value:Tgint32);cdecl;external;

procedure gsk_shader_args_builder_set_uint(builder:PGskShaderArgsBuilder; idx:longint; value:Tguint32);cdecl;external;

procedure gsk_shader_args_builder_set_bool(builder:PGskShaderArgsBuilder; idx:longint; value:Tgboolean);cdecl;external;

procedure gsk_shader_args_builder_set_vec2(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec2_t);cdecl;external;

procedure gsk_shader_args_builder_set_vec3(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec3_t);cdecl;external;

procedure gsk_shader_args_builder_set_vec4(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec4_t);cdecl;external;

{$endif}


implementation

function GSK_TYPE_SHADER_ARGS_BUILDER : longint; { return type might be wrong }
  begin
    GSK_TYPE_SHADER_ARGS_BUILDER:=gsk_shader_args_builder_get_type;
  end;

function GSK_TYPE_GL_SHADER : longint; { return type might be wrong }
  begin
    GSK_TYPE_GL_SHADER:=gsk_gl_shader_get_type;
  end;


end.
