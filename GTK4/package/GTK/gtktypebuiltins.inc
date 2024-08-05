/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


{ enumerations from "gtkassistant.h"  }
function gtk_assistant_page_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ASSISTANT_PAGE_TYPE: TGType;

{ enumerations from "gtkcellrenderer.h"  }
function gtk_cell_renderer_state_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CELL_RENDERER_STATE: TGType;

function gtk_cell_renderer_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CELL_RENDERER_MODE: TGType;

{ enumerations from "gtkcellrendereraccel.h"  }
function gtk_cell_renderer_accel_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CELL_RENDERER_ACCEL_MODE: TGType;

{ enumerations from "gtkdialog.h"  }
function gtk_dialog_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_DIALOG_FLAGS: TGType;

function gtk_response_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_RESPONSE_TYPE: TGType;

{ enumerations from "gtkfilechooser.h"  }
function gtk_file_chooser_action_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_FILE_CHOOSER_ACTION: TGType;

function gtk_file_chooser_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_FILE_CHOOSER_ERROR: TGType;

{ enumerations from "gtkfontchooser.h"  }
function gtk_font_chooser_level_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_FONT_CHOOSER_LEVEL: TGType;

{ enumerations from "gtkiconview.h"  }
function gtk_icon_view_drop_position_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ICON_VIEW_DROP_POSITION: TGType;

{ enumerations from "gtkmessagedialog.h"  }
function gtk_buttons_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_BUTTONS_TYPE: TGType;

{ enumerations from "gtkstylecontext.h"  }
function gtk_style_context_print_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_STYLE_CONTEXT_PRINT_FLAGS: TGType;

{ enumerations from "gtktreemodel.h"  }
function gtk_tree_model_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TREE_MODEL_FLAGS: TGType;

{ enumerations from "gtktreeview.h"  }
function gtk_tree_view_drop_position_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TREE_VIEW_DROP_POSITION: TGType;

{ enumerations from "gtktreeviewcolumn.h"  }
function gtk_tree_view_column_sizing_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TREE_VIEW_COLUMN_SIZING: TGType;

{ enumerations from "gtkaboutdialog.h"  }
function gtk_license_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_LICENSE: TGType;

{ enumerations from "gtkaccessible.h"  }
function gtk_accessible_platform_state_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_PLATFORM_STATE: TGType;

{ enumerations from "gtkaccessibletext.h"  }
function gtk_accessible_text_granularity_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_TEXT_GRANULARITY: TGType;

function gtk_accessible_text_content_change_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_TEXT_CONTENT_CHANGE: TGType;

{ enumerations from "gtkapplication.h"  }
function gtk_application_inhibit_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_APPLICATION_INHIBIT_FLAGS: TGType;

{ enumerations from "gtkbuilder.h"  }
function gtk_builder_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_BUILDER_ERROR: TGType;

{ enumerations from "gtkbuilderscope.h"  }
function gtk_builder_closure_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_BUILDER_CLOSURE_FLAGS: TGType;

{ enumerations from "gtkdebug.h"  }
function gtk_debug_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_DEBUG_FLAGS: TGType;

{ enumerations from "gtkdialogerror.h"  }
function gtk_dialog_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_DIALOG_ERROR: TGType;

{ enumerations from "gtkeditable.h"  }
function gtk_editable_properties_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_EDITABLE_PROPERTIES: TGType;

{ enumerations from "gtkentry.h"  }
function gtk_entry_icon_position_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ENTRY_ICON_POSITION: TGType;

{ enumerations from "gtkenums.h"  }
function gtk_align_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ALIGN: TGType;

function gtk_arrow_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ARROW_TYPE: TGType;

function gtk_baseline_position_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_BASELINE_POSITION: TGType;

function gtk_content_fit_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CONTENT_FIT: TGType;

function gtk_delete_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_DELETE_TYPE: TGType;

function gtk_direction_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_DIRECTION_TYPE: TGType;

function gtk_icon_size_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ICON_SIZE: TGType;

function gtk_sensitivity_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SENSITIVITY_TYPE: TGType;

function gtk_text_direction_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TEXT_DIRECTION: TGType;

function gtk_justification_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_JUSTIFICATION: TGType;

function gtk_list_tab_behavior_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_LIST_TAB_BEHAVIOR: TGType;

