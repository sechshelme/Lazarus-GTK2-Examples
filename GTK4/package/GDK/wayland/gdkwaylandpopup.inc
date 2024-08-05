/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkWaylandPopup = ^TGdkWaylandPopup;
  TGdkWaylandPopup = TGdkPopup;

function gdk_wayland_popup_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:36 ===

function GDK_TYPE_WAYLAND_POPUP: TGType;
function GDK_WAYLAND_POPUP(obj: Pointer): PGdkWaylandPopup;
function GDK_IS_WAYLAND_POPUP(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_WAYLAND_POPUP: TGType;
begin
  GDK_TYPE_WAYLAND_POPUP := gdk_wayland_popup_get_type;
end;

function GDK_WAYLAND_POPUP(obj: Pointer): PGdkWaylandPopup;
begin
  Result := PGdkWaylandPopup(g_type_check_instance_cast(obj, GDK_TYPE_WAYLAND_POPUP));
end;

function GDK_IS_WAYLAND_POPUP(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_WAYLAND_POPUP);
end;



{$ENDIF read_implementation}
