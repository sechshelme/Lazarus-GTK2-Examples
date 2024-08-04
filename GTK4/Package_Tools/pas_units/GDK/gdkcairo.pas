unit gdkcairo;

interface

uses
  gdk2pixbuf, Cairo, common_GTK, gdktypes, gdkrectangle, gdkrgba;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

procedure gdk_cairo_set_source_rgba(cr: Pcairo_t; rgba: PGdkRGBA); cdecl; external gtklib;
procedure gdk_cairo_set_source_pixbuf(cr: Pcairo_t; pixbuf: PGdkPixbuf; pixbuf_x: Tdouble; pixbuf_y: Tdouble); cdecl; external gtklib;
procedure gdk_cairo_rectangle(cr: Pcairo_t; rectangle: PGdkRectangle); cdecl; external gtklib;
procedure gdk_cairo_region(cr: Pcairo_t; region: Pcairo_region_t); cdecl; external gtklib;
function gdk_cairo_region_create_from_surface(surface: Pcairo_surface_t): Pcairo_region_t; cdecl; external gtklib;
procedure gdk_cairo_draw_from_gl(cr: Pcairo_t; surface: PGdkSurface; Source: longint; source_type: longint; buffer_scale: longint;  x: longint; y: longint; Width: longint; Height: longint); cdecl; external gtklib;

// === Konventiert am: 30-7-24 17:34:41 ===


implementation



end.
