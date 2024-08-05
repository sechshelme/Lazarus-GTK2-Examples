/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkBuildable = record  // _GtkBuildable
  end;
  PGtkBuildable = ^TGtkBuildable;

  TGtkBuildableParseContext = record  // _GtkBuildableParseContext
  end;
  PGtkBuildableParseContext = ^TGtkBuildableParseContext;

  TGtkBuildableParser = record
    start_element: procedure(context: PGtkBuildableParseContext; element_name: PChar; attribute_names: PPchar; attribute_values: PPchar; user_data: Tgpointer;
      error: PPGError); cdecl;
    end_element: procedure(context: PGtkBuildableParseContext; element_name: PChar; user_data: Tgpointer; error: PPGError); cdecl;
    Text: procedure(context: PGtkBuildableParseContext; Text: PChar; text_len: Tgsize; user_data: Tgpointer; error: PPGError); cdecl;
    error: procedure(context: PGtkBuildableParseContext; error: PGError; user_data: Tgpointer); cdecl;
    padding: array[0..3] of Tgpointer;
  end;
  PGtkBuildableParser = ^TGtkBuildableParser;

  TGtkBuildableIface = record
    g_iface: TGTypeInterface;
    set_id: procedure(buildable: PGtkBuildable; id: PChar); cdecl;
    get_id: function(buildable: PGtkBuildable): PChar; cdecl;
    add_child: procedure(buildable: PGtkBuildable; builder: PGtkBuilder; child: PGObject; _type: PChar); cdecl;
    set_buildable_property: procedure(buildable: PGtkBuildable; builder: PGtkBuilder; Name: PChar; Value: PGValue); cdecl;
    construct_child: function(buildable: PGtkBuildable; builder: PGtkBuilder; Name: PChar): PGObject; cdecl;
    custom_tag_start: function(buildable: PGtkBuildable; builder: PGtkBuilder; child: PGObject; tagname: PChar; parser: PGtkBuildableParser;
      Data: Pgpointer): Tgboolean; cdecl;
    custom_tag_end: procedure(buildable: PGtkBuildable; builder: PGtkBuilder; child: PGObject; tagname: PChar; Data: Tgpointer); cdecl;
    custom_finished: procedure(buildable: PGtkBuildable; builder: PGtkBuilder; child: PGObject; tagname: PChar; Data: Tgpointer); cdecl;
    parser_finished: procedure(buildable: PGtkBuildable; builder: PGtkBuilder); cdecl;
    get_internal_child: function(buildable: PGtkBuildable; builder: PGtkBuilder; childname: PChar): PGObject; cdecl;
  end;
  PGtkBuildableIface = ^TGtkBuildableIface;


function gtk_buildable_get_type: TGType; cdecl; external gtklib;
function gtk_buildable_get_buildable_id(buildable: PGtkBuildable): PChar; cdecl; external gtklib;
procedure gtk_buildable_parse_context_push(context: PGtkBuildableParseContext; parser: PGtkBuildableParser; user_data: Tgpointer); cdecl; external gtklib;
function gtk_buildable_parse_context_pop(context: PGtkBuildableParseContext): Tgpointer; cdecl; external gtklib;
function gtk_buildable_parse_context_get_element(context: PGtkBuildableParseContext): PChar; cdecl; external gtklib;
function gtk_buildable_parse_context_get_element_stack(context: PGtkBuildableParseContext): PGPtrArray; cdecl; external gtklib;
procedure gtk_buildable_parse_context_get_position(context: PGtkBuildableParseContext; line_number: Plongint; char_number: Plongint); cdecl; external gtklib;


// === Konventiert am: 18-7-24 19:10:13 ===

function GTK_TYPE_BUILDABLE: TGType;
function GTK_BUILDABLE(obj: Pointer): PGtkBuildable;
function GTK_IS_BUILDABLE(obj: Pointer): Tgboolean;
function GTK_BUILDABLE_GET_IFACE(obj: Pointer): PGtkBuildableIface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BUILDABLE: TGType;
begin
  GTK_TYPE_BUILDABLE := gtk_buildable_get_type;
end;

function GTK_BUILDABLE(obj: Pointer): PGtkBuildable;
begin
  Result := PGtkBuildable(g_type_check_instance_cast(obj, GTK_TYPE_BUILDABLE));
end;

function GTK_IS_BUILDABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BUILDABLE);
end;

function GTK_BUILDABLE_GET_IFACE(obj: Pointer): PGtkBuildableIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_BUILDABLE);
end;


{$ENDIF read_implementation}
