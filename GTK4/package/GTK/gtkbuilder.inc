/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkBuilder = record // _GtkBuilder
  end;
  PGtkBuilder = ^TGtkBuilder;

  TGtkBuilderClass = record // _GtkBuilderClass
  end;
  PGtkBuilderClass = ^TGtkBuilderClass;

  PGtkBuilderError = ^TGtkBuilderError;
  TGtkBuilderError = longint;

const
  GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION = 0;
  GTK_BUILDER_ERROR_UNHANDLED_TAG = 1;
  GTK_BUILDER_ERROR_MISSING_ATTRIBUTE = 2;
  GTK_BUILDER_ERROR_INVALID_ATTRIBUTE = 3;
  GTK_BUILDER_ERROR_INVALID_TAG = 4;
  GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE = 5;
  GTK_BUILDER_ERROR_INVALID_VALUE = 6;
  GTK_BUILDER_ERROR_VERSION_MISMATCH = 7;
  GTK_BUILDER_ERROR_DUPLICATE_ID = 8;
  GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED = 9;
  GTK_BUILDER_ERROR_TEMPLATE_MISMATCH = 10;
  GTK_BUILDER_ERROR_INVALID_PROPERTY = 11;
  GTK_BUILDER_ERROR_INVALID_SIGNAL = 12;
  GTK_BUILDER_ERROR_INVALID_ID = 13;
  GTK_BUILDER_ERROR_INVALID_FUNCTION = 14;


function gtk_builder_error_quark: TGQuark; cdecl; external gtklib;
function gtk_builder_get_type: TGType; cdecl; external gtklib;
function gtk_builder_new: PGtkBuilder; cdecl; external gtklib;
function gtk_builder_add_from_file(builder: PGtkBuilder; filename: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_add_from_resource(builder: PGtkBuilder; resource_path: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_add_from_string(builder: PGtkBuilder; buffer: PChar; length: Tgssize; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_add_objects_from_file(builder: PGtkBuilder; filename: PChar; object_ids: PPchar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_add_objects_from_resource(builder: PGtkBuilder; resource_path: PChar; object_ids: PPchar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_add_objects_from_string(builder: PGtkBuilder; buffer: PChar; length: Tgssize; object_ids: PPchar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_get_object(builder: PGtkBuilder; Name: PChar): PGObject; cdecl; external gtklib;
function gtk_builder_get_objects(builder: PGtkBuilder): PGSList; cdecl; external gtklib;
procedure gtk_builder_expose_object(builder: PGtkBuilder; Name: PChar; obj: PGObject); cdecl; external gtklib;
function gtk_builder_get_current_object(builder: PGtkBuilder): PGObject; cdecl; external gtklib;
procedure gtk_builder_set_current_object(builder: PGtkBuilder; current_object: PGObject); cdecl; external gtklib;
procedure gtk_builder_set_translation_domain(builder: PGtkBuilder; domain: PChar); cdecl; external gtklib;
function gtk_builder_get_translation_domain(builder: PGtkBuilder): PChar; cdecl; external gtklib;
function gtk_builder_get_scope(builder: PGtkBuilder): PGtkBuilderScope; cdecl; external gtklib;
procedure gtk_builder_set_scope(builder: PGtkBuilder; scope: PGtkBuilderScope); cdecl; external gtklib;
function gtk_builder_get_type_from_name(builder: PGtkBuilder; type_name: PChar): TGType; cdecl; external gtklib;
function gtk_builder_value_from_string(builder: PGtkBuilder; pspec: PGParamSpec; _string: PChar; Value: PGValue; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_value_from_string_type(builder: PGtkBuilder; _type: TGType; _string: PChar; Value: PGValue; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_builder_new_from_file(filename: PChar): PGtkBuilder; cdecl; external gtklib;
function gtk_builder_new_from_resource(resource_path: PChar): PGtkBuilder; cdecl; external gtklib;
function gtk_builder_new_from_string(_string: PChar; length: Tgssize): PGtkBuilder; cdecl; external gtklib;
function gtk_builder_create_closure(builder: PGtkBuilder; function_name: PChar; flags: TGtkBuilderClosureFlags; obj: PGObject; error: PPGError): PGClosure; cdecl; external gtklib;

function GTK_BUILDER_ERROR: TGQuark;
procedure GTK_BUILDER_WARN_INVALID_CHILD_TYPE(obj: Pointer; type_: PChar);

function gtk_builder_extend_with_template(builder: PGtkBuilder; obj: PGObject; template_type: TGType; buffer: PChar; length: Tgssize; error: PPGError): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 17-7-24 16:47:52 ===

function GTK_TYPE_BUILDER: TGType;
function GTK_BUILDER(obj: Pointer): PGtkBuilder;
function GTK_BUILDER_CLASS(klass: Pointer): PGtkBuilderClass;
function GTK_IS_BUILDER(obj: Pointer): Tgboolean;
function GTK_IS_BUILDER_CLASS(klass: Pointer): Tgboolean;
function GTK_BUILDER_GET_CLASS(obj: Pointer): PGtkBuilderClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BUILDER: TGType;
begin
  GTK_TYPE_BUILDER := gtk_builder_get_type;
end;

function GTK_BUILDER(obj: Pointer): PGtkBuilder;
begin
  Result := PGtkBuilder(g_type_check_instance_cast(obj, GTK_TYPE_BUILDER));
end;

function GTK_BUILDER_CLASS(klass: Pointer): PGtkBuilderClass;
begin
  Result := PGtkBuilderClass(g_type_check_class_cast(klass, GTK_TYPE_BUILDER));
end;

function GTK_IS_BUILDER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BUILDER);
end;

function GTK_IS_BUILDER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_BUILDER);
end;

function GTK_BUILDER_GET_CLASS(obj: Pointer): PGtkBuilderClass;
begin
  Result := PGtkBuilderClass(PGTypeInstance(obj)^.g_class);
end;


function GTK_BUILDER_ERROR: TGQuark;
begin
  GTK_BUILDER_ERROR := gtk_builder_error_quark;
end;

procedure GTK_BUILDER_WARN_INVALID_CHILD_TYPE(obj: Pointer; type_: PChar);
begin
  g_warning('''%s'' is not a valid child type of ''%s',[type_, g_type_name(G_OBJECT_TYPE(obj))]);
end;


{$ENDIF read_implementation}
