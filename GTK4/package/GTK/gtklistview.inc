/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkListView = record // _GtkListView
  end;
  PGtkListView = ^TGtkListView;

  TGtkListViewClass = record // _GtkListViewClass
  end;
  PGtkListViewClass = ^TGtkListViewClass;

function gtk_list_view_get_type: TGType; cdecl; external gtklib;
function gtk_list_view_new(model: PGtkSelectionModel; factory: PGtkListItemFactory): PGtkWidget; cdecl; external gtklib;
function gtk_list_view_get_model(self: PGtkListView): PGtkSelectionModel; cdecl; external gtklib;
procedure gtk_list_view_set_model(self: PGtkListView; model: PGtkSelectionModel); cdecl; external gtklib;
procedure gtk_list_view_set_factory(self: PGtkListView; factory: PGtkListItemFactory); cdecl; external gtklib;
function gtk_list_view_get_factory(self: PGtkListView): PGtkListItemFactory; cdecl; external gtklib;
procedure gtk_list_view_set_header_factory(self: PGtkListView; factory: PGtkListItemFactory); cdecl; external gtklib;
function gtk_list_view_get_header_factory(self: PGtkListView): PGtkListItemFactory; cdecl; external gtklib;
procedure gtk_list_view_set_show_separators(self: PGtkListView; show_separators: Tgboolean); cdecl; external gtklib;
function gtk_list_view_get_show_separators(self: PGtkListView): Tgboolean; cdecl; external gtklib;
procedure gtk_list_view_set_single_click_activate(self: PGtkListView; single_click_activate: Tgboolean); cdecl; external gtklib;
function gtk_list_view_get_single_click_activate(self: PGtkListView): Tgboolean; cdecl; external gtklib;
procedure gtk_list_view_set_enable_rubberband(self: PGtkListView; enable_rubberband: Tgboolean); cdecl; external gtklib;
function gtk_list_view_get_enable_rubberband(self: PGtkListView): Tgboolean; cdecl; external gtklib;
procedure gtk_list_view_set_tab_behavior(self: PGtkListView; tab_behavior: TGtkListTabBehavior); cdecl; external gtklib;
function gtk_list_view_get_tab_behavior(self: PGtkListView): TGtkListTabBehavior; cdecl; external gtklib;
procedure gtk_list_view_scroll_to(self: PGtkListView; pos: Tguint; flags: TGtkListScrollFlags; scroll: PGtkScrollInfo); cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:13:34 ===

function GTK_TYPE_LIST_VIEW: TGType;
function GTK_LIST_VIEW(obj: Pointer): PGtkListView;
function GTK_LIST_VIEW_CLASS(klass: Pointer): PGtkListViewClass;
function GTK_IS_LIST_VIEW(obj: Pointer): Tgboolean;
function GTK_IS_LIST_VIEW_CLASS(klass: Pointer): Tgboolean;
function GTK_LIST_VIEW_GET_CLASS(obj: Pointer): PGtkListViewClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_LIST_VIEW: TGType;
begin
  GTK_TYPE_LIST_VIEW := gtk_list_view_get_type;
end;

function GTK_LIST_VIEW(obj: Pointer): PGtkListView;
begin
  Result := PGtkListView(g_type_check_instance_cast(obj, GTK_TYPE_LIST_VIEW));
end;

function GTK_LIST_VIEW_CLASS(klass: Pointer): PGtkListViewClass;
begin
  Result := PGtkListViewClass(g_type_check_class_cast(klass, GTK_TYPE_LIST_VIEW));
end;

function GTK_IS_LIST_VIEW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_VIEW);
end;

function GTK_IS_LIST_VIEW_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LIST_VIEW);
end;

function GTK_LIST_VIEW_GET_CLASS(obj: Pointer): PGtkListViewClass;
begin
  Result := PGtkListViewClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
