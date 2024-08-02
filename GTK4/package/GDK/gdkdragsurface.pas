unit gdkdragsurface;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_INTERFACE (GdkDragSurface, gdk_drag_surface, GDK, DRAG_SURFACE, GObject) }
type
  TGdkDragSurface = record
  end;
  PGdkDragSurface = ^TGdkDragSurface;

  TGdkDragSurfaceInterface = record
  end;
  PGdkDragSurfaceInterface = ^TGdkDragSurfaceInterface;

function gdk_drag_surface_get_type: TGType; cdecl; external gtklib;
function gdk_drag_surface_present(drag_surface: PGdkDragSurface; Width: longint; Height: longint): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:10:32 ===

function GDK_TYPE_DRAG_SURFACE: TGType;
function GDK_DRAG_SURFACE(obj: Pointer): PGdkDragSurface;
function GDK_IS_DRAG_SURFACE(obj: Pointer): Tgboolean;
function GDK_DRAG_SURFACE_GET_IFACE(obj: Pointer): PGdkDragSurfaceInterface;

implementation

function GDK_TYPE_DRAG_SURFACE: TGType;
begin
  Result := gdk_drag_surface_get_type;
end;

function GDK_DRAG_SURFACE(obj: Pointer): PGdkDragSurface;
begin
  Result := PGdkDragSurface(g_type_check_instance_cast(obj, GDK_TYPE_DRAG_SURFACE));
end;

function GDK_IS_DRAG_SURFACE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DRAG_SURFACE);
end;

function GDK_DRAG_SURFACE_GET_IFACE(obj: Pointer): PGdkDragSurfaceInterface;
begin
  Result := g_type_interface_peek(obj, GDK_TYPE_DRAG_SURFACE);
end;




end.
