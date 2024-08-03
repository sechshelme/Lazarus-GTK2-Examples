unit gdkpango;

interface

uses
  Cairo, pango, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

function gdk_pango_layout_line_get_clip_region(line: PPangoLayoutLine; x_origin: longint; y_origin: longint; index_ranges: Plongint; n_ranges: longint): Pcairo_region_t; cdecl; external gtklib;
function gdk_pango_layout_get_clip_region(layout: PPangoLayout; x_origin: longint; y_origin: longint; index_ranges: Plongint; n_ranges: longint): Pcairo_region_t; cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:23:28 ===


implementation



end.
