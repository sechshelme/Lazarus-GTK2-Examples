unit gtkfilechooser;

interface

uses
  glib2, common_GTK, gtkfilefilter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type

  PGtkFileChooserAction = ^TGtkFileChooserAction;
  TGtkFileChooserAction = longint;

const
  GTK_FILE_CHOOSER_ACTION_OPEN = 0;
  GTK_FILE_CHOOSER_ACTION_SAVE = 1;
  GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER = 2;

type
  TGtkFileChooser = record
  end;
  PGtkFileChooser = ^TGtkFileChooser;


function gtk_file_chooser_get_type: TGType; cdecl; external gtklib;

type
  PGtkFileChooserError = ^TGtkFileChooserError;
  TGtkFileChooserError = longint;

const
  GTK_FILE_CHOOSER_ERROR_NONEXISTENT = 0;
  GTK_FILE_CHOOSER_ERROR_BAD_FILENAME = 1;
  GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS = 2;
  GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME = 3;

function gtk_file_chooser_error_quark: TGQuark; cdecl; external gtklib;
procedure gtk_file_chooser_set_action(chooser: PGtkFileChooser; action: TGtkFileChooserAction); cdecl; external gtklib;
function gtk_file_chooser_get_action(chooser: PGtkFileChooser): TGtkFileChooserAction; cdecl; external gtklib;
procedure gtk_file_chooser_set_select_multiple(chooser: PGtkFileChooser; select_multiple: Tgboolean); cdecl; external gtklib;
function gtk_file_chooser_get_select_multiple(chooser: PGtkFileChooser): Tgboolean; cdecl; external gtklib;
procedure gtk_file_chooser_set_create_folders(chooser: PGtkFileChooser; create_folders: Tgboolean); cdecl; external gtklib;
function gtk_file_chooser_get_create_folders(chooser: PGtkFileChooser): Tgboolean; cdecl; external gtklib;
procedure gtk_file_chooser_set_current_name(chooser: PGtkFileChooser; Name: PChar); cdecl; external gtklib;
function gtk_file_chooser_get_current_name(chooser: PGtkFileChooser): PChar; cdecl; external gtklib;
function gtk_file_chooser_get_file(chooser: PGtkFileChooser): PGFile; cdecl; external gtklib;
function gtk_file_chooser_set_file(chooser: PGtkFileChooser; file_: PGFile; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_file_chooser_get_files(chooser: PGtkFileChooser): PGListModel; cdecl; external gtklib;
function gtk_file_chooser_set_current_folder(chooser: PGtkFileChooser; file_: PGFile; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_file_chooser_get_current_folder(chooser: PGtkFileChooser): PGFile; cdecl; external gtklib;
procedure gtk_file_chooser_add_filter(chooser: PGtkFileChooser; filter: PGtkFileFilter); cdecl; external gtklib;
procedure gtk_file_chooser_remove_filter(chooser: PGtkFileChooser; filter: PGtkFileFilter); cdecl; external gtklib;
function gtk_file_chooser_get_filters(chooser: PGtkFileChooser): PGListModel; cdecl; external gtklib;
procedure gtk_file_chooser_set_filter(chooser: PGtkFileChooser; filter: PGtkFileFilter); cdecl; external gtklib;
function gtk_file_chooser_get_filter(chooser: PGtkFileChooser): PGtkFileFilter; cdecl; external gtklib;
function gtk_file_chooser_add_shortcut_folder(chooser: PGtkFileChooser; folder: PGFile; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_file_chooser_remove_shortcut_folder(chooser: PGtkFileChooser; folder: PGFile; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_file_chooser_get_shortcut_folders(chooser: PGtkFileChooser): PGListModel; cdecl; external gtklib;
procedure gtk_file_chooser_add_choice(chooser: PGtkFileChooser; id: PChar; _label: PChar; options: PPchar; option_labels: PPchar); cdecl; external gtklib;
procedure gtk_file_chooser_remove_choice(chooser: PGtkFileChooser; id: PChar); cdecl; external gtklib;
procedure gtk_file_chooser_set_choice(chooser: PGtkFileChooser; id: PChar; option: PChar); cdecl; external gtklib;
function gtk_file_chooser_get_choice(chooser: PGtkFileChooser; id: PChar): PChar; cdecl; external gtklib;

function GTK_FILE_CHOOSER_ERROR: TGQuark;

// === Konventiert am: 29-7-24 19:42:23 ===

function GTK_TYPE_FILE_CHOOSER: TGType;
function GTK_FILE_CHOOSER(obj: Pointer): PGtkFileChooser;
function GTK_IS_FILE_CHOOSER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_FILE_CHOOSER: TGType;
begin
  GTK_TYPE_FILE_CHOOSER := gtk_file_chooser_get_type;
end;

function GTK_FILE_CHOOSER(obj: Pointer): PGtkFileChooser;
begin
  Result := PGtkFileChooser(g_type_check_instance_cast(obj, GTK_TYPE_FILE_CHOOSER));
end;

function GTK_IS_FILE_CHOOSER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_CHOOSER);
end;

// ====

function GTK_FILE_CHOOSER_ERROR: TGQuark;
begin
  GTK_FILE_CHOOSER_ERROR := gtk_file_chooser_error_quark;
end;


end.
