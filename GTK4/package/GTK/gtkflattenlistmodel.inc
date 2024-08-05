/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkFlattenListModel, gtk_flatten_list_model, GTK, FLATTEN_LIST_MODEL, GObject) }
type
  TGtkFlattenListModel = record
  end;
  PGtkFlattenListModel = ^TGtkFlattenListModel;

  TGtkFlattenListModelClass = record
    parent_class: TGObjectClass;
  end;
  PGtkFlattenListModelClass = ^TGtkFlattenListModelClass;

function gtk_flatten_list_model_get_type: TGType; cdecl; external gtklib;
function gtk_flatten_list_model_new(model: PGListModel): PGtkFlattenListModel; cdecl; external gtklib;
procedure gtk_flatten_list_model_set_model(self: PGtkFlattenListModel; model: PGListModel); cdecl; external gtklib;
function gtk_flatten_list_model_get_model(self: PGtkFlattenListModel): PGListModel; cdecl; external gtklib;
function gtk_flatten_list_model_get_model_for_item(self: PGtkFlattenListModel; position: Tguint): PGListModel; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:28:29 ===

function GTK_TYPE_FLATTEN_LIST_MODEL: TGType;
function GTK_FLATTEN_LIST_MODEL(obj: Pointer): PGtkFlattenListModel;
function GTK_IS_FLATTEN_LIST_MODEL(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_FLATTEN_LIST_MODEL: TGType;
begin
  Result := gtk_flatten_list_model_get_type;
end;

function GTK_FLATTEN_LIST_MODEL(obj: Pointer): PGtkFlattenListModel;
begin
  Result := PGtkFlattenListModel(g_type_check_instance_cast(obj, GTK_TYPE_FLATTEN_LIST_MODEL));
end;

function GTK_IS_FLATTEN_LIST_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FLATTEN_LIST_MODEL);
end;




{$ENDIF read_implementation}
