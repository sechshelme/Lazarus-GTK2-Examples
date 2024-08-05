/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkRecentInfo = record // _GtkRecentInfo
  end;
  PGtkRecentInfo = ^TGtkRecentInfo;

  TGtkRecentData = record
    display_name: PChar;
    description: PChar;
    mime_type: PChar;
    app_name: PChar;
    app_exec: PChar;
    groups: ^PChar;
    is_private: Tgboolean;
  end;
  PGtkRecentData = ^TGtkRecentData;

  TGtkRecentManagerPrivate = record // _GtkRecentManagerPrivate
  end;
  PGtkRecentManagerPrivate = ^TGtkRecentManagerPrivate;

  TGtkRecentManager = record
    parent_instance: TGObject;
    priv: PGtkRecentManagerPrivate;
  end;
  PGtkRecentManager = ^TGtkRecentManager;

  TGtkRecentManagerClass = record
    parent_class: TGObjectClass;
    changed: procedure(manager: PGtkRecentManager); cdecl;
    _gtk_recent1: procedure; cdecl;
    _gtk_recent2: procedure; cdecl;
    _gtk_recent3: procedure; cdecl;
    _gtk_recent4: procedure; cdecl;
  end;
  PGtkRecentManagerClass = ^TGtkRecentManagerClass;


  PGtkRecentManagerError = ^TGtkRecentManagerError;
  TGtkRecentManagerError = longint;

const
  GTK_RECENT_MANAGER_ERROR_NOT_FOUND = 0;
  GTK_RECENT_MANAGER_ERROR_INVALID_URI = 1;
  GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING = 2;
  GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED = 3;
  GTK_RECENT_MANAGER_ERROR_READ = 4;
  GTK_RECENT_MANAGER_ERROR_WRITE = 5;
  GTK_RECENT_MANAGER_ERROR_UNKNOWN = 6;


