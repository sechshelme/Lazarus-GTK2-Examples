/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {GDK_DECLARE_INTERNAL_TYPE (GtkMultiFilter, gtk_multi_filter, GTK, MULTI_FILTER, GtkFilter) }
type
  TGtkMultiFilter = record
  end;
  PGtkMultiFilter = ^TGtkMultiFilter;

  TGtkMultiFilterClass = record
  end;
  PGtkMultiFilterClass = ^TGtkMultiFilterClass;

function gtk_multi_filter_get_type: TGType; cdecl; external gtklib;
procedure gtk_multi_filter_append(self: PGtkMultiFilter; filter: PGtkFilter); cdecl; external gtklib;
procedure gtk_multi_filter_remove(self: PGtkMultiFilter; position: Tguint); cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkAnyFilter, gtk_any_filter, GTK, ANY_FILTER, GtkMultiFilter) }
type
  TGtkAnyFilter = record
  end;
  PGtkAnyFilter = ^TGtkAnyFilter;

  TGtkAnyFilterClass = record
  end;
  PGtkAnyFilterClass = ^TGtkAnyFilterClass;

function gtk_any_filter_get_type: TGType; cdecl; external gtklib;
function gtk_any_filter_new: PGtkAnyFilter; cdecl; external gtklib;

{GDK_DECLARE_INTERNAL_TYPE (GtkEveryFilter, gtk_every_filter, GTK, EVERY_FILTER, GtkMultiFilter) }
type
  TGtkEveryFilter = record
  end;
  PGtkEveryFilter = ^TGtkEveryFilter;

  TGtkEveryFilterClass = record
  end;
  PGtkEveryFilterClass = ^TGtkEveryFilterClass;

function gtk_every_filter_get_type: TGType; cdecl; external gtklib;

function gtk_every_filter_new: PGtkEveryFilter; cdecl; external gtklib;

// === Konventiert am: 28-7-24 13:37:37 ===

function GTK_TYPE_MULTI_FILTER: TGType;
function GTK_MULTI_FILTER(obj: Pointer): PGtkMultiFilter;
function GTK_IS_MULTI_FILTER(obj: Pointer): Tgboolean;
function GTK_MULTI_FILTER_CLASS(klass: Pointer): PGtkMultiFilterClass;
function GTK_IS_MULTI_FILTER_CLASS(klass: Pointer): Tgboolean;
function GTK_MULTI_FILTER_GET_CLASS(obj: Pointer): PGtkMultiFilterClass;

function GTK_TYPE_ANY_FILTER: TGType;
function GTK_ANY_FILTER(obj: Pointer): PGtkAnyFilter;
function GTK_IS_ANY_FILTER(obj: Pointer): Tgboolean;
function GTK_ANY_FILTER_CLASS(klass: Pointer): PGtkAnyFilterClass;
function GTK_IS_ANY_FILTER_CLASS(klass: Pointer): Tgboolean;
function GTK_ANY_FILTER_GET_CLASS(obj: Pointer): PGtkAnyFilterClass;

function GTK_TYPE_EVERY_FILTER: TGType;
function GTK_EVERY_FILTER(obj: Pointer): PGtkEveryFilter;
function GTK_IS_EVERY_FILTER(obj: Pointer): Tgboolean;
function GTK_EVERY_FILTER_CLASS(klass: Pointer): PGtkEveryFilterClass;
function GTK_IS_EVERY_FILTER_CLASS(klass: Pointer): Tgboolean;
function GTK_EVERY_FILTER_GET_CLASS(obj: Pointer): PGtkEveryFilterClass;


{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_MULTI_FILTER: TGType;
begin
  Result := gtk_multi_filter_get_type;
end;

function GTK_MULTI_FILTER(obj: Pointer): PGtkMultiFilter;
begin
  Result := PGtkMultiFilter(g_type_check_instance_cast(obj, GTK_TYPE_MULTI_FILTER));
end;

function GTK_IS_MULTI_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MULTI_FILTER);
end;

function GTK_MULTI_FILTER_CLASS(klass: Pointer): PGtkMultiFilterClass;
begin
  Result := PGtkMultiFilterClass(g_type_check_class_cast(klass, GTK_TYPE_MULTI_FILTER));
end;

function GTK_IS_MULTI_FILTER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_MULTI_FILTER);
end;

function GTK_MULTI_FILTER_GET_CLASS(obj: Pointer): PGtkMultiFilterClass;
begin
  Result := PGtkMultiFilterClass(PGTypeInstance(obj)^.g_class);
end;

// ====

function GTK_TYPE_ANY_FILTER: TGType;
begin
  Result := gtk_any_filter_get_type;
end;

function GTK_ANY_FILTER(obj: Pointer): PGtkAnyFilter;
begin
  Result := PGtkAnyFilter(g_type_check_instance_cast(obj, GTK_TYPE_ANY_FILTER));
end;

function GTK_IS_ANY_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ANY_FILTER);
end;

function GTK_ANY_FILTER_CLASS(klass: Pointer): PGtkAnyFilterClass;
begin
  Result := PGtkAnyFilterClass(g_type_check_class_cast(klass, GTK_TYPE_ANY_FILTER));
end;

function GTK_IS_ANY_FILTER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ANY_FILTER);
end;

function GTK_ANY_FILTER_GET_CLASS(obj: Pointer): PGtkAnyFilterClass;
begin
  Result := PGtkAnyFilterClass(PGTypeInstance(obj)^.g_class);
end;

// ====

function GTK_TYPE_EVERY_FILTER: TGType;
begin
  Result := gtk_every_filter_get_type;
end;

function GTK_EVERY_FILTER(obj: Pointer): PGtkEveryFilter;
begin
  Result := PGtkEveryFilter(g_type_check_instance_cast(obj, GTK_TYPE_EVERY_FILTER));
end;

function GTK_IS_EVERY_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EVERY_FILTER);
end;

function GTK_EVERY_FILTER_CLASS(klass: Pointer): PGtkEveryFilterClass;
begin
  Result := PGtkEveryFilterClass(g_type_check_class_cast(klass, GTK_TYPE_EVERY_FILTER));
end;

function GTK_IS_EVERY_FILTER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_EVERY_FILTER);
end;

function GTK_EVERY_FILTER_GET_CLASS(obj: Pointer): PGtkEveryFilterClass;
begin
  Result := PGtkEveryFilterClass(PGTypeInstance(obj)^.g_class);
end;


{$ENDIF read_implementation}