function gtk_list_scroll_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_LIST_SCROLL_FLAGS: TGType;

function gtk_message_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_MESSAGE_TYPE: TGType;

function gtk_movement_step_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_MOVEMENT_STEP: TGType;

function gtk_natural_wrap_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_NATURAL_WRAP_MODE: TGType;

function gtk_scroll_step_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SCROLL_STEP: TGType;

function gtk_orientation_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ORIENTATION: TGType;

function gtk_overflow_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_OVERFLOW: TGType;

function gtk_pack_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PACK_TYPE: TGType;

function gtk_position_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_POSITION_TYPE: TGType;

function gtk_scroll_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SCROLL_TYPE: TGType;

function gtk_selection_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SELECTION_MODE: TGType;

function gtk_wrap_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_WRAP_MODE: TGType;

function gtk_sort_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SORT_TYPE: TGType;

function gtk_print_pages_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_PAGES: TGType;

function gtk_page_set_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PAGE_SET: TGType;

function gtk_number_up_layout_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_NUMBER_UP_LAYOUT: TGType;

function gtk_ordering_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ORDERING: TGType;

function gtk_page_orientation_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PAGE_ORIENTATION: TGType;

function gtk_print_quality_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_QUALITY: TGType;

function gtk_print_duplex_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_DUPLEX: TGType;

function gtk_unit_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_UNIT: TGType;

function gtk_tree_view_grid_lines_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TREE_VIEW_GRID_LINES: TGType;

function gtk_size_group_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SIZE_GROUP_MODE: TGType;

function gtk_size_request_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SIZE_REQUEST_MODE: TGType;

function gtk_scrollable_policy_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SCROLLABLE_POLICY: TGType;

function gtk_state_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_STATE_FLAGS: TGType;

function gtk_border_style_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_BORDER_STYLE: TGType;

function gtk_level_bar_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_LEVEL_BAR_MODE: TGType;

function gtk_input_purpose_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_INPUT_PURPOSE: TGType;

function gtk_input_hints_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_INPUT_HINTS: TGType;

function gtk_propagation_phase_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PROPAGATION_PHASE: TGType;

function gtk_propagation_limit_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PROPAGATION_LIMIT: TGType;

function gtk_event_sequence_state_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_EVENT_SEQUENCE_STATE: TGType;

function gtk_pan_direction_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PAN_DIRECTION: TGType;

function gtk_shortcut_scope_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SHORTCUT_SCOPE: TGType;

function gtk_pick_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PICK_FLAGS: TGType;

function gtk_constraint_relation_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CONSTRAINT_RELATION: TGType;

function gtk_constraint_strength_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CONSTRAINT_STRENGTH: TGType;

function gtk_constraint_attribute_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CONSTRAINT_ATTRIBUTE: TGType;

function gtk_constraint_vfl_parser_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CONSTRAINT_VFL_PARSER_ERROR: TGType;

function gtk_system_setting_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SYSTEM_SETTING: TGType;

function gtk_symbolic_color_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SYMBOLIC_COLOR: TGType;

function gtk_accessible_role_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_ROLE: TGType;

function gtk_accessible_state_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_STATE: TGType;

function gtk_accessible_property_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_PROPERTY: TGType;

function gtk_accessible_relation_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_RELATION: TGType;

function gtk_accessible_tristate_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_TRISTATE: TGType;

function gtk_accessible_invalid_state_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_INVALID_STATE: TGType;

function gtk_accessible_autocomplete_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_AUTOCOMPLETE: TGType;

function gtk_accessible_sort_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_SORT: TGType;

function gtk_accessible_announcement_priority_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ACCESSIBLE_ANNOUNCEMENT_PRIORITY: TGType;

function gtk_popover_menu_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_POPOVER_MENU_FLAGS: TGType;

{ enumerations from "gtkeventcontrollerscroll.h"  }
function gtk_event_controller_scroll_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_EVENT_CONTROLLER_SCROLL_FLAGS: TGType;

{ enumerations from "gtkfilter.h"  }
function gtk_filter_match_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_FILTER_MATCH: TGType;

function gtk_filter_change_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_FILTER_CHANGE: TGType;

{ enumerations from "gtkfontdialogbutton.h"  }
function gtk_font_level_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_FONT_LEVEL: TGType;

