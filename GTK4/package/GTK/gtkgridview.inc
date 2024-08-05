/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGridView = record // _GtkGridView
  end;
  PGtkGridView = ^TGtkGridView;

  TGtkGridViewClass = record // _GtkGridViewClass
  end;
  PGtkGridViewClass = ^TGtkGridViewClass;

function gtk_grid_view_get_type: TGType; cdecl; external gtklib;
function gtk_grid_view_new(model: PGtkSelectionModel; factory: PGtkListItemFactory): PGtkWidget; cdecl; external gtklib;
function gtk_grid_view_get_model(self: PGtkGridView): PGtkSelectionModel; cdecl; external gtklib;
procedure gtk_grid_view_set_model(self: PGtkGridView; model: PGtkSelectionModel); cdecl; external gtklib;
procedure gtk_grid_view_set_factory(self: PGtkGridView; factory: PGtkListItemFactory); cdecl; external gtklib;
function gtk_grid_view_get_factory(self: PGtkGridView): PGtkListItemFactory; cdecl; external gtklib;
function gtk_grid_view_get_min_columns(self: PGtkGridView): Tguint; cdecl; external gtklib;
procedure gtk_grid_view_set_min_columns(self: PGtkGridView; min_columns: Tguint); cdecl; external gtklib;
function gtk_grid_view_get_max_columns(self: PGtkGridView): Tguint; cdecl; external gtklib;
procedure gtk_grid_view_set_max_columns(self: PGtkGridView; max_columns: Tguint); cdecl; external gtklib;
procedure gtk_grid_view_set_enable_rubberband(self: PGtkGridView; enable_rubberband: Tgboolean); cdecl; external gtklib;
function gtk_grid_view_get_enable_rubberband(self: PGtkGridView): Tgboolean; cdecl; external gtklib;
procedure gtk_grid_view_set_tab_behavior(self: PGtkGridView; tab_behavior: TGtkListTabBehavior); cdecl; external gtklib;
function gtk_grid_view_get_tab_behavior(self: PGtkGridView): TGtkListTabBehavior; cdecl; external gtklib;
procedure gtk_grid_view_set_single_click_activate(self: PGtkGridView; single_click_activate: Tgboolean); cdecl; external gtklib;
function gtk_grid_view_get_single_click_activate(self: PGtkGridView): Tgboolean; cdecl; external gtklib;
procedure gtk_grid_view_scroll_to(self: PGtkGridView; pos: Tguint; flags: TGtkListScrollFlags; scroll: PGtkScrollInfo); cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:06:55 ===

function GTK_TYPE_GRID_VIEW: TGType;
function GTK_GRID_VIEW(obj: Pointer): PGtkGridView;
function GTK_GRID_VIEW_CLASS(klass: Pointer): PGtkGridViewClass;
function GTK_IS_GRID_VIEW(obj: Pointer): Tgboolean;
function GTK_IS_GRID_VIEW_CLASS(klass: Pointer): Tgboolean;
function GTK_GRID_VIEW_GET_CLASS(obj: Pointer): PGtkGridViewClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GRID_VIEW: TGType;
begin
  GTK_TYPE_GRID_VIEW := gtk_grid_view_get_type;
end;

function GTK_GRID_VIEW(obj: Pointer): PGtkGridView;
begin
  Result := PGtkGridView(g_type_check_instance_cast(obj, GTK_TYPE_GRID_VIEW));
end;

function GTK_GRID_VIEW_CLASS(klass: Pointer): PGtkGridViewClass;
begin
  Result := PGtkGridViewClass(g_type_check_class_cast(klass, GTK_TYPE_GRID_VIEW));
end;

function GTK_IS_GRID_VIEW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GRID_VIEW);
end;

function GTK_IS_GRID_VIEW_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GRID_VIEW);
end;

function GTK_GRID_VIEW_GET_CLASS(obj: Pointer): PGtkGridViewClass;
begin
  Result := PGtkGridViewClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
