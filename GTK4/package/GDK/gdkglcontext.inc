/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkGLContext = record
  end;
  PGdkGLContext = ^TGdkGLContext;

function gdk_gl_error_quark: TGQuark; cdecl; external gtklib;
function gdk_gl_context_get_type: TGType; cdecl; external gtklib;
function gdk_gl_context_get_display(context: PGdkGLContext): PGdkDisplay; cdecl; external gtklib;
function gdk_gl_context_get_surface(context: PGdkGLContext): PGdkSurface; cdecl; external gtklib;
function gdk_gl_context_get_shared_context(context: PGdkGLContext): PGdkGLContext; cdecl; external gtklib;
procedure gdk_gl_context_get_version(context: PGdkGLContext; major: Plongint; minor: Plongint); cdecl; external gtklib;
function gdk_gl_context_is_legacy(context: PGdkGLContext): Tgboolean; cdecl; external gtklib;
function gdk_gl_context_is_shared(self: PGdkGLContext; other: PGdkGLContext): Tgboolean; cdecl; external gtklib;
procedure gdk_gl_context_set_required_version(context: PGdkGLContext; major: longint; minor: longint); cdecl; external gtklib;
procedure gdk_gl_context_get_required_version(context: PGdkGLContext; major: Plongint; minor: Plongint); cdecl; external gtklib;
procedure gdk_gl_context_set_debug_enabled(context: PGdkGLContext; Enabled: Tgboolean); cdecl; external gtklib;
function gdk_gl_context_get_debug_enabled(context: PGdkGLContext): Tgboolean; cdecl; external gtklib;
procedure gdk_gl_context_set_forward_compatible(context: PGdkGLContext; compatible: Tgboolean); cdecl; external gtklib;
function gdk_gl_context_get_forward_compatible(context: PGdkGLContext): Tgboolean; cdecl; external gtklib;
procedure gdk_gl_context_set_allowed_apis(self: PGdkGLContext; apis: TGdkGLAPI); cdecl; external gtklib;
function gdk_gl_context_get_allowed_apis(self: PGdkGLContext): TGdkGLAPI; cdecl; external gtklib;
function gdk_gl_context_get_api(self: PGdkGLContext): TGdkGLAPI; cdecl; external gtklib;
procedure gdk_gl_context_set_use_es(context: PGdkGLContext; use_es: longint); cdecl; external gtklib;
function gdk_gl_context_get_use_es(context: PGdkGLContext): Tgboolean; cdecl; external gtklib;
function gdk_gl_context_realize(context: PGdkGLContext; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gdk_gl_context_make_current(context: PGdkGLContext); cdecl; external gtklib;
function gdk_gl_context_get_current: PGdkGLContext; cdecl; external gtklib;
procedure gdk_gl_context_clear_current; cdecl; external gtklib;

function GDK_GL_ERROR: TGQuark;

// === Konventiert am: 31-7-24 19:15:27 ===

function GDK_TYPE_GL_CONTEXT: TGType;
function GDK_GL_CONTEXT(obj: Pointer): PGdkGLContext;
function GDK_IS_GL_CONTEXT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_GL_CONTEXT: TGType;
begin
  GDK_TYPE_GL_CONTEXT := gdk_gl_context_get_type;
end;

function GDK_GL_CONTEXT(obj: Pointer): PGdkGLContext;
begin
  Result := PGdkGLContext(g_type_check_instance_cast(obj, GDK_TYPE_GL_CONTEXT));
end;

function GDK_IS_GL_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_GL_CONTEXT);
end;

// ====

function GDK_GL_ERROR: TGQuark;
begin
  GDK_GL_ERROR := gdk_gl_error_quark;
end;


{$ENDIF read_implementation}