{ enumerations from "gtkgraphicsoffload.h"  }
function gtk_graphics_offload_enabled_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_GRAPHICS_OFFLOAD_ENABLED: TGType;

{ enumerations from "gtkicontheme.h"  }
function gtk_icon_lookup_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ICON_LOOKUP_FLAGS: TGType;

function gtk_icon_theme_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_ICON_THEME_ERROR: TGType;

{ enumerations from "gtkimage.h"  }
function gtk_image_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_IMAGE_TYPE: TGType;

{ enumerations from "gtkinscription.h"  }
function gtk_inscription_overflow_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_INSCRIPTION_OVERFLOW: TGType;

{ enumerations from "gtknotebook.h"  }
function gtk_notebook_tab_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_NOTEBOOK_TAB: TGType;

{ enumerations from "gtkpadcontroller.h"  }
function gtk_pad_action_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PAD_ACTION_TYPE: TGType;

{ enumerations from "gtkrecentmanager.h"  }
function gtk_recent_manager_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_RECENT_MANAGER_ERROR: TGType;

{ enumerations from "gtkrevealer.h"  }
function gtk_revealer_transition_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_REVEALER_TRANSITION_TYPE: TGType;

{ enumerations from "gtkscrolledwindow.h"  }
function gtk_corner_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_CORNER_TYPE: TGType;

function gtk_policy_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_POLICY_TYPE: TGType;

{ enumerations from "gtkshortcutaction.h"  }
function gtk_shortcut_action_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SHORTCUT_ACTION_FLAGS: TGType;

{ enumerations from "gtkshortcutsshortcut.h"  }
function gtk_shortcut_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SHORTCUT_TYPE: TGType;

{ enumerations from "gtksorter.h"  }
function gtk_sorter_order_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SORTER_ORDER: TGType;

function gtk_sorter_change_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SORTER_CHANGE: TGType;

{ enumerations from "gtkspinbutton.h"  }
function gtk_spin_button_update_policy_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SPIN_BUTTON_UPDATE_POLICY: TGType;

function gtk_spin_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_SPIN_TYPE: TGType;

{ enumerations from "gtkstack.h"  }
function gtk_stack_transition_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_STACK_TRANSITION_TYPE: TGType;

{ enumerations from "gtkstringfilter.h"  }
function gtk_string_filter_match_mode_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_STRING_FILTER_MATCH_MODE: TGType;

{ enumerations from "gtkstringsorter.h"  }
function gtk_collation_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_COLLATION: TGType;

{ enumerations from "gtktextiter.h"  }
function gtk_text_search_flags_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TEXT_SEARCH_FLAGS: TGType;

{ enumerations from "gtktextview.h"  }
function gtk_text_window_type_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TEXT_WINDOW_TYPE: TGType;

function gtk_text_view_layer_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TEXT_VIEW_LAYER: TGType;

function gtk_text_extend_selection_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_TEXT_EXTEND_SELECTION: TGType;

{ enumerations from "gtkprintoperation.h"  }
function gtk_print_status_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_STATUS: TGType;

function gtk_print_operation_result_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_OPERATION_RESULT: TGType;

function gtk_print_operation_action_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_OPERATION_ACTION: TGType;

function gtk_print_error_get_type: TGType; cdecl; external gtklib;
function GTK_TYPE_PRINT_ERROR: TGType;


{$ENDIF read_interface}


{$IFDEF read_implementation}


function GTK_TYPE_ASSISTANT_PAGE_TYPE: TGType;
begin
  GTK_TYPE_ASSISTANT_PAGE_TYPE := gtk_assistant_page_type_get_type;
end;


function GTK_TYPE_CELL_RENDERER_STATE: TGType;
begin
  GTK_TYPE_CELL_RENDERER_STATE := gtk_cell_renderer_state_get_type;
end;


function GTK_TYPE_CELL_RENDERER_MODE: TGType;
begin
  GTK_TYPE_CELL_RENDERER_MODE := gtk_cell_renderer_mode_get_type;
end;


function GTK_TYPE_CELL_RENDERER_ACCEL_MODE: TGType;
begin
  GTK_TYPE_CELL_RENDERER_ACCEL_MODE := gtk_cell_renderer_accel_mode_get_type;
end;


function GTK_TYPE_DIALOG_FLAGS: TGType;
begin
  GTK_TYPE_DIALOG_FLAGS := gtk_dialog_flags_get_type;
