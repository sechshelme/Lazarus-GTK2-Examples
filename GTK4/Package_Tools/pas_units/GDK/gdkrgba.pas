unit gdkrgba;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkRGBA = record
    red: single;
    green: single;
    blue: single;
    alpha: single;
  end;
  PGdkRGBA = ^TGdkRGBA;

function gdk_rgba_get_type: TGType; cdecl; external gtklib;
function gdk_rgba_copy(rgba: PGdkRGBA): PGdkRGBA; cdecl; external gtklib;
procedure gdk_rgba_free(rgba: PGdkRGBA); cdecl; external gtklib;
function gdk_rgba_is_clear(rgba: PGdkRGBA): Tgboolean; cdecl; external gtklib;
function gdk_rgba_is_opaque(rgba: PGdkRGBA): Tgboolean; cdecl; external gtklib;
function gdk_rgba_hash(p: Tgconstpointer): Tguint; cdecl; external gtklib;
function gdk_rgba_equal(p1: Tgconstpointer; p2: Tgconstpointer): Tgboolean; cdecl; external gtklib;
function gdk_rgba_parse(rgba: PGdkRGBA; spec: PChar): Tgboolean; cdecl; external gtklib;
function gdk_rgba_to_string(rgba: PGdkRGBA): PChar; cdecl; external gtklib;

// === Konventiert am: 2-8-24 15:28:34 ===

function GDK_TYPE_RGBA: TGType;

implementation

function GDK_TYPE_RGBA: TGType;
begin
  GDK_TYPE_RGBA := gdk_rgba_get_type;
end;



end.
