/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkNoSelection, gtk_no_selection, GTK, NO_SELECTION, GObject) }
type
  TGtkNoSelection = record
  end;
  PGtkNoSelection = ^TGtkNoSelection;

  TGtkNoSelectionClass = record
    parent_class: TGObjectClass;
  end;
  PGtkNoSelectionClass = ^TGtkNoSelectionClass;

function gtk_no_selection_get_type: TGType; cdecl; external gtklib;
function gtk_no_selection_new(model: PGListModel): PGtkNoSelection; cdecl; external gtklib;
function gtk_no_selection_get_model(self: PGtkNoSelection): PGListModel; cdecl; external gtklib;
procedure gtk_no_selection_set_model(self: PGtkNoSelection; model: PGListModel); cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:01:30 ===

function GTK_TYPE_NO_SELECTION: TGType;
function GTK_NO_SELECTION(obj: Pointer): PGtkNoSelection;
function GTK_IS_NO_SELECTION(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_NO_SELECTION: TGType;
begin
  Result := gtk_no_selection_get_type;
end;

function GTK_NO_SELECTION(obj: Pointer): PGtkNoSelection;
begin
  Result := PGtkNoSelection(g_type_check_instance_cast(obj, GTK_TYPE_NO_SELECTION));
end;

function GTK_IS_NO_SELECTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_NO_SELECTION);
end;




{$ENDIF read_implementation}