end;


function GTK_TYPE_RESPONSE_TYPE: TGType;
begin
  GTK_TYPE_RESPONSE_TYPE := gtk_response_type_get_type;
end;


function GTK_TYPE_FILE_CHOOSER_ACTION: TGType;
begin
  GTK_TYPE_FILE_CHOOSER_ACTION := gtk_file_chooser_action_get_type;
end;


function GTK_TYPE_FILE_CHOOSER_ERROR: TGType;
begin
  GTK_TYPE_FILE_CHOOSER_ERROR := gtk_file_chooser_error_get_type;
end;


function GTK_TYPE_FONT_CHOOSER_LEVEL: TGType;
begin
  GTK_TYPE_FONT_CHOOSER_LEVEL := gtk_font_chooser_level_get_type;
end;


function GTK_TYPE_ICON_VIEW_DROP_POSITION: TGType;
begin
  GTK_TYPE_ICON_VIEW_DROP_POSITION := gtk_icon_view_drop_position_get_type;
end;


function GTK_TYPE_BUTTONS_TYPE: TGType;
begin
  GTK_TYPE_BUTTONS_TYPE := gtk_buttons_type_get_type;
end;


function GTK_TYPE_STYLE_CONTEXT_PRINT_FLAGS: TGType;
begin
  GTK_TYPE_STYLE_CONTEXT_PRINT_FLAGS := gtk_style_context_print_flags_get_type;
end;


function GTK_TYPE_TREE_MODEL_FLAGS: TGType;
begin
  GTK_TYPE_TREE_MODEL_FLAGS := gtk_tree_model_flags_get_type;
end;


function GTK_TYPE_TREE_VIEW_DROP_POSITION: TGType;
begin
  GTK_TYPE_TREE_VIEW_DROP_POSITION := gtk_tree_view_drop_position_get_type;
end;


function GTK_TYPE_TREE_VIEW_COLUMN_SIZING: TGType;
begin
  GTK_TYPE_TREE_VIEW_COLUMN_SIZING := gtk_tree_view_column_sizing_get_type;
end;


function GTK_TYPE_LICENSE: TGType;
begin
  GTK_TYPE_LICENSE := gtk_license_get_type;
end;


function GTK_TYPE_ACCESSIBLE_PLATFORM_STATE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_PLATFORM_STATE := gtk_accessible_platform_state_get_type;
end;


function GTK_TYPE_ACCESSIBLE_TEXT_GRANULARITY: TGType;
begin
  GTK_TYPE_ACCESSIBLE_TEXT_GRANULARITY := gtk_accessible_text_granularity_get_type;
end;


function GTK_TYPE_ACCESSIBLE_TEXT_CONTENT_CHANGE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_TEXT_CONTENT_CHANGE := gtk_accessible_text_content_change_get_type;
end;


function GTK_TYPE_APPLICATION_INHIBIT_FLAGS: TGType;
begin
  GTK_TYPE_APPLICATION_INHIBIT_FLAGS := gtk_application_inhibit_flags_get_type;
end;


function GTK_TYPE_BUILDER_ERROR: TGType;
begin
  GTK_TYPE_BUILDER_ERROR := gtk_builder_error_get_type;
end;


function GTK_TYPE_BUILDER_CLOSURE_FLAGS: TGType;
begin
  GTK_TYPE_BUILDER_CLOSURE_FLAGS := gtk_builder_closure_flags_get_type;
end;


function GTK_TYPE_DEBUG_FLAGS: TGType;
begin
  GTK_TYPE_DEBUG_FLAGS := gtk_debug_flags_get_type;
end;


function GTK_TYPE_DIALOG_ERROR: TGType;
begin
  GTK_TYPE_DIALOG_ERROR := gtk_dialog_error_get_type;
end;


function GTK_TYPE_EDITABLE_PROPERTIES: TGType;
begin
  GTK_TYPE_EDITABLE_PROPERTIES := gtk_editable_properties_get_type;
end;


function GTK_TYPE_ENTRY_ICON_POSITION: TGType;
begin
  GTK_TYPE_ENTRY_ICON_POSITION := gtk_entry_icon_position_get_type;
end;


function GTK_TYPE_ALIGN: TGType;
begin
  GTK_TYPE_ALIGN := gtk_align_get_type;
