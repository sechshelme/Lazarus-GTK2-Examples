/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkFlowBox = record // _GtkFlowBox
  end;
  PGtkFlowBox = ^TGtkFlowBox;

  TGtkFlowBoxChild = record
    parent_instance: TGtkWidget;
  end;
  PGtkFlowBoxChild = ^TGtkFlowBoxChild;

  TGtkFlowBoxChildClass = record
    parent_class: TGtkWidgetClass;
    activate: procedure(child: PGtkFlowBoxChild); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkFlowBoxChildClass = ^TGtkFlowBoxChildClass;

  PGtkFlowBoxCreateWidgetFunc = ^TGtkFlowBoxCreateWidgetFunc;
  TGtkFlowBoxCreateWidgetFunc = function(item: Tgpointer; user_data: Tgpointer): PGtkWidget; cdecl;

function gtk_flow_box_child_get_type: TGType; cdecl; external gtklib;
function gtk_flow_box_child_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_flow_box_child_set_child(self: PGtkFlowBoxChild; child: PGtkWidget); cdecl; external gtklib;
function gtk_flow_box_child_get_child(self: PGtkFlowBoxChild): PGtkWidget; cdecl; external gtklib;
function gtk_flow_box_child_get_index(child: PGtkFlowBoxChild): longint; cdecl; external gtklib;
function gtk_flow_box_child_is_selected(child: PGtkFlowBoxChild): Tgboolean; cdecl; external gtklib;
procedure gtk_flow_box_child_changed(child: PGtkFlowBoxChild); cdecl; external gtklib;

