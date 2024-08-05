/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_FINAL_TYPE (GtkFileDialog, gtk_file_dialog, GTK, FILE_DIALOG, GObject) }
type
  TGtkFileDialog = record
  end;
  PGtkFileDialog = ^TGtkFileDialog;

  TGtkFileDialogClass = record
    parent_class: TGObjectClass;
  end;
  PGtkFileDialogClass = ^TGtkFileDialogClass;

function gtk_file_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_file_dialog_new: PGtkFileDialog; cdecl; external gtklib;
function gtk_file_dialog_get_title(self: PGtkFileDialog): PChar; cdecl; external gtklib;
procedure gtk_file_dialog_set_title(self: PGtkFileDialog; title: PChar); cdecl; external gtklib;
function gtk_file_dialog_get_modal(self: PGtkFileDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_file_dialog_set_modal(self: PGtkFileDialog; modal: Tgboolean); cdecl; external gtklib;
function gtk_file_dialog_get_filters(self: PGtkFileDialog): PGListModel; cdecl; external gtklib;
procedure gtk_file_dialog_set_filters(self: PGtkFileDialog; filters: PGListModel); cdecl; external gtklib;
function gtk_file_dialog_get_default_filter(self: PGtkFileDialog): PGtkFileFilter; cdecl; external gtklib;
procedure gtk_file_dialog_set_default_filter(self: PGtkFileDialog; filter: PGtkFileFilter); cdecl; external gtklib;
function gtk_file_dialog_get_initial_folder(self: PGtkFileDialog): PGFile; cdecl; external gtklib;
procedure gtk_file_dialog_set_initial_folder(self: PGtkFileDialog; folder: PGFile); cdecl; external gtklib;
function gtk_file_dialog_get_initial_name(self: PGtkFileDialog): PChar; cdecl; external gtklib;
procedure gtk_file_dialog_set_initial_name(self: PGtkFileDialog; Name: PChar); cdecl; external gtklib;
function gtk_file_dialog_get_initial_file(self: PGtkFileDialog): PGFile; cdecl; external gtklib;
procedure gtk_file_dialog_set_initial_file(self: PGtkFileDialog; _file: PGFile); cdecl; external gtklib;
function gtk_file_dialog_get_accept_label(self: PGtkFileDialog): PChar; cdecl; external gtklib;
procedure gtk_file_dialog_set_accept_label(self: PGtkFileDialog; accept_label: PChar); cdecl; external gtklib;
procedure gtk_file_dialog_open(self: PGtkFileDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_dialog_open_finish(self: PGtkFileDialog; Result: PGAsyncResult; error: PPGError): PGFile; cdecl; external gtklib;
procedure gtk_file_dialog_select_folder(self: PGtkFileDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_dialog_select_folder_finish(self: PGtkFileDialog; Result: PGAsyncResult; error: PPGError): PGFile; cdecl; external gtklib;
procedure gtk_file_dialog_save(self: PGtkFileDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_dialog_save_finish(self: PGtkFileDialog; Result: PGAsyncResult; error: PPGError): PGFile; cdecl; external gtklib;
procedure gtk_file_dialog_open_multiple(self: PGtkFileDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_dialog_open_multiple_finish(self: PGtkFileDialog; Result: PGAsyncResult; error: PPGError): PGListModel; cdecl; external gtklib;
procedure gtk_file_dialog_select_multiple_folders(self: PGtkFileDialog; parent: PGtkWindow; cancellable: PGCancellable; callback: TGAsyncReadyCallback; user_data: Tgpointer); cdecl; external gtklib;
function gtk_file_dialog_select_multiple_folders_finish(self: PGtkFileDialog; Result: PGAsyncResult; error: PPGError): PGListModel; cdecl; external gtklib;

// === Konventiert am: 23-7-24 16:47:58 ===

function GTK_TYPE_FILE_DIALOG: TGType;
function GTK_FILE_DIALOG(obj: Pointer): PGtkFileDialog;
function GTK_IS_FILE_DIALOG(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_FILE_DIALOG: TGType;
begin
  Result := gtk_file_dialog_get_type;
end;

function GTK_FILE_DIALOG(obj: Pointer): PGtkFileDialog;
begin
  Result := PGtkFileDialog(g_type_check_instance_cast(obj, GTK_TYPE_FILE_DIALOG));
end;

function GTK_IS_FILE_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_DIALOG);
end;




{$ENDIF read_implementation}
