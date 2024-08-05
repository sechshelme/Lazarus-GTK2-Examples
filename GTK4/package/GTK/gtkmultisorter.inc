/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkMultiSorter, gtk_multi_sorter, GTK, MULTI_SORTER, GtkSorter) }
type
  TGtkMultiSorter = record
  end;
  PGtkMultiSorter = ^TGtkMultiSorter;

  TGtkMultiSorterClass = record
    parent_class: TGtkSorterClass;
  end;
  PGtkMultiSorterClass = ^TGtkMultiSorterClass;

function gtk_multi_sorter_get_type: TGType; cdecl; external gtklib;
function gtk_multi_sorter_new: PGtkMultiSorter; cdecl; external gtklib;
procedure gtk_multi_sorter_append(self: PGtkMultiSorter; sorter: PGtkSorter); cdecl; external gtklib;
procedure gtk_multi_sorter_remove(self: PGtkMultiSorter; position: Tguint); cdecl; external gtklib;

// === Konventiert am: 28-7-24 13:38:16 ===

function GTK_TYPE_MULTI_SORTER: TGType;
function GTK_MULTI_SORTER(obj: Pointer): PGtkMultiSorter;
function GTK_IS_MULTI_SORTER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_MULTI_SORTER: TGType;
begin
  Result := gtk_multi_sorter_get_type;
end;

function GTK_MULTI_SORTER(obj: Pointer): PGtkMultiSorter;
begin
  Result := PGtkMultiSorter(g_type_check_instance_cast(obj, GTK_TYPE_MULTI_SORTER));
end;

function GTK_IS_MULTI_SORTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MULTI_SORTER);
end;




{$ENDIF read_implementation}
