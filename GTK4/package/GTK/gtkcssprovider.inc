/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCssProvider = record
    parent_instance: TGObject;
  end;
  PGtkCssProvider = ^TGtkCssProvider;


function gtk_css_provider_get_type: TGType; cdecl; external gtklib;
function gtk_css_provider_new: PGtkCssProvider; cdecl; external gtklib;
function gtk_css_provider_to_string(provider: PGtkCssProvider): PChar; cdecl; external gtklib;
procedure gtk_css_provider_load_from_data(css_provider: PGtkCssProvider; Data: PChar; length: Tgssize); cdecl; external gtklib;
procedure gtk_css_provider_load_from_string(css_provider: PGtkCssProvider; _string: PChar); cdecl; external gtklib;
procedure gtk_css_provider_load_from_bytes(css_provider: PGtkCssProvider; Data: PGBytes); cdecl; external gtklib;
procedure gtk_css_provider_load_from_file(css_provider: PGtkCssProvider; _file: PGFile); cdecl; external gtklib;
procedure gtk_css_provider_load_from_path(css_provider: PGtkCssProvider; path: PChar); cdecl; external gtklib;
procedure gtk_css_provider_load_from_resource(css_provider: PGtkCssProvider; resource_path: PChar); cdecl; external gtklib;
procedure gtk_css_provider_load_named(provider: PGtkCssProvider; Name: PChar; variant: PChar); cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:46:13 ===

function GTK_TYPE_CSS_PROVIDER: TGType;
function GTK_CSS_PROVIDER(obj: Pointer): PGtkCssProvider;
function GTK_IS_CSS_PROVIDER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CSS_PROVIDER: TGType;
begin
  GTK_TYPE_CSS_PROVIDER := gtk_css_provider_get_type;
end;

function GTK_CSS_PROVIDER(obj: Pointer): PGtkCssProvider;
begin
  Result := PGtkCssProvider(g_type_check_instance_cast(obj, GTK_TYPE_CSS_PROVIDER));
end;

function GTK_IS_CSS_PROVIDER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CSS_PROVIDER);
end;



{$ENDIF read_implementation}
