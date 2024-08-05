/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  // Ausgelagert wegen gdkdisplay.h
function gdk_display_get_type: TGType; cdecl; external gtklib;
function gdk_display_open(display_name: PChar): PGdkDisplay; cdecl; external gtklib;
function gdk_display_get_name(display: PGdkDisplay): PChar; cdecl; external gtklib;
function gdk_display_device_is_grabbed(display: PGdkDisplay; device: PGdkDevice): Tgboolean; cdecl; external gtklib;
procedure gdk_display_beep(display: PGdkDisplay); cdecl; external gtklib;
procedure gdk_display_sync(display: PGdkDisplay); cdecl; external gtklib;
procedure gdk_display_flush(display: PGdkDisplay); cdecl; external gtklib;
procedure gdk_display_close(display: PGdkDisplay); cdecl; external gtklib;
function gdk_display_is_closed(display: PGdkDisplay): Tgboolean; cdecl; external gtklib;
function gdk_display_is_composited(display: PGdkDisplay): Tgboolean; cdecl; external gtklib;
function gdk_display_is_rgba(display: PGdkDisplay): Tgboolean; cdecl; external gtklib;
function gdk_display_supports_shadow_width(display: PGdkDisplay): Tgboolean; cdecl; external gtklib;
function gdk_display_supports_input_shapes(display: PGdkDisplay): Tgboolean; cdecl; external gtklib;
function gdk_display_prepare_gl(self: PGdkDisplay; error: PPGError): Tgboolean; cdecl; external gtklib;
function gdk_display_create_gl_context(self: PGdkDisplay; error: PPGError): PGdkGLContext; cdecl; external gtklib;
function gdk_display_get_default: PGdkDisplay; cdecl; external gtklib;
function gdk_display_get_clipboard(display: PGdkDisplay): PGdkClipboard; cdecl; external gtklib;
function gdk_display_get_primary_clipboard(display: PGdkDisplay): PGdkClipboard; cdecl; external gtklib;
procedure gdk_display_notify_startup_complete(display: PGdkDisplay; startup_id: PChar); cdecl; external gtklib;
function gdk_display_get_startup_notification_id(display: PGdkDisplay): PChar; cdecl; external gtklib;
function gdk_display_get_app_launch_context(display: PGdkDisplay): PGdkAppLaunchContext; cdecl; external gtklib;
function gdk_display_get_default_seat(display: PGdkDisplay): PGdkSeat; cdecl; external gtklib;
function gdk_display_list_seats(display: PGdkDisplay): PGList; cdecl; external gtklib;
function gdk_display_get_monitors(self: PGdkDisplay): PGListModel; cdecl; external gtklib;
function gdk_display_get_monitor_at_surface(display: PGdkDisplay; surface: PGdkSurface): PGdkMonitor; cdecl; external gtklib;
procedure gdk_display_put_event(display: PGdkDisplay; event: PGdkEvent); cdecl; external gtklib;
function gdk_display_map_keyval(display: PGdkDisplay; keyval: Tguint; keys: PPGdkKeymapKey; n_keys: Plongint): Tgboolean; cdecl; external gtklib;
function gdk_display_map_keycode(display: PGdkDisplay; keycode: Tguint; keys: PPGdkKeymapKey; keyvals: PPguint; n_entries: Plongint): Tgboolean; cdecl; external gtklib;
function gdk_display_translate_key(display: PGdkDisplay; keycode: Tguint; state: TGdkModifierType; group: longint; keyval: Pguint;
  effective_group: Plongint; level: Plongint; consumed: PGdkModifierType): Tgboolean; cdecl; external gtklib;
function gdk_display_get_setting(display: PGdkDisplay; Name: PChar; Value: PGValue): Tgboolean; cdecl; external gtklib;
function gdk_display_get_dmabuf_formats(display: PGdkDisplay): PGdkDmabufFormats; cdecl; external gtklib;

// === Konventiert am: 31-7-24 17:20:51 ===

function GDK_TYPE_DISPLAY: TGType;
function GDK_DISPLAY(obj: Pointer): PGdkDisplay;
function GDK_IS_DISPLAY(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_DISPLAY: TGType;
begin
  GDK_TYPE_DISPLAY := gdk_display_get_type;
end;

function GDK_DISPLAY(obj: Pointer): PGdkDisplay;
begin
  Result := PGdkDisplay(g_type_check_instance_cast(obj, GDK_TYPE_DISPLAY));
end;

function GDK_IS_DISPLAY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DISPLAY);
end;



{$ENDIF read_implementation}
