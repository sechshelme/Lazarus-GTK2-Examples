/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkDisplayManager = record
  end;
  PGdkDisplayManager = ^TGdkDisplayManager;

function gdk_display_manager_get_type: TGType; cdecl; external gtklib;
function gdk_display_manager_get: PGdkDisplayManager; cdecl; external gtklib;
function gdk_display_manager_get_default_display(manager: PGdkDisplayManager): PGdkDisplay; cdecl; external gtklib;
procedure gdk_display_manager_set_default_display(manager: PGdkDisplayManager; display: PGdkDisplay); cdecl; external gtklib;
function gdk_display_manager_list_displays(manager: PGdkDisplayManager): PGSList; cdecl; external gtklib;
function gdk_display_manager_open_display(manager: PGdkDisplayManager; Name: PChar): PGdkDisplay; cdecl; external gtklib;
procedure gdk_set_allowed_backends(backends: PChar); cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:09:54 ===

function GDK_TYPE_DISPLAY_MANAGER: TGType;
function GDK_DISPLAY_MANAGER(obj: Pointer): PGdkDisplayManager;
function GDK_IS_DISPLAY_MANAGER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_DISPLAY_MANAGER: TGType;
begin
  GDK_TYPE_DISPLAY_MANAGER := gdk_display_manager_get_type;
end;

function GDK_DISPLAY_MANAGER(obj: Pointer): PGdkDisplayManager;
begin
  Result := PGdkDisplayManager(g_type_check_instance_cast(obj, GDK_TYPE_DISPLAY_MANAGER));
end;

function GDK_IS_DISPLAY_MANAGER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DISPLAY_MANAGER);
end;



{$ENDIF read_implementation}
