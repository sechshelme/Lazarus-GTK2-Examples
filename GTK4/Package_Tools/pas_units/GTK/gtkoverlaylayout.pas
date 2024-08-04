unit gtkoverlaylayout;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtklayoutmanager, gtklayoutchild;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkOverlayLayout, gtk_overlay_layout, GTK, OVERLAY_LAYOUT, GtkLayoutManager) }
type
  TGtkOverlayLayout = record
  end;
  PGtkOverlayLayout = ^TGtkOverlayLayout;

  TGtkOverlayLayoutClass = record
    parent_class: TGtkLayoutManagerClass;
  end;
  PGtkOverlayLayoutClass = ^TGtkOverlayLayoutClass;

function gtk_overlay_layout_get_type: TGType; cdecl; external gtklib;
function gtk_overlay_layout_new: PGtkLayoutManager; cdecl; external gtklib;

{G_DECLARE_FINAL_TYPE (GtkOverlayLayoutChild, gtk_overlay_layout_child, GTK, OVERLAY_LAYOUT_CHILD, GtkLayoutChild) }
type
  TGtkOverlayLayoutChild = record
  end;
  PGtkOverlayLayoutChild = ^TGtkOverlayLayoutChild;

  TGtkOverlayLayoutChildClass = record
    parent_class: TGtkLayoutChildClass;
  end;
  PGtkOverlayLayoutChildClass = ^TGtkOverlayLayoutChildClass;

function gtk_overlay_layout_child_get_type: TGType; cdecl; external gtklib;
procedure gtk_overlay_layout_child_set_measure(child: PGtkOverlayLayoutChild; measure: Tgboolean); cdecl; external gtklib;
function gtk_overlay_layout_child_get_measure(child: PGtkOverlayLayoutChild): Tgboolean; cdecl; external gtklib;
procedure gtk_overlay_layout_child_set_clip_overlay(child: PGtkOverlayLayoutChild; clip_overlay: Tgboolean); cdecl; external gtklib;
function gtk_overlay_layout_child_get_clip_overlay(child: PGtkOverlayLayoutChild): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:13:46 ===

function GTK_TYPE_OVERLAY_LAYOUT: TGType;
function GTK_OVERLAY_LAYOUT(obj: Pointer): PGtkOverlayLayout;
function GTK_IS_OVERLAY_LAYOUT(obj: Pointer): Tgboolean;

function GTK_TYPE_OVERLAY_LAYOUT_CHILD: TGType;
function GTK_OVERLAY_LAYOUT_CHILD(obj: Pointer): PGtkOverlayLayoutChild;
function GTK_IS_OVERLAY_LAYOUT_CHILD(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_OVERLAY_LAYOUT: TGType;
begin
  Result := gtk_overlay_layout_get_type;
end;

function GTK_OVERLAY_LAYOUT(obj: Pointer): PGtkOverlayLayout;
begin
  Result := PGtkOverlayLayout(g_type_check_instance_cast(obj, GTK_TYPE_OVERLAY_LAYOUT));
end;

function GTK_IS_OVERLAY_LAYOUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_OVERLAY_LAYOUT);
end;

// =====

function GTK_TYPE_OVERLAY_LAYOUT_CHILD: TGType;
begin
  Result := gtk_overlay_layout_child_get_type;
end;

function GTK_OVERLAY_LAYOUT_CHILD(obj: Pointer): PGtkOverlayLayoutChild;
begin
  Result := PGtkOverlayLayoutChild(g_type_check_instance_cast(obj, GTK_TYPE_OVERLAY_LAYOUT_CHILD));
end;

function GTK_IS_OVERLAY_LAYOUT_CHILD(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_OVERLAY_LAYOUT_CHILD);
end;



end.
