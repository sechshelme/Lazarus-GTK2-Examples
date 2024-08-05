/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGskPathBuilder = record
  end;
  PGskPathBuilder = ^TGskPathBuilder;

function gsk_path_builder_get_type: TGType; cdecl; external gtklib;
function gsk_path_builder_new: PGskPathBuilder; cdecl; external gtklib;
function gsk_path_builder_ref(self: PGskPathBuilder): PGskPathBuilder; cdecl; external gtklib;
procedure gsk_path_builder_unref(self: PGskPathBuilder); cdecl; external gtklib;
function gsk_path_builder_free_to_path(self: PGskPathBuilder): PGskPath; cdecl; external gtklib;
function gsk_path_builder_to_path(self: PGskPathBuilder): PGskPath; cdecl; external gtklib;
function gsk_path_builder_get_current_point(self: PGskPathBuilder): Pgraphene_point_t; cdecl; external gtklib;
procedure gsk_path_builder_add_path(self: PGskPathBuilder; path: PGskPath); cdecl; external gtklib;
procedure gsk_path_builder_add_reverse_path(self: PGskPathBuilder; path: PGskPath); cdecl; external gtklib;
procedure gsk_path_builder_add_cairo_path(self: PGskPathBuilder; path: Pcairo_path_t); cdecl; external gtklib;
procedure gsk_path_builder_add_layout(self: PGskPathBuilder; layout: PPangoLayout); cdecl; external gtklib;
procedure gsk_path_builder_add_rect(self: PGskPathBuilder; rect: Pgraphene_rect_t); cdecl; external gtklib;
procedure gsk_path_builder_add_rounded_rect(self: PGskPathBuilder; rect: PGskRoundedRect); cdecl; external gtklib;
procedure gsk_path_builder_add_circle(self: PGskPathBuilder; center: Pgraphene_point_t; radius: single); cdecl; external gtklib;
procedure gsk_path_builder_add_segment(self: PGskPathBuilder; path: PGskPath; start: PGskPathPoint; _end: PGskPathPoint); cdecl; external gtklib;
procedure gsk_path_builder_move_to(self: PGskPathBuilder; x: single; y: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_move_to(self: PGskPathBuilder; x: single; y: single); cdecl; external gtklib;
procedure gsk_path_builder_line_to(self: PGskPathBuilder; x: single; y: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_line_to(self: PGskPathBuilder; x: single; y: single); cdecl; external gtklib;
procedure gsk_path_builder_quad_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_quad_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single); cdecl; external gtklib;
procedure gsk_path_builder_cubic_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single;
  x3: single; y3: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_cubic_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single;
  x3: single; y3: single); cdecl; external gtklib;
procedure gsk_path_builder_conic_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single;
  weight: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_conic_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single;
  weight: single); cdecl; external gtklib;
procedure gsk_path_builder_arc_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_arc_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single); cdecl; external gtklib;
procedure gsk_path_builder_svg_arc_to(self: PGskPathBuilder; rx: single; ry: single; x_axis_rotation: single; large_arc: Tgboolean;
  positive_sweep: Tgboolean; x: single; y: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_svg_arc_to(self: PGskPathBuilder; rx: single; ry: single; x_axis_rotation: single; large_arc: Tgboolean;
  positive_sweep: Tgboolean; x: single; y: single); cdecl; external gtklib;
procedure gsk_path_builder_html_arc_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single;
  radius: single); cdecl; external gtklib;
procedure gsk_path_builder_rel_html_arc_to(self: PGskPathBuilder; x1: single; y1: single; x2: single; y2: single;
  radius: single); cdecl; external gtklib;
procedure gsk_path_builder_close(self: PGskPathBuilder); cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:18:37 ===

function GSK_TYPE_PATH_BUILDER: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GSK_TYPE_PATH_BUILDER: TGType;
begin
  GSK_TYPE_PATH_BUILDER := gsk_path_builder_get_type;
end;



{$ENDIF read_implementation}
