/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkSelectionFilterModel, gtk_selection_filter_model, GTK, SELECTION_FILTER_MODEL, GObject) }
type
  TGtkSelectionFilterModel = record
  end;
  PGtkSelectionFilterModel = ^TGtkSelectionFilterModel;

  TGtkSelectionFilterModelClass = record
    parent_class: TGObjectClass;
  end;
  PGtkSelectionFilterModelClass = ^TGtkSelectionFilterModelClass;

function gtk_selection_filter_model_get_type: TGType; cdecl; external gtklib;
function gtk_selection_filter_model_new(model: PGtkSelectionModel): PGtkSelectionFilterModel; cdecl; external gtklib;
procedure gtk_selection_filter_model_set_model(self: PGtkSelectionFilterModel; model: PGtkSelectionModel); cdecl; external gtklib;
function gtk_selection_filter_model_get_model(self: PGtkSelectionFilterModel): PGtkSelectionModel; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:44:34 ===

function GTK_TYPE_SELECTION_FILTER_MODEL: TGType;
function GTK_SELECTION_FILTER_MODEL(obj: Pointer): PGtkSelectionFilterModel;
function GTK_IS_SELECTION_FILTER_MODEL(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SELECTION_FILTER_MODEL: TGType;
begin
  Result := gtk_selection_filter_model_get_type;
end;

function GTK_SELECTION_FILTER_MODEL(obj: Pointer): PGtkSelectionFilterModel;
begin
  Result := PGtkSelectionFilterModel(g_type_check_instance_cast(obj, GTK_TYPE_SELECTION_FILTER_MODEL));
end;

function GTK_IS_SELECTION_FILTER_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SELECTION_FILTER_MODEL);
end;




{$ENDIF read_implementation}