function gtk_recent_manager_error_quark: TGQuark; cdecl; external gtklib;
function gtk_recent_manager_get_type: TGType; cdecl; external gtklib;
function gtk_recent_manager_new: PGtkRecentManager; cdecl; external gtklib;
function gtk_recent_manager_get_default: PGtkRecentManager; cdecl; external gtklib;
function gtk_recent_manager_add_item(manager: PGtkRecentManager; uri: PChar): Tgboolean; cdecl; external gtklib;
function gtk_recent_manager_add_full(manager: PGtkRecentManager; uri: PChar; recent_data: PGtkRecentData): Tgboolean; cdecl; external gtklib;
function gtk_recent_manager_remove_item(manager: PGtkRecentManager; uri: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_recent_manager_lookup_item(manager: PGtkRecentManager; uri: PChar; error: PPGError): PGtkRecentInfo; cdecl; external gtklib;
function gtk_recent_manager_has_item(manager: PGtkRecentManager; uri: PChar): Tgboolean; cdecl; external gtklib;
function gtk_recent_manager_move_item(manager: PGtkRecentManager; uri: PChar; new_uri: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_recent_manager_get_items(manager: PGtkRecentManager): PGList; cdecl; external gtklib;
function gtk_recent_manager_purge_items(manager: PGtkRecentManager; error: PPGError): longint; cdecl; external gtklib;
function gtk_recent_info_get_type: TGType; cdecl; external gtklib;
function gtk_recent_info_ref(info: PGtkRecentInfo): PGtkRecentInfo; cdecl; external gtklib;
procedure gtk_recent_info_unref(info: PGtkRecentInfo); cdecl; external gtklib;
function gtk_recent_info_get_uri(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_get_display_name(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_get_description(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_get_mime_type(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_get_added(info: PGtkRecentInfo): PGDateTime; cdecl; external gtklib;
function gtk_recent_info_get_modified(info: PGtkRecentInfo): PGDateTime; cdecl; external gtklib;
function gtk_recent_info_get_visited(info: PGtkRecentInfo): PGDateTime; cdecl; external gtklib;
function gtk_recent_info_get_private_hint(info: PGtkRecentInfo): Tgboolean; cdecl; external gtklib;
function gtk_recent_info_get_application_info(info: PGtkRecentInfo; app_name: PChar; app_exec: PPchar; Count: Pguint; stamp: PPGDateTime): Tgboolean; cdecl; external gtklib;
function gtk_recent_info_create_app_info(info: PGtkRecentInfo; app_name: PChar; error: PPGError): PGAppInfo; cdecl; external gtklib;
function gtk_recent_info_get_applications(info: PGtkRecentInfo; length: Pgsize): PPchar; cdecl; external gtklib;
function gtk_recent_info_last_application(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_has_application(info: PGtkRecentInfo; app_name: PChar): Tgboolean; cdecl; external gtklib;
function gtk_recent_info_get_groups(info: PGtkRecentInfo; length: Pgsize): PPchar; cdecl; external gtklib;
function gtk_recent_info_has_group(info: PGtkRecentInfo; group_name: PChar): Tgboolean; cdecl; external gtklib;
function gtk_recent_info_get_gicon(info: PGtkRecentInfo): PGIcon; cdecl; external gtklib;
function gtk_recent_info_get_short_name(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_get_uri_display(info: PGtkRecentInfo): PChar; cdecl; external gtklib;
function gtk_recent_info_get_age(info: PGtkRecentInfo): longint; cdecl; external gtklib;
function gtk_recent_info_is_local(info: PGtkRecentInfo): Tgboolean; cdecl; external gtklib;
function gtk_recent_info_exists(info: PGtkRecentInfo): Tgboolean; cdecl; external gtklib;
function gtk_recent_info_match(info_a: PGtkRecentInfo; info_b: PGtkRecentInfo): Tgboolean; cdecl; external gtklib;
procedure _gtk_recent_manager_sync; cdecl; external gtklib;

function GTK_RECENT_MANAGER_ERROR: TGQuark;
function GTK_TYPE_RECENT_INFO: TGType;


// === Konventiert am: 21-7-24 19:43:47 ===

function GTK_TYPE_RECENT_MANAGER: TGType;
function GTK_RECENT_MANAGER(obj: Pointer): PGtkRecentManager;
function GTK_RECENT_MANAGER_CLASS(klass: Pointer): PGtkRecentManagerClass;
function GTK_IS_RECENT_MANAGER(obj: Pointer): Tgboolean;
function GTK_IS_RECENT_MANAGER_CLASS(klass: Pointer): Tgboolean;
function GTK_RECENT_MANAGER_GET_CLASS(obj: Pointer): PGtkRecentManagerClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_RECENT_MANAGER: TGType;
begin
  GTK_TYPE_RECENT_MANAGER := gtk_recent_manager_get_type;
end;

function GTK_RECENT_MANAGER(obj: Pointer): PGtkRecentManager;
begin
  Result := PGtkRecentManager(g_type_check_instance_cast(obj, GTK_TYPE_RECENT_MANAGER));
end;

function GTK_RECENT_MANAGER_CLASS(klass: Pointer): PGtkRecentManagerClass;
begin
  Result := PGtkRecentManagerClass(g_type_check_class_cast(klass, GTK_TYPE_RECENT_MANAGER));
end;

function GTK_IS_RECENT_MANAGER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_RECENT_MANAGER);
end;

function GTK_IS_RECENT_MANAGER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_RECENT_MANAGER);
end;

function GTK_RECENT_MANAGER_GET_CLASS(obj: Pointer): PGtkRecentManagerClass;
begin
  Result := PGtkRecentManagerClass(PGTypeInstance(obj)^.g_class);
end;

// ====

function GTK_RECENT_MANAGER_ERROR: TGQuark;
begin
  GTK_RECENT_MANAGER_ERROR := gtk_recent_manager_error_quark;
end;

function GTK_TYPE_RECENT_INFO: TGType;
begin
  GTK_TYPE_RECENT_INFO := gtk_recent_info_get_type;
end;




{$ENDIF read_implementation}
