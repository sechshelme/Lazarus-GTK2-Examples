unit gtkurilauncher;

interface

uses
  glib2, common_GTK, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkUriLauncher, gtk_uri_launcher, GTK, URI_LAUNCHER, GObject) }
type
  TGtkUriLauncher = record
  end;
  PGtkUriLauncher = ^TGtkUriLauncher;

  TGtkUriLauncherClass = record
    parent_class: TGObjectClass;
  end;
  PGtkUriLauncherClass = ^TGtkUriLauncherClass;

function gtk_uri_launcher_get_type: TGType; cdecl; external gtklib;
function gtk_uri_launcher_new(uri: PChar): PGtkUriLauncher; cdecl; external gtklib;
function gtk_uri_launcher_get_uri(self: PGtkUriLauncher): PChar; cdecl; external gtklib;
procedure gtk_uri_launcher_set_uri(self: PGtkUriLauncher; uri: PChar); cdecl; external gtklib;
procedure gtk_uri_launcher_launch(self: PGtkUriLauncher; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_uri_launcher_launch_finish(self: PGtkUriLauncher; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 28-7-24 17:06:49 ===

function GTK_TYPE_URI_LAUNCHER: TGType;
function GTK_URI_LAUNCHER(obj: Pointer): PGtkUriLauncher;
function GTK_IS_URI_LAUNCHER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_URI_LAUNCHER: TGType;
begin
  Result := gtk_uri_launcher_get_type;
end;

function GTK_URI_LAUNCHER(obj: Pointer): PGtkUriLauncher;
begin
  Result := PGtkUriLauncher(g_type_check_instance_cast(obj, GTK_TYPE_URI_LAUNCHER));
end;

function GTK_IS_URI_LAUNCHER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_URI_LAUNCHER);
end;




end.
