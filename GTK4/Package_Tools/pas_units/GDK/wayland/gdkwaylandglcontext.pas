unit gdkwaylandglcontext;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkWaylandGLContext = record
  end;
  PGdkWaylandGLContext = ^TGdkWaylandGLContext;

function gdk_wayland_gl_context_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:25 ===

function GDK_TYPE_WAYLAND_GL_CONTEXT: TGType;
function GDK_WAYLAND_GL_CONTEXT(obj: Pointer): PGdkWaylandGLContext;
function GDK_WAYLAND_IS_GL_CONTEXT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_WAYLAND_GL_CONTEXT: TGType;
begin
  GDK_TYPE_WAYLAND_GL_CONTEXT := gdk_wayland_gl_context_get_type;
end;

function GDK_WAYLAND_GL_CONTEXT(obj: Pointer): PGdkWaylandGLContext;
begin
  Result := PGdkWaylandGLContext(g_type_check_instance_cast(obj, GDK_TYPE_WAYLAND_GL_CONTEXT));
end;

function GDK_WAYLAND_IS_GL_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_WAYLAND_GL_CONTEXT);
end;



end.
