unit gtkoverlay;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkOverlay = record // _GtkOverlay
  end;
  PGtkOverlay = ^TGtkOverlay;

function gtk_overlay_get_type: TGType; cdecl; external gtklib;
function gtk_overlay_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_overlay_add_overlay(overlay: PGtkOverlay; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_overlay_remove_overlay(overlay: PGtkOverlay; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_overlay_set_child(overlay: PGtkOverlay; child: PGtkWidget); cdecl; external gtklib;
function gtk_overlay_get_child(overlay: PGtkOverlay): PGtkWidget; cdecl; external gtklib;
function gtk_overlay_get_measure_overlay(overlay: PGtkOverlay; widget: PGtkWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_overlay_set_measure_overlay(overlay: PGtkOverlay; widget: PGtkWidget; measure: Tgboolean); cdecl; external gtklib;
function gtk_overlay_get_clip_overlay(overlay: PGtkOverlay; widget: PGtkWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_overlay_set_clip_overlay(overlay: PGtkOverlay; widget: PGtkWidget; clip_overlay: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:13:25 ===

function GTK_TYPE_OVERLAY: TGType;
function GTK_OVERLAY(obj: Pointer): PGtkOverlay;
function GTK_IS_OVERLAY(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_OVERLAY: TGType;
begin
  GTK_TYPE_OVERLAY := gtk_overlay_get_type;
end;

function GTK_OVERLAY(obj: Pointer): PGtkOverlay;
begin
  Result := PGtkOverlay(g_type_check_instance_cast(obj, GTK_TYPE_OVERLAY));
end;

function GTK_IS_OVERLAY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_OVERLAY);
end;



end.
