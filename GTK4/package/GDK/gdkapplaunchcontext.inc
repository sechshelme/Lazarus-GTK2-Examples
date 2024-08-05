/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkAppLaunchContext = record
  end;
  PGdkAppLaunchContext = ^TGdkAppLaunchContext;

function gdk_app_launch_context_get_type: TGType; cdecl; external gtklib;
function gdk_app_launch_context_get_display(context: PGdkAppLaunchContext): PGdkDisplay; cdecl; external gtklib;
procedure gdk_app_launch_context_set_desktop(context: PGdkAppLaunchContext; desktop: longint); cdecl; external gtklib;
procedure gdk_app_launch_context_set_timestamp(context: PGdkAppLaunchContext; timestamp: Tguint32); cdecl; external gtklib;
procedure gdk_app_launch_context_set_icon(context: PGdkAppLaunchContext; icon: PGIcon); cdecl; external gtklib;
procedure gdk_app_launch_context_set_icon_name(context: PGdkAppLaunchContext; icon_name: PChar); cdecl; external gtklib;

// === Konventiert am: 2-8-24 15:51:39 ===

function GDK_TYPE_APP_LAUNCH_CONTEXT: TGType;
function GDK_APP_LAUNCH_CONTEXT(obj: Pointer): PGdkAppLaunchContext;
function GDK_IS_APP_LAUNCH_CONTEXT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_APP_LAUNCH_CONTEXT: TGType;
begin
  GDK_TYPE_APP_LAUNCH_CONTEXT := gdk_app_launch_context_get_type;
end;

function GDK_APP_LAUNCH_CONTEXT(obj: Pointer): PGdkAppLaunchContext;
begin
  Result := PGdkAppLaunchContext(g_type_check_instance_cast(obj, GDK_TYPE_APP_LAUNCH_CONTEXT));
end;

function GDK_IS_APP_LAUNCH_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_APP_LAUNCH_CONTEXT);
end;



{$ENDIF read_implementation}
