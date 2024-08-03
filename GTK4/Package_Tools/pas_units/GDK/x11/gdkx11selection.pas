unit gdkx11selection;

interface

uses
  glib2, common_GTK, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

function gdk_x11_display_text_property_to_text_list(display: PGdkDisplay; encoding: PChar; format: longint; Text: Pguchar; length: longint;
  list: PPPchar): longint; cdecl; external gtklib;
procedure gdk_x11_free_text_list(list: PPchar); cdecl; external gtklib;
function gdk_x11_display_string_to_compound_text(display: PGdkDisplay; str: PChar; encoding: PPchar; format: Plongint; ctext: PPguchar;
  length: Plongint): longint; cdecl; external gtklib;
function gdk_x11_display_utf8_to_compound_text(display: PGdkDisplay; str: PChar; encoding: PPchar; format: Plongint; ctext: PPguchar;
  length: Plongint): Tgboolean; cdecl; external gtklib;
procedure gdk_x11_free_compound_text(ctext: Pguchar); cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:50:45 ===


implementation



end.
