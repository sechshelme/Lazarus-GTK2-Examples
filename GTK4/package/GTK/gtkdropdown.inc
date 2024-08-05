/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


{G_DECLARE_FINAL_TYPE (GtkDropDown, gtk_drop_down, GTK, DROP_DOWN, GtkWidget) }
type
  TGtkDropDown = record
  end;
  PGtkDropDown = ^TGtkDropDown;

  TGtkDropDownClass = record
    parent_class: TGtkWidgetClass;
  end;
  PGtkDropDownClass = ^TGtkDropDownClass;

function gtk_drop_down_get_type: TGType; cdecl; external gtklib;
function gtk_drop_down_new(model:PGListModel; expression:PGtkExpression):PGtkWidget;cdecl;external gtklib;
function gtk_drop_down_new_from_strings(strings:PPchar):PGtkWidget;cdecl;external gtklib;
procedure gtk_drop_down_set_model(self:PGtkDropDown; model:PGListModel);cdecl;external gtklib;
function gtk_drop_down_get_model(self:PGtkDropDown):PGListModel;cdecl;external gtklib;
procedure gtk_drop_down_set_selected(self:PGtkDropDown; position:Tguint);cdecl;external gtklib;
function gtk_drop_down_get_selected(self:PGtkDropDown):Tguint;cdecl;external gtklib;
function gtk_drop_down_get_selected_item(self:PGtkDropDown):Tgpointer;cdecl;external gtklib;
procedure gtk_drop_down_set_factory(self:PGtkDropDown; factory:PGtkListItemFactory);cdecl;external gtklib;
function gtk_drop_down_get_factory(self:PGtkDropDown):PGtkListItemFactory;cdecl;external gtklib;
procedure gtk_drop_down_set_list_factory(self:PGtkDropDown; factory:PGtkListItemFactory);cdecl;external gtklib;
function gtk_drop_down_get_list_factory(self:PGtkDropDown):PGtkListItemFactory;cdecl;external gtklib;
procedure gtk_drop_down_set_header_factory(self:PGtkDropDown; factory:PGtkListItemFactory);cdecl;external gtklib;
function gtk_drop_down_get_header_factory(self:PGtkDropDown):PGtkListItemFactory;cdecl;external gtklib;
procedure gtk_drop_down_set_expression(self:PGtkDropDown; expression:PGtkExpression);cdecl;external gtklib;
function gtk_drop_down_get_expression(self:PGtkDropDown):PGtkExpression;cdecl;external gtklib;
procedure gtk_drop_down_set_enable_search(self:PGtkDropDown; enable_search:Tgboolean);cdecl;external gtklib;
function gtk_drop_down_get_enable_search(self:PGtkDropDown):Tgboolean;cdecl;external gtklib;
procedure gtk_drop_down_set_show_arrow(self:PGtkDropDown; show_arrow:Tgboolean);cdecl;external gtklib;
function gtk_drop_down_get_show_arrow(self:PGtkDropDown):Tgboolean;cdecl;external gtklib;
procedure gtk_drop_down_set_search_match_mode(self:PGtkDropDown; search_match_mode:TGtkStringFilterMatchMode);cdecl;external gtklib;
function gtk_drop_down_get_search_match_mode(self:PGtkDropDown):TGtkStringFilterMatchMode;cdecl;external gtklib;

// === Konventiert am: 25-7-24 18:16:23 ===

function GTK_TYPE_DROP_DOWN: TGType;
function GTK_DROP_DOWN(obj: Pointer): PGtkDropDown;
function GTK_IS_DROP_DOWN(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_DROP_DOWN: TGType;
begin
  Result := gtk_drop_down_get_type;
end;

function GTK_DROP_DOWN(obj: Pointer): PGtkDropDown;
begin
  Result := PGtkDropDown(g_type_check_instance_cast(obj, GTK_TYPE_DROP_DOWN));
end;

function GTK_IS_DROP_DOWN(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DROP_DOWN);
end;




{$ENDIF read_implementation}
