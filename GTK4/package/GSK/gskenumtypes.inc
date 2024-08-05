/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


function gsk_render_node_type_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_RENDER_NODE_TYPE: TGType;

function gsk_scaling_filter_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_SCALING_FILTER: TGType;

function gsk_blend_mode_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_BLEND_MODE: TGType;

function gsk_corner_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_CORNER: TGType;

function gsk_fill_rule_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_FILL_RULE: TGType;

function gsk_line_cap_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_LINE_CAP: TGType;

function gsk_line_join_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_LINE_JOIN: TGType;

function gsk_path_operation_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_PATH_OPERATION: TGType;

function gsk_path_direction_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_PATH_DIRECTION: TGType;

function gsk_serialization_error_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_SERIALIZATION_ERROR: TGType;

function gsk_transform_category_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_TRANSFORM_CATEGORY: TGType;

function gsk_gl_uniform_type_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_GL_UNIFORM_TYPE: TGType;

function gsk_mask_mode_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_MASK_MODE: TGType;

function gsk_path_foreach_flags_get_type: TGType; cdecl; external gtklib;

function GSK_TYPE_PATH_FOREACH_FLAGS: TGType;


// === Konventiert am: 3-8-24 13:56:04 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



function GSK_TYPE_RENDER_NODE_TYPE: TGType;
begin
  GSK_TYPE_RENDER_NODE_TYPE := gsk_render_node_type_get_type;
end;


function GSK_TYPE_SCALING_FILTER: TGType;
begin
  GSK_TYPE_SCALING_FILTER := gsk_scaling_filter_get_type;
end;


function GSK_TYPE_BLEND_MODE: TGType;
begin
  GSK_TYPE_BLEND_MODE := gsk_blend_mode_get_type;
end;


function GSK_TYPE_CORNER: TGType;
begin
  GSK_TYPE_CORNER := gsk_corner_get_type;
end;


function GSK_TYPE_FILL_RULE: TGType;
begin
  GSK_TYPE_FILL_RULE := gsk_fill_rule_get_type;
end;


function GSK_TYPE_LINE_CAP: TGType;
begin
  GSK_TYPE_LINE_CAP := gsk_line_cap_get_type;
end;


function GSK_TYPE_LINE_JOIN: TGType;
begin
  GSK_TYPE_LINE_JOIN := gsk_line_join_get_type;
end;


function GSK_TYPE_PATH_OPERATION: TGType;
begin
  GSK_TYPE_PATH_OPERATION := gsk_path_operation_get_type;
end;


function GSK_TYPE_PATH_DIRECTION: TGType;
begin
  GSK_TYPE_PATH_DIRECTION := gsk_path_direction_get_type;
end;


function GSK_TYPE_SERIALIZATION_ERROR: TGType;
begin
  GSK_TYPE_SERIALIZATION_ERROR := gsk_serialization_error_get_type;
end;


function GSK_TYPE_TRANSFORM_CATEGORY: TGType;
begin
  GSK_TYPE_TRANSFORM_CATEGORY := gsk_transform_category_get_type;
end;


function GSK_TYPE_GL_UNIFORM_TYPE: TGType;
begin
  GSK_TYPE_GL_UNIFORM_TYPE := gsk_gl_uniform_type_get_type;
end;


function GSK_TYPE_MASK_MODE: TGType;
begin
  GSK_TYPE_MASK_MODE := gsk_mask_mode_get_type;
end;


function GSK_TYPE_PATH_FOREACH_FLAGS: TGType;
begin
  GSK_TYPE_PATH_FOREACH_FLAGS := gsk_path_foreach_flags_get_type;
end;


{$ENDIF read_implementation}
