unit gdkpaintable;

interface

uses
  glib2, common_GTK, gdksnapshot;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkPaintableFlags = ^TGdkPaintableFlags;
  TGdkPaintableFlags = longint;

const
  GDK_PAINTABLE_STATIC_SIZE = 1 shl 0;
  GDK_PAINTABLE_STATIC_CONTENTS = 1 shl 1;

  {G_DECLARE_INTERFACE (GdkPaintable, gdk_paintable, GDK, PAINTABLE, GObject) }
type
  TGdkPaintable = record
  end;
  PGdkPaintable = ^TGdkPaintable;

  TGdkPaintableInterface = record
    g_iface: TGTypeInterface;
    snapshot: procedure(paintable: PGdkPaintable; snapshot: PGdkSnapshot; Width: Tdouble; Height: Tdouble); cdecl;
    get_current_image: function(paintable: PGdkPaintable): PGdkPaintable; cdecl;
    get_flags: function(paintable: PGdkPaintable): TGdkPaintableFlags; cdecl;
    get_intrinsic_width: function(paintable: PGdkPaintable): longint; cdecl;
    get_intrinsic_height: function(paintable: PGdkPaintable): longint; cdecl;
    get_intrinsic_aspect_ratio: function(paintable: PGdkPaintable): Tdouble; cdecl;
  end;
  PGdkPaintableInterface = ^TGdkPaintableInterface;

function gdk_paintable_get_type: TGType; cdecl; external gtklib;
procedure gdk_paintable_snapshot(paintable: PGdkPaintable; snapshot: PGdkSnapshot; Width: Tdouble; Height: Tdouble); cdecl; external gtklib;
function gdk_paintable_get_current_image(paintable: PGdkPaintable): PGdkPaintable; cdecl; external gtklib;
function gdk_paintable_get_flags(paintable: PGdkPaintable): TGdkPaintableFlags; cdecl; external gtklib;
function gdk_paintable_get_intrinsic_width(paintable: PGdkPaintable): longint; cdecl; external gtklib;
function gdk_paintable_get_intrinsic_height(paintable: PGdkPaintable): longint; cdecl; external gtklib;
function gdk_paintable_get_intrinsic_aspect_ratio(paintable: PGdkPaintable): Tdouble; cdecl; external gtklib;
procedure gdk_paintable_compute_concrete_size(paintable: PGdkPaintable; specified_width: Tdouble; specified_height: Tdouble; default_width: Tdouble; default_height: Tdouble;
  concrete_width: Pdouble; concrete_height: Pdouble); cdecl; external gtklib;
procedure gdk_paintable_invalidate_contents(paintable: PGdkPaintable); cdecl; external gtklib;
procedure gdk_paintable_invalidate_size(paintable: PGdkPaintable); cdecl; external gtklib;
function gdk_paintable_new_empty(intrinsic_width: longint; intrinsic_height: longint): PGdkPaintable; cdecl; external gtklib;

// === Konventiert am: 31-7-24 16:23:07 ===

function GDK_TYPE_PAINTABLE: TGType;
function GDK_PAINTABLE(obj: Pointer): PGdkPaintable;
function GDK_IS_PAINTABLE(obj: Pointer): Tgboolean;
function GDK_PAINTABLE_GET_IFACE(obj: Pointer): PGdkPaintableInterface;

implementation

function GDK_TYPE_PAINTABLE: TGType;
begin
  Result := gdk_paintable_get_type;
end;

function GDK_PAINTABLE(obj: Pointer): PGdkPaintable;
begin
  Result := PGdkPaintable(g_type_check_instance_cast(obj, GDK_TYPE_PAINTABLE));
end;

function GDK_IS_PAINTABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_PAINTABLE);
end;

function GDK_PAINTABLE_GET_IFACE(obj: Pointer): PGdkPaintableInterface;
begin
  Result := g_type_interface_peek(obj, GDK_TYPE_PAINTABLE);
end;




end.
