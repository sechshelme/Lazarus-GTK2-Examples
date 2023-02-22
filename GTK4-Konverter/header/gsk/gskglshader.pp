
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


  { GSK - The GTK Scene Kit
   *
   * Copyright 2020  Red Hat Inc
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GSK_GL_SHADER_H__}
{$define __GSK_GL_SHADER_H__}  
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <stdarg.h>}
{$include <gsk/gsktypes.h>}
{$include <gsk/gskenums.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GSK_TYPE_SHADER_ARGS_BUILDER : longint; { return type might be wrong }

  {*
   * GskShaderArgsBuilder:
   *
   * An object to build the uniforms data for a `GskGLShader`.
    }

  type
    _GskShaderArgsBuilder = GskShaderArgsBuilder;

  { was #define dname def_expr }
  function GSK_TYPE_GL_SHADER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gsk_gl_shader_new_from_bytes(sourcecode:PGBytes):^GskGLShader;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_new_from_resource(resource_path:Pchar):^GskGLShader;

  { Zeile entfernt  }
  function gsk_gl_shader_compile(shader:PGskGLShader; renderer:PGskRenderer; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gsk_gl_shader_get_source(shader:PGskGLShader):^GBytes;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_get_resource(shader:PGskGLShader):^char;

  { Zeile entfernt  }
  function gsk_gl_shader_get_n_textures(shader:PGskGLShader):longint;

  { Zeile entfernt  }
  function gsk_gl_shader_get_n_uniforms(shader:PGskGLShader):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_get_uniform_name(shader:PGskGLShader; idx:longint):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gsk_gl_shader_find_uniform_by_name(shader:PGskGLShader; name:Pchar):longint;

  { Zeile entfernt  }
  function gsk_gl_shader_get_uniform_type(shader:PGskGLShader; idx:longint):GskGLUniformType;

  { Zeile entfernt  }
  function gsk_gl_shader_get_uniform_offset(shader:PGskGLShader; idx:longint):longint;

  { Zeile entfernt  }
  function gsk_gl_shader_get_args_size(shader:PGskGLShader):gsize;

  { Helpers for managing shader args  }
  { Zeile entfernt  }
  function gsk_gl_shader_format_args_va(shader:PGskGLShader; uniforms:va_list):^GBytes;

  { Zeile entfernt  }
  function gsk_gl_shader_format_args(shader:PGskGLShader; args:array of const):^GBytes;

  { Zeile entfernt  }
  function gsk_gl_shader_get_arg_float(shader:PGskGLShader; args:PGBytes; idx:longint):single;

  { Zeile entfernt  }
  function gsk_gl_shader_get_arg_int(shader:PGskGLShader; args:PGBytes; idx:longint):gint32;

  { Zeile entfernt  }
  function gsk_gl_shader_get_arg_uint(shader:PGskGLShader; args:PGBytes; idx:longint):guint32;

  { Zeile entfernt  }
  function gsk_gl_shader_get_arg_bool(shader:PGskGLShader; args:PGBytes; idx:longint):gboolean;

  { Zeile entfernt  }
  procedure gsk_gl_shader_get_arg_vec2(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec2_t);

  { Zeile entfernt  }
  procedure gsk_gl_shader_get_arg_vec3(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec3_t);

  { Zeile entfernt  }
  procedure gsk_gl_shader_get_arg_vec4(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec4_t);

  { Zeile entfernt  }
  function gsk_shader_args_builder_get_type:GType;

  { Zeile entfernt  }
  function gsk_shader_args_builder_new(shader:PGskGLShader; initial_values:PGBytes):^GskShaderArgsBuilder;

  { Zeile entfernt  }
  function gsk_shader_args_builder_to_args(builder:PGskShaderArgsBuilder):^GBytes;

  { Zeile entfernt  }
  function gsk_shader_args_builder_free_to_args(builder:PGskShaderArgsBuilder):^GBytes;

  { Zeile entfernt  }
  function gsk_shader_args_builder_ref(builder:PGskShaderArgsBuilder):^GskShaderArgsBuilder;

  { Zeile entfernt  }
  procedure gsk_shader_args_builder_unref(builder:PGskShaderArgsBuilder);

  { Zeile entfernt  }
  procedure gsk_shader_args_builder_set_float(builder:PGskShaderArgsBuilder; idx:longint; value:single);

  { Zeile entfernt  }
  procedure gsk_shader_args_builder_set_int(builder:PGskShaderArgsBuilder; idx:longint; value:gint32);

  { Zeile entfernt  }
  procedure gsk_shader_args_builder_set_uint(builder:PGskShaderArgsBuilder; idx:longint; value:guint32);

  { Zeile entfernt  }
  procedure gsk_shader_args_builder_set_bool(builder:PGskShaderArgsBuilder; idx:longint; value:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gsk_shader_args_builder_set_vec2(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec2_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gsk_shader_args_builder_set_vec3(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec3_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gsk_shader_args_builder_set_vec4(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec4_t);

  { Zeile entfernt  }
{$endif}
  { __GSK_GL_SHADER_H__  }
  { was #define dname def_expr }
  function GSK_TYPE_SHADER_ARGS_BUILDER : longint; { return type might be wrong }
    begin
      GSK_TYPE_SHADER_ARGS_BUILDER:=gsk_shader_args_builder_get_type;
    end;

  { was #define dname def_expr }
  function GSK_TYPE_GL_SHADER : longint; { return type might be wrong }
    begin
      GSK_TYPE_GL_SHADER:=gsk_gl_shader_get_type;
    end;

  function gsk_gl_shader_new_from_bytes(sourcecode:PGBytes):PGskGLShader;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_new_from_resource(resource_path:Pchar):PGskGLShader;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_compile(shader:PGskGLShader; renderer:PGskRenderer; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_source(shader:PGskGLShader):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_resource(shader:PGskGLShader):Pchar;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_n_textures(shader:PGskGLShader):longint;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_n_uniforms(shader:PGskGLShader):longint;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_uniform_name(shader:PGskGLShader; idx:longint):Pchar;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_find_uniform_by_name(shader:PGskGLShader; name:Pchar):longint;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_uniform_type(shader:PGskGLShader; idx:longint):GskGLUniformType;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_uniform_offset(shader:PGskGLShader; idx:longint):longint;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_args_size(shader:PGskGLShader):gsize;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_format_args_va(shader:PGskGLShader; uniforms:va_list):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_format_args(shader:PGskGLShader):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_arg_float(shader:PGskGLShader; args:PGBytes; idx:longint):single;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_arg_int(shader:PGskGLShader; args:PGBytes; idx:longint):gint32;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_arg_uint(shader:PGskGLShader; args:PGBytes; idx:longint):guint32;
  begin
    { You must implement this function }
  end;
  function gsk_gl_shader_get_arg_bool(shader:PGskGLShader; args:PGBytes; idx:longint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gsk_gl_shader_get_arg_vec2(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec2_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_gl_shader_get_arg_vec3(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec3_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_gl_shader_get_arg_vec4(shader:PGskGLShader; args:PGBytes; idx:longint; out_value:Pgraphene_vec4_t);
  begin
    { You must implement this function }
  end;
  function gsk_shader_args_builder_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_shader_args_builder_new(shader:PGskGLShader; initial_values:PGBytes):PGskShaderArgsBuilder;
  begin
    { You must implement this function }
  end;
  function gsk_shader_args_builder_to_args(builder:PGskShaderArgsBuilder):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_shader_args_builder_free_to_args(builder:PGskShaderArgsBuilder):PGBytes;
  begin
    { You must implement this function }
  end;
  function gsk_shader_args_builder_ref(builder:PGskShaderArgsBuilder):PGskShaderArgsBuilder;
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_unref(builder:PGskShaderArgsBuilder);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_float(builder:PGskShaderArgsBuilder; idx:longint; value:single);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_int(builder:PGskShaderArgsBuilder; idx:longint; value:gint32);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_uint(builder:PGskShaderArgsBuilder; idx:longint; value:guint32);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_bool(builder:PGskShaderArgsBuilder; idx:longint; value:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_vec2(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec2_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_vec3(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec3_t);
  begin
    { You must implement this function }
  end;
  procedure gsk_shader_args_builder_set_vec4(builder:PGskShaderArgsBuilder; idx:longint; value:Pgraphene_vec4_t);
  begin
    { You must implement this function }
  end;