end;


function GTK_TYPE_ARROW_TYPE: TGType;
begin
  GTK_TYPE_ARROW_TYPE := gtk_arrow_type_get_type;
end;


function GTK_TYPE_BASELINE_POSITION: TGType;
begin
  GTK_TYPE_BASELINE_POSITION := gtk_baseline_position_get_type;
end;


function GTK_TYPE_CONTENT_FIT: TGType;
begin
  GTK_TYPE_CONTENT_FIT := gtk_content_fit_get_type;
end;


function GTK_TYPE_DELETE_TYPE: TGType;
begin
  GTK_TYPE_DELETE_TYPE := gtk_delete_type_get_type;
end;


function GTK_TYPE_DIRECTION_TYPE: TGType;
begin
  GTK_TYPE_DIRECTION_TYPE := gtk_direction_type_get_type;
end;


function GTK_TYPE_ICON_SIZE: TGType;
begin
  GTK_TYPE_ICON_SIZE := gtk_icon_size_get_type;
end;


function GTK_TYPE_SENSITIVITY_TYPE: TGType;
begin
  GTK_TYPE_SENSITIVITY_TYPE := gtk_sensitivity_type_get_type;
end;


function GTK_TYPE_TEXT_DIRECTION: TGType;
begin
  GTK_TYPE_TEXT_DIRECTION := gtk_text_direction_get_type;
end;


function GTK_TYPE_JUSTIFICATION: TGType;
begin
  GTK_TYPE_JUSTIFICATION := gtk_justification_get_type;
end;


function GTK_TYPE_LIST_TAB_BEHAVIOR: TGType;
begin
  GTK_TYPE_LIST_TAB_BEHAVIOR := gtk_list_tab_behavior_get_type;
end;


function GTK_TYPE_LIST_SCROLL_FLAGS: TGType;
begin
  GTK_TYPE_LIST_SCROLL_FLAGS := gtk_list_scroll_flags_get_type;
end;


function GTK_TYPE_MESSAGE_TYPE: TGType;
begin
  GTK_TYPE_MESSAGE_TYPE := gtk_message_type_get_type;
end;


function GTK_TYPE_MOVEMENT_STEP: TGType;
begin
  GTK_TYPE_MOVEMENT_STEP := gtk_movement_step_get_type;
end;


function GTK_TYPE_NATURAL_WRAP_MODE: TGType;
begin
  GTK_TYPE_NATURAL_WRAP_MODE := gtk_natural_wrap_mode_get_type;
end;


function GTK_TYPE_SCROLL_STEP: TGType;
begin
  GTK_TYPE_SCROLL_STEP := gtk_scroll_step_get_type;
end;


function GTK_TYPE_ORIENTATION: TGType;
begin
  GTK_TYPE_ORIENTATION := gtk_orientation_get_type;
end;


function GTK_TYPE_OVERFLOW: TGType;
begin
  GTK_TYPE_OVERFLOW := gtk_overflow_get_type;
end;


function GTK_TYPE_PACK_TYPE: TGType;
begin
  GTK_TYPE_PACK_TYPE := gtk_pack_type_get_type;
end;


function GTK_TYPE_POSITION_TYPE: TGType;
begin
  GTK_TYPE_POSITION_TYPE := gtk_position_type_get_type;
end;


function GTK_TYPE_SCROLL_TYPE: TGType;
begin
  GTK_TYPE_SCROLL_TYPE := gtk_scroll_type_get_type;
end;


function GTK_TYPE_SELECTION_MODE: TGType;
begin
  GTK_TYPE_SELECTION_MODE := gtk_selection_mode_get_type;
end;


function GTK_TYPE_WRAP_MODE: TGType;
begin
  GTK_TYPE_WRAP_MODE := gtk_wrap_mode_get_type;
end;


function GTK_TYPE_SORT_TYPE: TGType;
begin
  GTK_TYPE_SORT_TYPE := gtk_sort_type_get_type;
end;


function GTK_TYPE_PRINT_PAGES: TGType;
begin
  GTK_TYPE_PRINT_PAGES := gtk_print_pages_get_type;
end;


function GTK_TYPE_PAGE_SET: TGType;
begin
  GTK_TYPE_PAGE_SET := gtk_page_set_get_type;
end;


