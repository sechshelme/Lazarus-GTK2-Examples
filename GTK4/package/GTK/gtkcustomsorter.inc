/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkCustomSorter, gtk_custom_sorter, GTK, CUSTOM_SORTER, GtkSorter) }
type
  TGtkCustomSorter = record
  end;
  PGtkCustomSorter = ^TGtkCustomSorter;

  TGtkCustomSorterClass = record
    parent_class: TGtkSorterClass;
  end;
  PGtkCustomSorterClass = ^TGtkCustomSorterClass;

function gtk_custom_sorter_get_type: TGType; cdecl; external gtklib;
function gtk_custom_sorter_new(sort_func: TGCompareDataFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify): PGtkCustomSorter; cdecl; external gtklib;
procedure gtk_custom_sorter_set_sort_func(self: PGtkCustomSorter; sort_func: TGCompareDataFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify); cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:36:33 ===

function GTK_TYPE_CUSTOM_SORTER: TGType;
function GTK_CUSTOM_SORTER(obj: Pointer): PGtkCustomSorter;
function GTK_IS_CUSTOM_SORTER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CUSTOM_SORTER: TGType;
begin
  Result := gtk_custom_sorter_get_type;
end;

function GTK_CUSTOM_SORTER(obj: Pointer): PGtkCustomSorter;
begin
  Result := PGtkCustomSorter(g_type_check_instance_cast(obj, GTK_TYPE_CUSTOM_SORTER));
end;

function GTK_IS_CUSTOM_SORTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CUSTOM_SORTER);
end;




{$ENDIF read_implementation}
