unit gskpath;

interface

uses
  glib2, Cairo, common_GTK, gskenums, gsktypes, gskpathpoint, gskstroke;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGskPathForeachFlags = ^TGskPathForeachFlags;
  TGskPathForeachFlags = longint;

const
  GSK_PATH_FOREACH_ALLOW_ONLY_LINES = 0;
  GSK_PATH_FOREACH_ALLOW_QUAD = 1 shl 0;
  GSK_PATH_FOREACH_ALLOW_CUBIC = 1 shl 1;
  GSK_PATH_FOREACH_ALLOW_CONIC = 1 shl 2;

type
  // Ausgelagert
  //TGskPath = record
  //end;
  //PGskPath = ^TGskPath;

  TGskPathForeachFunc = function(op: TGskPathOperation; pts: Pgraphene_point_t; n_pts: Tgsize; weight: single; user_data: Tgpointer): Tgboolean; cdecl;

function gsk_path_get_type: TGType; cdecl; external gtklib;
function gsk_path_ref(self: PGskPath): PGskPath; cdecl; external gtklib;
procedure gsk_path_unref(self: PGskPath); cdecl; external gtklib;
procedure gsk_path_print(self: PGskPath; _string: PGString); cdecl; external gtklib;
function gsk_path_to_string(self: PGskPath): PChar; cdecl; external gtklib;
function gsk_path_parse(_string: PChar): PGskPath; cdecl; external gtklib;
procedure gsk_path_to_cairo(self: PGskPath; cr: Pcairo_t); cdecl; external gtklib;
function gsk_path_is_empty(self: PGskPath): Tgboolean; cdecl; external gtklib;
function gsk_path_is_closed(self: PGskPath): Tgboolean; cdecl; external gtklib;
function gsk_path_get_bounds(self: PGskPath; bounds: Pgraphene_rect_t): Tgboolean; cdecl; external gtklib;
function gsk_path_get_stroke_bounds(self: PGskPath; stroke: PGskStroke; bounds: Pgraphene_rect_t): Tgboolean; cdecl; external gtklib;
function gsk_path_in_fill(self: PGskPath; point: Pgraphene_point_t; fill_rule: TGskFillRule): Tgboolean; cdecl; external gtklib;
function gsk_path_get_start_point(self: PGskPath; Result: PGskPathPoint): Tgboolean; cdecl; external gtklib;
function gsk_path_get_end_point(self: PGskPath; Result: PGskPathPoint): Tgboolean; cdecl; external gtklib;
function gsk_path_get_closest_point(self: PGskPath; point: Pgraphene_point_t; threshold: single; Result: PGskPathPoint; distance: Psingle): Tgboolean; cdecl; external gtklib;
function gsk_path_foreach(self: PGskPath; flags: TGskPathForeachFlags; func: TGskPathForeachFunc; user_data: Tgpointer): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:18:30 ===

function GSK_TYPE_PATH: TGType;

implementation

function GSK_TYPE_PATH: TGType;
begin
  GSK_TYPE_PATH := gsk_path_get_type;
end;



end.
