unit gtkcellarea;

interface

uses
  glib2, common_GTK, GDK4, gtktypes, gtkenums, gtkwidget, gtkcellrenderer, gtktreemodel, gtkcelleditable;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(obj, property_id, pspec: longint): longint;

type
  TGtkCellCallback = function(renderer: PGtkCellRenderer; Data: Tgpointer): Tgboolean; cdecl;
  TGtkCellAllocCallback = function(renderer: PGtkCellRenderer; cell_area: PGdkRectangle; cell_background: PGdkRectangle; Data: Tgpointer): Tgboolean; cdecl;

  PGtkCellArea = ^TGtkCellArea;

  TGtkCellArea = record
    parent_instance: TGInitiallyUnowned;
  end;

  PGtkCellAreaClass = ^TGtkCellAreaClass;

  TGtkCellAreaClass = record
    parent_class: TGInitiallyUnownedClass;
    add: procedure(area: PGtkCellArea; renderer: PGtkCellRenderer); cdecl;
    remove: procedure(area: PGtkCellArea; renderer: PGtkCellRenderer); cdecl;
    foreach: procedure(area: PGtkCellArea; callback: TGtkCellCallback; callback_data: Tgpointer); cdecl;
    foreach_alloc: procedure(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; cell_area: PGdkRectangle; background_area: PGdkRectangle;
      callback: TGtkCellAllocCallback; callback_data: Tgpointer); cdecl;
    event: function(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; event: PGdkEvent; cell_area: PGdkRectangle;
      flags: TGtkCellRendererState): longint; cdecl;
    snapshot: procedure(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; snapshot: PGtkSnapshot; background_area: PGdkRectangle;
      cell_area: PGdkRectangle; flags: TGtkCellRendererState; paint_focus: Tgboolean); cdecl;
    apply_attributes: procedure(area: PGtkCellArea; tree_model: PGtkTreeModel; iter: PGtkTreeIter; is_expander: Tgboolean; is_expanded: Tgboolean); cdecl;
    create_context: function(area: PGtkCellArea): PGtkCellAreaContext; cdecl;
    copy_context: function(area: PGtkCellArea; context: PGtkCellAreaContext): PGtkCellAreaContext; cdecl;
    get_request_mode: function(area: PGtkCellArea): TGtkSizeRequestMode; cdecl;
    get_preferred_width: procedure(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; minimum_width: Plongint; natural_width: Plongint); cdecl;
    get_preferred_height_for_width: procedure(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; Width: longint; minimum_height: Plongint;
      natural_height: Plongint); cdecl;
    get_preferred_height: procedure(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; minimum_height: Plongint; natural_height: Plongint); cdecl;
    get_preferred_width_for_height: procedure(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; Height: longint; minimum_width: Plongint;
      natural_width: Plongint); cdecl;
    set_cell_property: procedure(area: PGtkCellArea; renderer: PGtkCellRenderer; property_id: Tguint; Value: PGValue; pspec: PGParamSpec); cdecl;
    get_cell_property: procedure(area: PGtkCellArea; renderer: PGtkCellRenderer; property_id: Tguint; Value: PGValue; pspec: PGParamSpec); cdecl;
    focus: function(area: PGtkCellArea; direction: TGtkDirectionType): Tgboolean; cdecl;
    is_activatable: function(area: PGtkCellArea): Tgboolean; cdecl;
    activate: function(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; cell_area: PGdkRectangle; flags: TGtkCellRendererState;
      edit_only: Tgboolean): Tgboolean; cdecl;
    padding: array[0..7] of Tgpointer;
  end;


