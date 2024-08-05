/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_INTERFACE (GtkSectionModel, gtk_section_model, GTK, SECTION_MODEL, GListModel) }
type
  TGtkSectionModel = record
  end;
  PGtkSectionModel = ^TGtkSectionModel;

  TGtkSectionModelInterface = record
    g_iface: TGTypeInterface;
    get_section: procedure(self: PGtkSectionModel; position: Tguint; out_start: Pguint; out_end: Pguint); cdecl;
  end;
  PGtkSectionModelInterface = ^TGtkSectionModelInterface;

function gtk_section_model_get_type: TGType; cdecl; external gtklib;
procedure gtk_section_model_get_section(self: PGtkSectionModel; position: Tguint; out_start: Pguint; out_end: Pguint); cdecl; external gtklib;
procedure gtk_section_model_sections_changed(self: PGtkSectionModel; position: Tguint; n_items: Tguint); cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:44:41 ===

function GTK_TYPE_SECTION_MODEL: TGType;
function GTK_SECTION_MODEL(obj: Pointer): PGtkSectionModel;
function GTK_IS_SECTION_MODEL(obj: Pointer): Tgboolean;
function GTK_SECTION_MODEL_GET_IFACE(obj: Pointer): PGtkSectionModelInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SECTION_MODEL: TGType;
begin
  Result := gtk_section_model_get_type;
end;

function GTK_SECTION_MODEL(obj: Pointer): PGtkSectionModel;
begin
  Result := PGtkSectionModel(g_type_check_instance_cast(obj, GTK_TYPE_SECTION_MODEL));
end;

function GTK_IS_SECTION_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SECTION_MODEL);
end;

function GTK_SECTION_MODEL_GET_IFACE(obj: Pointer): PGtkSectionModelInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_SECTION_MODEL);
end;




{$ENDIF read_implementation}
