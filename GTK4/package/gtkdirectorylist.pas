unit gtkdirectorylist;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkDirectoryList, gtk_directory_list, GTK, DIRECTORY_LIST, GObject) }
type
  TGtkDirectoryList = record
  end;
  PGtkDirectoryList = ^TGtkDirectoryList;

  TGtkDirectoryListClass = record
    parent_class: TGObjectClass;
  end;
  PGtkDirectoryListClass = ^TGtkDirectoryListClass;

function gtk_directory_list_get_type: TGType; cdecl; external gtklib;
function gtk_directory_list_new(attributes: PChar; _file: PGFile): PGtkDirectoryList; cdecl; external gtklib;
procedure gtk_directory_list_set_file(self: PGtkDirectoryList; _file: PGFile); cdecl; external gtklib;
function gtk_directory_list_get_file(self: PGtkDirectoryList): PGFile; cdecl; external gtklib;
procedure gtk_directory_list_set_attributes(self: PGtkDirectoryList; attributes: PChar); cdecl; external gtklib;
function gtk_directory_list_get_attributes(self: PGtkDirectoryList): PChar; cdecl; external gtklib;
procedure gtk_directory_list_set_io_priority(self: PGtkDirectoryList; io_priority: longint); cdecl; external gtklib;
function gtk_directory_list_get_io_priority(self: PGtkDirectoryList): longint; cdecl; external gtklib;
function gtk_directory_list_is_loading(self: PGtkDirectoryList): Tgboolean; cdecl; external gtklib;
function gtk_directory_list_get_error(self: PGtkDirectoryList): PGError; cdecl; external gtklib;
procedure gtk_directory_list_set_monitored(self: PGtkDirectoryList; monitored: Tgboolean); cdecl; external gtklib;
function gtk_directory_list_get_monitored(self: PGtkDirectoryList): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:52:49 ===

function GTK_TYPE_DIRECTORY_LIST: TGType;
function GTK_DIRECTORY_LIST(obj: Pointer): PGtkDirectoryList;
function GTK_IS_DIRECTORY_LIST(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_DIRECTORY_LIST: TGType;
begin
  Result := gtk_directory_list_get_type;
end;

function GTK_DIRECTORY_LIST(obj: Pointer): PGtkDirectoryList;
begin
  Result := PGtkDirectoryList(g_type_check_instance_cast(obj, GTK_TYPE_DIRECTORY_LIST));
end;

function GTK_IS_DIRECTORY_LIST(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DIRECTORY_LIST);
end;




end.
