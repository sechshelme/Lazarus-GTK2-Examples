unit gskpathpoint;

interface

uses
  glib2, common_GTK, gskenums, gsktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGskPathPoint = ^TGskPathPoint;
  TGskPathPoint = record
    case longint of
      0: (rec: record
          contour: Tgsize;
          idx: Tgsize;
          t: single;
          end);
      1: (padding: array[0..7] of Tgpointer);
      2: (alignment: Tgraphene_vec4_t);
  end;


function gsk_path_point_get_type: TGType; cdecl; external gtklib;
function gsk_path_point_copy(point: PGskPathPoint): PGskPathPoint; cdecl; external gtklib;
procedure gsk_path_point_free(point: PGskPathPoint); cdecl; external gtklib;
function gsk_path_point_equal(point1: PGskPathPoint; point2: PGskPathPoint): Tgboolean; cdecl; external gtklib;
function gsk_path_point_compare(point1: PGskPathPoint; point2: PGskPathPoint): longint; cdecl; external gtklib;
procedure gsk_path_point_get_position(point: PGskPathPoint; path: PGskPath; position: Pgraphene_point_t); cdecl; external gtklib;
procedure gsk_path_point_get_tangent(point: PGskPathPoint; path: PGskPath; direction: TGskPathDirection; tangent: Pgraphene_vec2_t); cdecl; external gtklib;
function gsk_path_point_get_rotation(point: PGskPathPoint; path: PGskPath; direction: TGskPathDirection): single; cdecl; external gtklib;
function gsk_path_point_get_curvature(point: PGskPathPoint; path: PGskPath; direction: TGskPathDirection; center: Pgraphene_point_t): single; cdecl; external gtklib;
function gsk_path_point_get_distance(point: PGskPathPoint; measure: PGskPathMeasure): single; cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:18:49 ===

function GSK_TYPE_PATH_POINT: TGType;

implementation

function GSK_TYPE_PATH_POINT: TGType;
begin
  GSK_TYPE_PATH_POINT := gsk_path_point_get_type;
end;



end.