function gtk_flow_box_get_type: TGType; cdecl; external gtklib;
function gtk_flow_box_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_flow_box_bind_model(box: PGtkFlowBox; model: PGListModel; create_widget_func: TGtkFlowBoxCreateWidgetFunc; user_data: Tgpointer; user_data_free_func: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_flow_box_set_homogeneous(box: PGtkFlowBox; homogeneous: Tgboolean); cdecl; external gtklib;
function gtk_flow_box_get_homogeneous(box: PGtkFlowBox): Tgboolean; cdecl; external gtklib;
procedure gtk_flow_box_set_row_spacing(box: PGtkFlowBox; spacing: Tguint); cdecl; external gtklib;
function gtk_flow_box_get_row_spacing(box: PGtkFlowBox): Tguint; cdecl; external gtklib;
procedure gtk_flow_box_set_column_spacing(box: PGtkFlowBox; spacing: Tguint); cdecl; external gtklib;
function gtk_flow_box_get_column_spacing(box: PGtkFlowBox): Tguint; cdecl; external gtklib;
procedure gtk_flow_box_set_min_children_per_line(box: PGtkFlowBox; n_children: Tguint); cdecl; external gtklib;
function gtk_flow_box_get_min_children_per_line(box: PGtkFlowBox): Tguint; cdecl; external gtklib;
procedure gtk_flow_box_set_max_children_per_line(box: PGtkFlowBox; n_children: Tguint); cdecl; external gtklib;
function gtk_flow_box_get_max_children_per_line(box: PGtkFlowBox): Tguint; cdecl; external gtklib;
procedure gtk_flow_box_set_activate_on_single_click(box: PGtkFlowBox; single: Tgboolean); cdecl; external gtklib;
function gtk_flow_box_get_activate_on_single_click(box: PGtkFlowBox): Tgboolean; cdecl; external gtklib;
procedure gtk_flow_box_prepend(self: PGtkFlowBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_flow_box_append(self: PGtkFlowBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_flow_box_insert(box: PGtkFlowBox; widget: PGtkWidget; position: longint); cdecl; external gtklib;
procedure gtk_flow_box_remove(box: PGtkFlowBox; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_flow_box_remove_all(box: PGtkFlowBox); cdecl; external gtklib;
function gtk_flow_box_get_child_at_index(box: PGtkFlowBox; idx: longint): PGtkFlowBoxChild; cdecl; external gtklib;
function gtk_flow_box_get_child_at_pos(box: PGtkFlowBox; x: longint; y: longint): PGtkFlowBoxChild; cdecl; external gtklib;

type
  TGtkFlowBoxForeachFunc = procedure(box: PGtkFlowBox; child: PGtkFlowBoxChild; user_data: Tgpointer); cdecl;

procedure gtk_flow_box_selected_foreach(box: PGtkFlowBox; func: TGtkFlowBoxForeachFunc; Data: Tgpointer); cdecl; external gtklib;
function gtk_flow_box_get_selected_children(box: PGtkFlowBox): PGList; cdecl; external gtklib;
procedure gtk_flow_box_select_child(box: PGtkFlowBox; child: PGtkFlowBoxChild); cdecl; external gtklib;
procedure gtk_flow_box_unselect_child(box: PGtkFlowBox; child: PGtkFlowBoxChild); cdecl; external gtklib;
procedure gtk_flow_box_select_all(box: PGtkFlowBox); cdecl; external gtklib;
procedure gtk_flow_box_unselect_all(box: PGtkFlowBox); cdecl; external gtklib;
procedure gtk_flow_box_set_selection_mode(box: PGtkFlowBox; mode: TGtkSelectionMode); cdecl; external gtklib;
function gtk_flow_box_get_selection_mode(box: PGtkFlowBox): TGtkSelectionMode; cdecl; external gtklib;
procedure gtk_flow_box_set_hadjustment(box: PGtkFlowBox; adjustment: PGtkAdjustment); cdecl; external gtklib;
procedure gtk_flow_box_set_vadjustment(box: PGtkFlowBox; adjustment: PGtkAdjustment); cdecl; external gtklib;

type
  TGtkFlowBoxFilterFunc = function(child: PGtkFlowBoxChild; user_data: Tgpointer): Tgboolean; cdecl;

procedure gtk_flow_box_set_filter_func(box: PGtkFlowBox; filter_func: TGtkFlowBoxFilterFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_flow_box_invalidate_filter(box: PGtkFlowBox); cdecl; external gtklib;

type
  TGtkFlowBoxSortFunc = function(child1: PGtkFlowBoxChild; child2: PGtkFlowBoxChild; user_data: Tgpointer): longint; cdecl;

procedure gtk_flow_box_set_sort_func(box: PGtkFlowBox; sort_func: TGtkFlowBoxSortFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_flow_box_invalidate_sort(box: PGtkFlowBox); cdecl; external gtklib;

// === Konventiert am: 21-7-24 19:12:44 ===

function GTK_TYPE_FLOW_BOX: TGType;
function GTK_FLOW_BOX(obj: Pointer): PGtkFlowBox;
function GTK_IS_FLOW_BOX(obj: Pointer): Tgboolean;

function GTK_TYPE_FLOW_BOX_CHILD: TGType;
function GTK_FLOW_BOX_CHILD(obj: Pointer): PGtkFlowBoxChild;
function GTK_FLOW_BOX_CHILD_CLASS(klass: Pointer): PGtkFlowBoxChildClass;
function GTK_IS_FLOW_BOX_CHILD(obj: Pointer): Tgboolean;
function GTK_IS_FLOW_BOX_CHILD_CLASS(klass: Pointer): Tgboolean;
function GTK_FLOW_BOX_CHILD_GET_CLASS(obj: Pointer): PGtkFlowBoxChildClass;



{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_FLOW_BOX: TGType;
begin
  GTK_TYPE_FLOW_BOX := gtk_flow_box_get_type;
end;

function GTK_FLOW_BOX(obj: Pointer): PGtkFlowBox;
begin
  Result := PGtkFlowBox(g_type_check_instance_cast(obj, GTK_TYPE_FLOW_BOX));
end;

function GTK_IS_FLOW_BOX(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FLOW_BOX);
end;

// ====

function GTK_TYPE_FLOW_BOX_CHILD: TGType;
begin
  GTK_TYPE_FLOW_BOX_CHILD := gtk_flow_box_child_get_type;
end;

function GTK_FLOW_BOX_CHILD(obj: Pointer): PGtkFlowBoxChild;
begin
  Result := PGtkFlowBoxChild(g_type_check_instance_cast(obj, GTK_TYPE_FLOW_BOX_CHILD));
end;

function GTK_FLOW_BOX_CHILD_CLASS(klass: Pointer): PGtkFlowBoxChildClass;
begin
  Result := PGtkFlowBoxChildClass(g_type_check_class_cast(klass, GTK_TYPE_FLOW_BOX_CHILD));
end;

function GTK_IS_FLOW_BOX_CHILD(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FLOW_BOX_CHILD);
end;

function GTK_IS_FLOW_BOX_CHILD_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_FLOW_BOX_CHILD);
end;

function GTK_FLOW_BOX_CHILD_GET_CLASS(obj: Pointer): PGtkFlowBoxChildClass;
begin
  Result := PGtkFlowBoxChildClass(PGTypeInstance(obj)^.g_class);
end;


{$ENDIF read_implementation}
