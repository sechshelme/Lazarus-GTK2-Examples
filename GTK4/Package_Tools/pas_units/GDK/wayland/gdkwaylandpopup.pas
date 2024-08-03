unit gdkwaylandpopup;

interface

uses
  glib2, common_GTK, gdkpopup;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkWaylandPopup = ^TGdkWaylandPopup;
  TGdkWaylandPopup = TGdkPopup;

function gdk_wayland_popup_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 19:19:36 ===

function GDK_TYPE_WAYLAND_POPUP: TGType;
function GDK_WAYLAND_POPUP(obj: Pointer): PGdkWaylandPopup;
function GDK_IS_WAYLAND_POPUP(obj: Pointer): Tgboolean;

implementation

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



end.
