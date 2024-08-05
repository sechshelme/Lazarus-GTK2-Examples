/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkFileLauncher, gtk_file_launcher, GTK, FILE_LAUNCHER, GObject) }
type
  TGtkFileLauncher = record
  end;
  PGtkFileLauncher = ^TGtkFileLauncher;

  TGtkFileLauncherClass = record
    parent_class: TGObjectClass;
  end;
  PGtkFileLauncherClass = ^TGtkFileLauncherClass;

function gtk_file_launcher_get_type: TGType; cdecl; external gtklib;
function gtk_file_launcher_new(file_: PGFile): PGtkFileLauncher; cdecl; external gtklib;
function gtk_file_launcher_get_file(self: PGtkFileLauncher): PGFile; cdecl; external gtklib;
procedure gtk_file_launcher_set_file(self: PGtkFileLauncher; file_: PGFile); cdecl; external gtklib;
function gtk_file_launcher_get_always_ask(self: PGtkFileLauncher): Tgboolean; cdecl; external gtklib;
procedure gtk_file_launcher_set_always_ask(self: PGtkFileLauncher; always_ask: Tgboolean); cdecl; external gtklib;
function gtk_file_launcher_get_writable(self: PGtkFileLauncher): Tgboolean; cdecl; external gtklib;
procedure gtk_file_launcher_set_writable(self: PGtkFileLauncher; writable: Tgboolean); cdecl; external gtklib;
procedure gtk_file_launcher_launch(self: PGtkFileLauncher; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_launcher_launch_finish(self: PGtkFileLauncher; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gtk_file_launcher_open_containing_folder(self: PGtkFileLauncher; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_launcher_open_containing_folder_finish(self: PGtkFileLauncher; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:15:04 ===

function GTK_TYPE_FILE_LAUNCHER: TGType;
function GTK_FILE_LAUNCHER(obj: Pointer): PGtkFileLauncher;
function GTK_IS_FILE_LAUNCHER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_FILE_LAUNCHER: TGType;
begin
  Result := gtk_file_launcher_get_type;
end;

function GTK_FILE_LAUNCHER(obj: Pointer): PGtkFileLauncher;
begin
  Result := PGtkFileLauncher(g_type_check_instance_cast(obj, GTK_TYPE_FILE_LAUNCHER));
end;

function GTK_IS_FILE_LAUNCHER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_LAUNCHER);
end;




{$ENDIF read_implementation}