function GTK_TYPE_NUMBER_UP_LAYOUT: TGType;
begin
  GTK_TYPE_NUMBER_UP_LAYOUT := gtk_number_up_layout_get_type;
end;


function GTK_TYPE_ORDERING: TGType;
begin
  GTK_TYPE_ORDERING := gtk_ordering_get_type;
end;


function GTK_TYPE_PAGE_ORIENTATION: TGType;
begin
  GTK_TYPE_PAGE_ORIENTATION := gtk_page_orientation_get_type;
end;


function GTK_TYPE_PRINT_QUALITY: TGType;
begin
  GTK_TYPE_PRINT_QUALITY := gtk_print_quality_get_type;
end;


function GTK_TYPE_PRINT_DUPLEX: TGType;
begin
  GTK_TYPE_PRINT_DUPLEX := gtk_print_duplex_get_type;
end;


function GTK_TYPE_UNIT: TGType;
begin
  GTK_TYPE_UNIT := gtk_unit_get_type;
end;


function GTK_TYPE_TREE_VIEW_GRID_LINES: TGType;
begin
  GTK_TYPE_TREE_VIEW_GRID_LINES := gtk_tree_view_grid_lines_get_type;
end;


function GTK_TYPE_SIZE_GROUP_MODE: TGType;
begin
  GTK_TYPE_SIZE_GROUP_MODE := gtk_size_group_mode_get_type;
end;


function GTK_TYPE_SIZE_REQUEST_MODE: TGType;
begin
  GTK_TYPE_SIZE_REQUEST_MODE := gtk_size_request_mode_get_type;
end;


function GTK_TYPE_SCROLLABLE_POLICY: TGType;
begin
  GTK_TYPE_SCROLLABLE_POLICY := gtk_scrollable_policy_get_type;
end;


function GTK_TYPE_STATE_FLAGS: TGType;
begin
  GTK_TYPE_STATE_FLAGS := gtk_state_flags_get_type;
end;


function GTK_TYPE_BORDER_STYLE: TGType;
begin
  GTK_TYPE_BORDER_STYLE := gtk_border_style_get_type;
end;


function GTK_TYPE_LEVEL_BAR_MODE: TGType;
begin
  GTK_TYPE_LEVEL_BAR_MODE := gtk_level_bar_mode_get_type;
end;


function GTK_TYPE_INPUT_PURPOSE: TGType;
begin
  GTK_TYPE_INPUT_PURPOSE := gtk_input_purpose_get_type;
end;


function GTK_TYPE_INPUT_HINTS: TGType;
begin
  GTK_TYPE_INPUT_HINTS := gtk_input_hints_get_type;
end;


function GTK_TYPE_PROPAGATION_PHASE: TGType;
begin
  GTK_TYPE_PROPAGATION_PHASE := gtk_propagation_phase_get_type;
end;


function GTK_TYPE_PROPAGATION_LIMIT: TGType;
begin
  GTK_TYPE_PROPAGATION_LIMIT := gtk_propagation_limit_get_type;
end;


function GTK_TYPE_EVENT_SEQUENCE_STATE: TGType;
begin
  GTK_TYPE_EVENT_SEQUENCE_STATE := gtk_event_sequence_state_get_type;
end;


function GTK_TYPE_PAN_DIRECTION: TGType;
begin
  GTK_TYPE_PAN_DIRECTION := gtk_pan_direction_get_type;
end;


function GTK_TYPE_SHORTCUT_SCOPE: TGType;
begin
  GTK_TYPE_SHORTCUT_SCOPE := gtk_shortcut_scope_get_type;
end;


function GTK_TYPE_PICK_FLAGS: TGType;
begin
  GTK_TYPE_PICK_FLAGS := gtk_pick_flags_get_type;
end;


function GTK_TYPE_CONSTRAINT_RELATION: TGType;
begin
  GTK_TYPE_CONSTRAINT_RELATION := gtk_constraint_relation_get_type;
end;


function GTK_TYPE_CONSTRAINT_STRENGTH: TGType;
begin
  GTK_TYPE_CONSTRAINT_STRENGTH := gtk_constraint_strength_get_type;
end;


function GTK_TYPE_CONSTRAINT_ATTRIBUTE: TGType;
begin
  GTK_TYPE_CONSTRAINT_ATTRIBUTE := gtk_constraint_attribute_get_type;