function gtk_cell_area_get_type: TGType; cdecl; external gtklib;
procedure gtk_cell_area_add(area: PGtkCellArea; renderer: PGtkCellRenderer); cdecl; external gtklib;
procedure gtk_cell_area_remove(area: PGtkCellArea; renderer: PGtkCellRenderer); cdecl; external gtklib;
function gtk_cell_area_has_renderer(area: PGtkCellArea; renderer: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_area_foreach(area: PGtkCellArea; callback: TGtkCellCallback; callback_data: Tgpointer); cdecl; external gtklib;
procedure gtk_cell_area_foreach_alloc(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; cell_area: PGdkRectangle; background_area: PGdkRectangle;
  callback: TGtkCellAllocCallback; callback_data: Tgpointer); cdecl; external gtklib;
function gtk_cell_area_event(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; event: PGdkEvent; cell_area: PGdkRectangle;
  flags: TGtkCellRendererState): longint; cdecl; external gtklib;
procedure gtk_cell_area_snapshot(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; snapshot: PGtkSnapshot; background_area: PGdkRectangle;
  cell_area: PGdkRectangle; flags: TGtkCellRendererState; paint_focus: Tgboolean); cdecl; external gtklib;
procedure gtk_cell_area_get_cell_allocation(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; renderer: PGtkCellRenderer; cell_area: PGdkRectangle;
  allocation: PGdkRectangle); cdecl; external gtklib;
function gtk_cell_area_get_cell_at_position(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; cell_area: PGdkRectangle; x: longint;
  y: longint; alloc_area: PGdkRectangle): PGtkCellRenderer; cdecl; external gtklib;
function gtk_cell_area_create_context(area: PGtkCellArea): PGtkCellAreaContext; cdecl; external gtklib;
function gtk_cell_area_copy_context(area: PGtkCellArea; context: PGtkCellAreaContext): PGtkCellAreaContext; cdecl; external gtklib;
function gtk_cell_area_get_request_mode(area: PGtkCellArea): TGtkSizeRequestMode; cdecl; external gtklib;
procedure gtk_cell_area_get_preferred_width(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; minimum_width: Plongint; natural_width: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_get_preferred_height_for_width(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; Width: longint; minimum_height: Plongint;
  natural_height: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_get_preferred_height(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; minimum_height: Plongint; natural_height: Plongint); cdecl; external gtklib;
procedure gtk_cell_area_get_preferred_width_for_height(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; Height: longint; minimum_width: Plongint;
  natural_width: Plongint); cdecl; external gtklib;
function gtk_cell_area_get_current_path_string(area: PGtkCellArea): PChar; cdecl; external gtklib;
procedure gtk_cell_area_apply_attributes(area: PGtkCellArea; tree_model: PGtkTreeModel; iter: PGtkTreeIter; is_expander: Tgboolean; is_expanded: Tgboolean); cdecl; external gtklib;
procedure gtk_cell_area_attribute_connect(area: PGtkCellArea; renderer: PGtkCellRenderer; attribute: PChar; column: longint); cdecl; external gtklib;
procedure gtk_cell_area_attribute_disconnect(area: PGtkCellArea; renderer: PGtkCellRenderer; attribute: PChar); cdecl; external gtklib;
function gtk_cell_area_attribute_get_column(area: PGtkCellArea; renderer: PGtkCellRenderer; attribute: PChar): longint; cdecl; external gtklib;
procedure gtk_cell_area_class_install_cell_property(aclass: PGtkCellAreaClass; property_id: Tguint; pspec: PGParamSpec); cdecl; external gtklib;
function gtk_cell_area_class_find_cell_property(aclass: PGtkCellAreaClass; property_name: PChar): PGParamSpec; cdecl; external gtklib;
function gtk_cell_area_class_list_cell_properties(aclass: PGtkCellAreaClass; n_properties: Pguint): PPGParamSpec; cdecl; external gtklib;
procedure gtk_cell_area_add_with_properties(area: PGtkCellArea; renderer: PGtkCellRenderer; first_prop_name: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_cell_area_add_with_properties(area: PGtkCellArea; renderer: PGtkCellRenderer; first_prop_name: PChar); cdecl; external gtklib;
procedure gtk_cell_area_cell_set(area: PGtkCellArea; renderer: PGtkCellRenderer; first_prop_name: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_cell_area_cell_set(area: PGtkCellArea; renderer: PGtkCellRenderer; first_prop_name: PChar); cdecl; external gtklib;
procedure gtk_cell_area_cell_get(area: PGtkCellArea; renderer: PGtkCellRenderer; first_prop_name: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_cell_area_cell_get(area: PGtkCellArea; renderer: PGtkCellRenderer; first_prop_name: PChar); cdecl; external gtklib;
procedure gtk_cell_area_cell_set_valist(area: PGtkCellArea; renderer: PGtkCellRenderer; first_property_name: PChar; var_args: Tva_list); cdecl; external gtklib;
procedure gtk_cell_area_cell_get_valist(area: PGtkCellArea; renderer: PGtkCellRenderer; first_property_name: PChar; var_args: Tva_list); cdecl; external gtklib;
procedure gtk_cell_area_cell_set_property(area: PGtkCellArea; renderer: PGtkCellRenderer; property_name: PChar; Value: PGValue); cdecl; external gtklib;
procedure gtk_cell_area_cell_get_property(area: PGtkCellArea; renderer: PGtkCellRenderer; property_name: PChar; Value: PGValue); cdecl; external gtklib;
function gtk_cell_area_is_activatable(area: PGtkCellArea): Tgboolean; cdecl; external gtklib;
function gtk_cell_area_activate(area: PGtkCellArea; context: PGtkCellAreaContext; widget: PGtkWidget; cell_area: PGdkRectangle; flags: TGtkCellRendererState;
  edit_only: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_cell_area_focus(area: PGtkCellArea; direction: TGtkDirectionType): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_area_set_focus_cell(area: PGtkCellArea; renderer: PGtkCellRenderer); cdecl; external gtklib;
function gtk_cell_area_get_focus_cell(area: PGtkCellArea): PGtkCellRenderer; cdecl; external gtklib;
procedure gtk_cell_area_add_focus_sibling(area: PGtkCellArea; renderer: PGtkCellRenderer; sibling: PGtkCellRenderer); cdecl; external gtklib;
procedure gtk_cell_area_remove_focus_sibling(area: PGtkCellArea; renderer: PGtkCellRenderer; sibling: PGtkCellRenderer); cdecl; external gtklib;
function gtk_cell_area_is_focus_sibling(area: PGtkCellArea; renderer: PGtkCellRenderer; sibling: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
function gtk_cell_area_get_focus_siblings(area: PGtkCellArea; renderer: PGtkCellRenderer): PGList; cdecl; external gtklib;
function gtk_cell_area_get_focus_from_sibling(area: PGtkCellArea; renderer: PGtkCellRenderer): PGtkCellRenderer; cdecl; external gtklib;
function gtk_cell_area_get_edited_cell(area: PGtkCellArea): PGtkCellRenderer; cdecl; external gtklib;
function gtk_cell_area_get_edit_widget(area: PGtkCellArea): PGtkCellEditable; cdecl; external gtklib;
function gtk_cell_area_activate_cell(area: PGtkCellArea; widget: PGtkWidget; renderer: PGtkCellRenderer; event: PGdkEvent; cell_area: PGdkRectangle;
  flags: TGtkCellRendererState): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_area_stop_editing(area: PGtkCellArea; canceled: Tgboolean); cdecl; external gtklib;
procedure gtk_cell_area_inner_cell_area(area: PGtkCellArea; widget: PGtkWidget; cell_area: PGdkRectangle; inner_area: PGdkRectangle); cdecl; external gtklib;
procedure gtk_cell_area_request_renderer(area: PGtkCellArea; renderer: PGtkCellRenderer; orientation: TGtkOrientation; widget: PGtkWidget; for_size: longint;
  minimum_size: Plongint; natural_size: Plongint); cdecl; external gtklib;
procedure _gtk_cell_area_set_cell_data_func_with_proxy(area: PGtkCellArea; cell: PGtkCellRenderer; func: TGFunc; func_data: Tgpointer; Destroy: TGDestroyNotify;
  proxy: Tgpointer); cdecl; external gtklib;

// === Konventiert am: 21-7-24 16:30:57 ===

function GTK_TYPE_CELL_AREA: TGType;
function GTK_CELL_AREA(obj: Pointer): PGtkCellArea;
function GTK_CELL_AREA_CLASS(klass: Pointer): PGtkCellAreaClass;
function GTK_IS_CELL_AREA(obj: Pointer): Tgboolean;
function GTK_IS_CELL_AREA_CLASS(klass: Pointer): Tgboolean;
function GTK_CELL_AREA_GET_CLASS(obj: Pointer): PGtkCellAreaClass;

implementation

function GTK_TYPE_CELL_AREA: TGType;
begin
  GTK_TYPE_CELL_AREA := gtk_cell_area_get_type;
end;

function GTK_CELL_AREA(obj: Pointer): PGtkCellArea;
begin
  Result := PGtkCellArea(g_type_check_instance_cast(obj, GTK_TYPE_CELL_AREA));
end;

function GTK_CELL_AREA_CLASS(klass: Pointer): PGtkCellAreaClass;
begin
  Result := PGtkCellAreaClass(g_type_check_class_cast(klass, GTK_TYPE_CELL_AREA));
end;

function GTK_IS_CELL_AREA(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_AREA);
end;

function GTK_IS_CELL_AREA_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_CELL_AREA);
end;

function GTK_CELL_AREA_GET_CLASS(obj: Pointer): PGtkCellAreaClass;
begin
  Result := PGtkCellAreaClass(PGTypeInstance(obj)^.g_class);
end;


{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }
function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(obj, property_id, pspec: longint): longint;
begin
  //  GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID:=G_OBJECT_WARN_INVALID_PSPEC(obj,'cell property id',property_id,pspec);
end;


end.
