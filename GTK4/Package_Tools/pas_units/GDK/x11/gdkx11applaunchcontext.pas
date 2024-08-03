unit gdkx11applaunchcontext;

interface

uses
  glib2, common_GTK, gdkapplaunchcontext;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkX11AppLaunchContext = ^TGdkX11AppLaunchContext;
  TGdkX11AppLaunchContext = TGdkAppLaunchContext;

  TGdkX11AppLaunchContextClass = record
  end;
  PGdkX11AppLaunchContextClass = ^TGdkX11AppLaunchContextClass;

function gdk_x11_app_launch_context_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:26:34 ===

function GDK_TYPE_X11_APP_LAUNCH_CONTEXT: TGType;
function GDK_X11_APP_LAUNCH_CONTEXT(obj: Pointer): PGdkX11AppLaunchContext;
function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass: Pointer): PGdkX11AppLaunchContextClass;
function GDK_IS_X11_APP_LAUNCH_CONTEXT(obj: Pointer): Tgboolean;
function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj: Pointer): PGdkX11AppLaunchContextClass;

implementation

function GDK_TYPE_X11_APP_LAUNCH_CONTEXT: TGType;
begin
  GDK_TYPE_X11_APP_LAUNCH_CONTEXT := gdk_x11_app_launch_context_get_type;
end;

function GDK_X11_APP_LAUNCH_CONTEXT(obj: Pointer): PGdkX11AppLaunchContext;
begin
  Result := PGdkX11AppLaunchContext(g_type_check_instance_cast(obj, GDK_TYPE_X11_APP_LAUNCH_CONTEXT));
end;

function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass: Pointer): PGdkX11AppLaunchContextClass;
begin
  Result := PGdkX11AppLaunchContextClass(g_type_check_class_cast(klass, GDK_TYPE_X11_APP_LAUNCH_CONTEXT));
end;

function GDK_IS_X11_APP_LAUNCH_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
end;

function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
end;

function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj: Pointer): PGdkX11AppLaunchContextClass;
begin
  Result := PGdkX11AppLaunchContextClass(PGTypeInstance(obj)^.g_class);
end;



end.