end;


function GTK_TYPE_CONSTRAINT_VFL_PARSER_ERROR: TGType;
begin
  GTK_TYPE_CONSTRAINT_VFL_PARSER_ERROR := gtk_constraint_vfl_parser_error_get_type;
end;


function GTK_TYPE_SYSTEM_SETTING: TGType;
begin
  GTK_TYPE_SYSTEM_SETTING := gtk_system_setting_get_type;
end;


function GTK_TYPE_SYMBOLIC_COLOR: TGType;
begin
  GTK_TYPE_SYMBOLIC_COLOR := gtk_symbolic_color_get_type;
end;


function GTK_TYPE_ACCESSIBLE_ROLE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_ROLE := gtk_accessible_role_get_type;
end;


function GTK_TYPE_ACCESSIBLE_STATE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_STATE := gtk_accessible_state_get_type;
end;


function GTK_TYPE_ACCESSIBLE_PROPERTY: TGType;
begin
  GTK_TYPE_ACCESSIBLE_PROPERTY := gtk_accessible_property_get_type;
end;


function GTK_TYPE_ACCESSIBLE_RELATION: TGType;
begin
  GTK_TYPE_ACCESSIBLE_RELATION := gtk_accessible_relation_get_type;
end;


function GTK_TYPE_ACCESSIBLE_TRISTATE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_TRISTATE := gtk_accessible_tristate_get_type;
end;


function GTK_TYPE_ACCESSIBLE_INVALID_STATE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_INVALID_STATE := gtk_accessible_invalid_state_get_type;
end;


function GTK_TYPE_ACCESSIBLE_AUTOCOMPLETE: TGType;
begin
  GTK_TYPE_ACCESSIBLE_AUTOCOMPLETE := gtk_accessible_autocomplete_get_type;
end;


function GTK_TYPE_ACCESSIBLE_SORT: TGType;
begin
  GTK_TYPE_ACCESSIBLE_SORT := gtk_accessible_sort_get_type;
end;


function GTK_TYPE_ACCESSIBLE_ANNOUNCEMENT_PRIORITY: TGType;
begin
  GTK_TYPE_ACCESSIBLE_ANNOUNCEMENT_PRIORITY := gtk_accessible_announcement_priority_get_type;
end;


function GTK_TYPE_POPOVER_MENU_FLAGS: TGType;
begin
  GTK_TYPE_POPOVER_MENU_FLAGS := gtk_popover_menu_flags_get_type;
end;


function GTK_TYPE_EVENT_CONTROLLER_SCROLL_FLAGS: TGType;
begin
  GTK_TYPE_EVENT_CONTROLLER_SCROLL_FLAGS := gtk_event_controller_scroll_flags_get_type;
end;


function GTK_TYPE_FILTER_MATCH: TGType;
begin
  GTK_TYPE_FILTER_MATCH := gtk_filter_match_get_type;
end;


function GTK_TYPE_FILTER_CHANGE: TGType;
begin
  GTK_TYPE_FILTER_CHANGE := gtk_filter_change_get_type;
end;


function GTK_TYPE_FONT_LEVEL: TGType;
begin
  GTK_TYPE_FONT_LEVEL := gtk_font_level_get_type;
end;


function GTK_TYPE_GRAPHICS_OFFLOAD_ENABLED: TGType;
begin
  GTK_TYPE_GRAPHICS_OFFLOAD_ENABLED := gtk_graphics_offload_enabled_get_type;
end;


function GTK_TYPE_ICON_LOOKUP_FLAGS: TGType;
begin
  GTK_TYPE_ICON_LOOKUP_FLAGS := gtk_icon_lookup_flags_get_type;
end;


function GTK_TYPE_ICON_THEME_ERROR: TGType;
begin
  GTK_TYPE_ICON_THEME_ERROR := gtk_icon_theme_error_get_type;
end;


function GTK_TYPE_IMAGE_TYPE: TGType;
begin
  GTK_TYPE_IMAGE_TYPE := gtk_image_type_get_type;
end;


function GTK_TYPE_INSCRIPTION_OVERFLOW: TGType;
begin
  GTK_TYPE_INSCRIPTION_OVERFLOW := gtk_inscription_overflow_get_type;
end;


