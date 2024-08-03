unit gdkx11glcontext;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGdkX11GLContext = record
  end;
  PGdkX11GLContext = ^TGdkX11GLContext;

function gdk_x11_gl_context_get_type: TGType; cdecl; external gtklib;
function gdk_x11_display_get_glx_version(display: PGdkDisplay; major: Plongint; minor: Plongint): Tgboolean; cdecl; external gtklib;
function gdk_x11_display_get_egl_version(display: PGdkDisplay; major: Plongint; minor: Plongint): Tgboolean; cdecl; external gtklib;
function gdk_x11_display_get_egl_display(display: PGdkDisplay): Tgpointer; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:42:38 ===

function GDK_TYPE_X11_GL_CONTEXT: TGType;
function GDK_X11_GL_CONTEXT(obj: Pointer): PGdkX11GLContext;
function GDK_X11_IS_GL_CONTEXT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_X11_GL_CONTEXT: TGType;
begin
  GDK_TYPE_X11_GL_CONTEXT := gdk_x11_gl_context_get_type;
end;

function GDK_X11_GL_CONTEXT(obj: Pointer): PGdkX11GLContext;
begin
  Result := PGdkX11GLContext(g_type_check_instance_cast(obj, GDK_TYPE_X11_GL_CONTEXT));
end;

function GDK_X11_IS_GL_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_GL_CONTEXT);
end;



end.
