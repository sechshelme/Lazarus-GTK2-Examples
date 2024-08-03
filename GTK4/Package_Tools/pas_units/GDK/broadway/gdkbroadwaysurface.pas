unit gdkbroadwaysurface;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkBroadwaySurface = ^TGdkBroadwaySurface;
  TGdkBroadwaySurface = TGdkSurface;

  TGdkBroadwaySurfaceClass = record
  end;
  PGdkBroadwaySurfaceClass = ^TGdkBroadwaySurfaceClass;

function gdk_broadway_surface_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 18:13:40 ===

function GDK_TYPE_BROADWAY_SURFACE: TGType;
function GDK_BROADWAY_SURFACE(obj: Pointer): PGdkBroadwaySurface;
function GDK_BROADWAY_SURFACE_CLASS(klass: Pointer): PGdkBroadwaySurfaceClass;
function GDK_IS_BROADWAY_SURFACE(obj: Pointer): Tgboolean;
function GDK_IS_BROADWAY_SURFACE_CLASS(klass: Pointer): Tgboolean;
function GDK_BROADWAY_SURFACE_GET_CLASS(obj: Pointer): PGdkBroadwaySurfaceClass;

implementation

function GDK_TYPE_BROADWAY_SURFACE: TGType;
begin
  GDK_TYPE_BROADWAY_SURFACE := gdk_broadway_surface_get_type;
end;

function GDK_BROADWAY_SURFACE(obj: Pointer): PGdkBroadwaySurface;
begin
  Result := PGdkBroadwaySurface(g_type_check_instance_cast(obj, GDK_TYPE_BROADWAY_SURFACE));
end;

function GDK_BROADWAY_SURFACE_CLASS(klass: Pointer): PGdkBroadwaySurfaceClass;
begin
  Result := PGdkBroadwaySurfaceClass(g_type_check_class_cast(klass, GDK_TYPE_BROADWAY_SURFACE));
end;

function GDK_IS_BROADWAY_SURFACE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_BROADWAY_SURFACE);
end;

function GDK_IS_BROADWAY_SURFACE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_BROADWAY_SURFACE);
end;

function GDK_BROADWAY_SURFACE_GET_CLASS(obj: Pointer): PGdkBroadwaySurfaceClass;
begin
  Result := PGdkBroadwaySurfaceClass(PGTypeInstance(obj)^.g_class);
end;



end.