function GTK_TYPE_NOTEBOOK_TAB: TGType;
begin
  GTK_TYPE_NOTEBOOK_TAB := gtk_notebook_tab_get_type;
end;


function GTK_TYPE_PAD_ACTION_TYPE: TGType;
begin
  GTK_TYPE_PAD_ACTION_TYPE := gtk_pad_action_type_get_type;
end;


function GTK_TYPE_RECENT_MANAGER_ERROR: TGType;
begin
  GTK_TYPE_RECENT_MANAGER_ERROR := gtk_recent_manager_error_get_type;
end;


function GTK_TYPE_REVEALER_TRANSITION_TYPE: TGType;
begin
  GTK_TYPE_REVEALER_TRANSITION_TYPE := gtk_revealer_transition_type_get_type;
end;


function GTK_TYPE_CORNER_TYPE: TGType;
begin
  GTK_TYPE_CORNER_TYPE := gtk_corner_type_get_type;
end;


function GTK_TYPE_POLICY_TYPE: TGType;
begin
  GTK_TYPE_POLICY_TYPE := gtk_policy_type_get_type;
end;


function GTK_TYPE_SHORTCUT_ACTION_FLAGS: TGType;
begin
  GTK_TYPE_SHORTCUT_ACTION_FLAGS := gtk_shortcut_action_flags_get_type;
end;


function GTK_TYPE_SHORTCUT_TYPE: TGType;
begin
  GTK_TYPE_SHORTCUT_TYPE := gtk_shortcut_type_get_type;
end;


function GTK_TYPE_SORTER_ORDER: TGType;
begin
  GTK_TYPE_SORTER_ORDER := gtk_sorter_order_get_type;
end;


function GTK_TYPE_SORTER_CHANGE: TGType;
begin
  GTK_TYPE_SORTER_CHANGE := gtk_sorter_change_get_type;
end;


function GTK_TYPE_SPIN_BUTTON_UPDATE_POLICY: TGType;
begin
  GTK_TYPE_SPIN_BUTTON_UPDATE_POLICY := gtk_spin_button_update_policy_get_type;
end;


function GTK_TYPE_SPIN_TYPE: TGType;
begin
  GTK_TYPE_SPIN_TYPE := gtk_spin_type_get_type;
end;


function GTK_TYPE_STACK_TRANSITION_TYPE: TGType;
begin
  GTK_TYPE_STACK_TRANSITION_TYPE := gtk_stack_transition_type_get_type;
end;


function GTK_TYPE_STRING_FILTER_MATCH_MODE: TGType;
begin
  GTK_TYPE_STRING_FILTER_MATCH_MODE := gtk_string_filter_match_mode_get_type;
end;


function GTK_TYPE_COLLATION: TGType;
begin
  GTK_TYPE_COLLATION := gtk_collation_get_type;
end;


function GTK_TYPE_TEXT_SEARCH_FLAGS: TGType;
begin
  GTK_TYPE_TEXT_SEARCH_FLAGS := gtk_text_search_flags_get_type;
end;


function GTK_TYPE_TEXT_WINDOW_TYPE: TGType;
begin
  GTK_TYPE_TEXT_WINDOW_TYPE := gtk_text_window_type_get_type;
end;


function GTK_TYPE_TEXT_VIEW_LAYER: TGType;
begin
  GTK_TYPE_TEXT_VIEW_LAYER := gtk_text_view_layer_get_type;
end;


function GTK_TYPE_TEXT_EXTEND_SELECTION: TGType;
begin
  GTK_TYPE_TEXT_EXTEND_SELECTION := gtk_text_extend_selection_get_type;
end;


function GTK_TYPE_PRINT_STATUS: TGType;
begin
  GTK_TYPE_PRINT_STATUS := gtk_print_status_get_type;
end;


function GTK_TYPE_PRINT_OPERATION_RESULT: TGType;
begin
  GTK_TYPE_PRINT_OPERATION_RESULT := gtk_print_operation_result_get_type;
end;


function GTK_TYPE_PRINT_OPERATION_ACTION: TGType;
begin
  GTK_TYPE_PRINT_OPERATION_ACTION := gtk_print_operation_action_get_type;
end;


function GTK_TYPE_PRINT_ERROR: TGType;
begin
  GTK_TYPE_PRINT_ERROR := gtk_print_error_get_type;
end;


{$ENDIF read_implementation}
