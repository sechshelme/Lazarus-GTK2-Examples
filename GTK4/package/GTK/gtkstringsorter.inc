/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkStringSorter, gtk_string_sorter, GTK, STRING_SORTER, GtkSorter) }
type
  TGtkStringSorter = record
  end;
  PGtkStringSorter = ^TGtkStringSorter;

  TGtkStringSorterClass = record
    parent_class: TGtkSorterClass;
  end;
  PGtkStringSorterClass = ^TGtkStringSorterClass;

function gtk_string_sorter_get_type: TGType; cdecl; external gtklib;
function gtk_string_sorter_new(expression: PGtkExpression): PGtkStringSorter; cdecl; external gtklib;
function gtk_string_sorter_get_expression(self: PGtkStringSorter): PGtkExpression; cdecl; external gtklib;
procedure gtk_string_sorter_set_expression(self: PGtkStringSorter; expression: PGtkExpression); cdecl; external gtklib;
function gtk_string_sorter_get_ignore_case(self: PGtkStringSorter): Tgboolean; cdecl; external gtklib;
procedure gtk_string_sorter_set_ignore_case(self: PGtkStringSorter; ignore_case: Tgboolean); cdecl; external gtklib;

type
  PGtkCollation = ^TGtkCollation;
  TGtkCollation = longint;

const
  GTK_COLLATION_NONE = 0;
  GTK_COLLATION_UNICODE = 1;
  GTK_COLLATION_FILENAME = 2;

procedure gtk_string_sorter_set_collation(self: PGtkStringSorter; collation: TGtkCollation); cdecl; external gtklib;
function gtk_string_sorter_get_collation(self: PGtkStringSorter): TGtkCollation; cdecl; external gtklib;

// === Konventiert am: 27-7-24 17:43:47 ===

function GTK_TYPE_STRING_SORTER: TGType;
function GTK_STRING_SORTER(obj: Pointer): PGtkStringSorter;
function GTK_IS_STRING_SORTER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_STRING_SORTER: TGType;
begin
  Result := gtk_string_sorter_get_type;
end;

function GTK_STRING_SORTER(obj: Pointer): PGtkStringSorter;
begin
  Result := PGtkStringSorter(g_type_check_instance_cast(obj, GTK_TYPE_STRING_SORTER));
end;

function GTK_IS_STRING_SORTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STRING_SORTER);
end;




{$ENDIF read_implementation}
