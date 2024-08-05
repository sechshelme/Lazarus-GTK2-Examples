/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_INTERFACE (GtkSelectionModel, gtk_selection_model, GTK, SELECTION_MODEL, GListModel) }
type
  TGtkSelectionModel = record
  end;
  PGtkSelectionModel = ^TGtkSelectionModel;

type

  TGtkSelectionModelInterface = record
    g_iface: TGTypeInterface;
    is_selected: function(model: PGtkSelectionModel; position: Tguint): Tgboolean; cdecl;
    get_selection_in_range: function(model: PGtkSelectionModel; position: Tguint; n_items: Tguint): PGtkBitset; cdecl;
    select_item: function(model: PGtkSelectionModel; position: Tguint; unselect_rest: Tgboolean): Tgboolean; cdecl;
    unselect_item: function(model: PGtkSelectionModel; position: Tguint): Tgboolean; cdecl;
    select_range: function(model: PGtkSelectionModel; position: Tguint; n_items: Tguint; unselect_rest: Tgboolean): Tgboolean; cdecl;
    unselect_range: function(model: PGtkSelectionModel; position: Tguint; n_items: Tguint): Tgboolean; cdecl;
    select_all: function(model: PGtkSelectionModel): Tgboolean; cdecl;
    unselect_all: function(model: PGtkSelectionModel): Tgboolean; cdecl;
    set_selection: function(model: PGtkSelectionModel; selected: PGtkBitset; mask: PGtkBitset): Tgboolean; cdecl;
  end;
  PGtkSelectionModelInterface = ^TGtkSelectionModelInterface;

function gtk_selection_model_get_type: TGType; cdecl; external gtklib;
function gtk_selection_model_is_selected(model: PGtkSelectionModel; position: Tguint): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_get_selection(model: PGtkSelectionModel): PGtkBitset; cdecl; external gtklib;
function gtk_selection_model_get_selection_in_range(model: PGtkSelectionModel; position: Tguint; n_items: Tguint): PGtkBitset; cdecl; external gtklib;
function gtk_selection_model_select_item(model: PGtkSelectionModel; position: Tguint; unselect_rest: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_unselect_item(model: PGtkSelectionModel; position: Tguint): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_select_range(model: PGtkSelectionModel; position: Tguint; n_items: Tguint; unselect_rest: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_unselect_range(model: PGtkSelectionModel; position: Tguint; n_items: Tguint): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_select_all(model: PGtkSelectionModel): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_unselect_all(model: PGtkSelectionModel): Tgboolean; cdecl; external gtklib;
function gtk_selection_model_set_selection(model: PGtkSelectionModel; selected: PGtkBitset; mask: PGtkBitset): Tgboolean; cdecl; external gtklib;
procedure gtk_selection_model_selection_changed(model: PGtkSelectionModel; position: Tguint; n_items: Tguint); cdecl; external gtklib;

// === Konventiert am: 22-7-24 19:49:03 ===

function GTK_TYPE_SELECTION_MODEL: TGType;
function GTK_SELECTION_MODEL(obj: Pointer): PGtkSelectionModel;
function GTK_IS_SELECTION_MODEL(obj: Pointer): Tgboolean;
function GTK_SELECTION_MODEL_GET_IFACE(obj: Pointer): PGtkSelectionModelInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SELECTION_MODEL: TGType;
begin
  Result := gtk_selection_model_get_type;
end;

function GTK_SELECTION_MODEL(obj: Pointer): PGtkSelectionModel;
begin
  Result := PGtkSelectionModel(g_type_check_instance_cast(obj, GTK_TYPE_SELECTION_MODEL));
end;

function GTK_IS_SELECTION_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SELECTION_MODEL);
end;

function GTK_SELECTION_MODEL_GET_IFACE(obj: Pointer): PGtkSelectionModelInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_SELECTION_MODEL);
end;




{$ENDIF read_implementation}
