/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGskGLRenderer = record
  end;
  PGskGLRenderer = ^TGskGLRenderer;

  TGskGLRendererClass = record
  end;
  PGskGLRendererClass = ^TGskGLRendererClass;

function gsk_gl_renderer_get_type: TGType; cdecl; external gtklib;
function gsk_gl_renderer_new: PGskRenderer; cdecl; external gtklib;
function gsk_ngl_renderer_get_type: TGType; cdecl; external gtklib;
function gsk_ngl_renderer_new: PGskRenderer; cdecl; external gtklib;

function GSK_INCLUDE_WARNING(x: longint): longint;


// === Konventiert am: 4-8-24 13:15:30 ===

function GSK_TYPE_GL_RENDERER: TGType;
function GSK_GL_RENDERER(obj: Pointer): PGskGLRenderer;
function GSK_GL_RENDERER_CLASS(klass: Pointer): PGskGLRendererClass;
function GSK_IS_GL_RENDERER(obj: Pointer): Tgboolean;
function GSK_IS_GL_RENDERER_CLASS(klass: Pointer): Tgboolean;
function GSK_GL_RENDERER_GET_CLASS(obj: Pointer): PGskGLRendererClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GSK_TYPE_GL_RENDERER: TGType;
begin
  GSK_TYPE_GL_RENDERER := gsk_gl_renderer_get_type;
end;

function GSK_GL_RENDERER(obj: Pointer): PGskGLRenderer;
begin
  Result := PGskGLRenderer(g_type_check_instance_cast(obj, GSK_TYPE_GL_RENDERER));
end;

function GSK_GL_RENDERER_CLASS(klass: Pointer): PGskGLRendererClass;
begin
  Result := PGskGLRendererClass(g_type_check_class_cast(klass, GSK_TYPE_GL_RENDERER));
end;

function GSK_IS_GL_RENDERER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_GL_RENDERER);
end;

function GSK_IS_GL_RENDERER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GSK_TYPE_GL_RENDERER);
end;

function GSK_GL_RENDERER_GET_CLASS(obj: Pointer): PGskGLRendererClass;
begin
  Result := PGskGLRendererClass(PGTypeInstance(obj)^.g_class);
end;

// ====

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }
function GSK_INCLUDE_WARNING(x: longint): longint;
begin
  GSK_INCLUDE_WARNING := x;
end;


{$ENDIF read_implementation}
