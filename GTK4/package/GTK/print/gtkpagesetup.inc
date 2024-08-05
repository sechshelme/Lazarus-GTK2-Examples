/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkPageSetup = record // _GtkPageSetup
  end;
  PGtkPageSetup = ^TGtkPageSetup;

function gtk_page_setup_get_type: TGType; cdecl; external gtklib;
function gtk_page_setup_new: PGtkPageSetup; cdecl; external gtklib;
function gtk_page_setup_copy(other: PGtkPageSetup): PGtkPageSetup; cdecl; external gtklib;
function gtk_page_setup_get_orientation(setup: PGtkPageSetup): TGtkPageOrientation; cdecl; external gtklib;
procedure gtk_page_setup_set_orientation(setup: PGtkPageSetup; orientation: TGtkPageOrientation); cdecl; external gtklib;
function gtk_page_setup_get_paper_size(setup: PGtkPageSetup): PGtkPaperSize; cdecl; external gtklib;
procedure gtk_page_setup_set_paper_size(setup: PGtkPageSetup; size: PGtkPaperSize); cdecl; external gtklib;
function gtk_page_setup_get_top_margin(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_page_setup_set_top_margin(setup: PGtkPageSetup; margin: Tdouble; _unit: TGtkUnit); cdecl; external gtklib;
function gtk_page_setup_get_bottom_margin(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_page_setup_set_bottom_margin(setup: PGtkPageSetup; margin: Tdouble; _unit: TGtkUnit); cdecl; external gtklib;
function gtk_page_setup_get_left_margin(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_page_setup_set_left_margin(setup: PGtkPageSetup; margin: Tdouble; _unit: TGtkUnit); cdecl; external gtklib;
function gtk_page_setup_get_right_margin(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
procedure gtk_page_setup_set_right_margin(setup: PGtkPageSetup; margin: Tdouble; _unit: TGtkUnit); cdecl; external gtklib;
procedure gtk_page_setup_set_paper_size_and_default_margins(setup: PGtkPageSetup; size: PGtkPaperSize); cdecl; external gtklib;
function gtk_page_setup_get_paper_width(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_page_setup_get_paper_height(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_page_setup_get_page_width(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_page_setup_get_page_height(setup: PGtkPageSetup; unit_: TGtkUnit): Tdouble; cdecl; external gtklib;
function gtk_page_setup_new_from_file(file_name: PChar; error: PPGError): PGtkPageSetup; cdecl; external gtklib;
function gtk_page_setup_load_file(setup: PGtkPageSetup; file_name: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_page_setup_to_file(setup: PGtkPageSetup; file_name: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
function gtk_page_setup_new_from_key_file(key_file: PGKeyFile; group_name: PChar; error: PPGError): PGtkPageSetup; cdecl; external gtklib;
function gtk_page_setup_load_key_file(setup: PGtkPageSetup; key_file: PGKeyFile; group_name: PChar; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gtk_page_setup_to_key_file(setup: PGtkPageSetup; key_file: PGKeyFile; group_name: PChar); cdecl; external gtklib;
function gtk_page_setup_to_gvariant(setup: PGtkPageSetup): PGVariant; cdecl; external gtklib;
function gtk_page_setup_new_from_gvariant(variant: PGVariant): PGtkPageSetup; cdecl; external gtklib;

// === Konventiert am: 24-7-24 15:59:41 ===

function GTK_TYPE_PAGE_SETUP: TGType;
function GTK_PAGE_SETUP(obj: Pointer): PGtkPageSetup;
function GTK_IS_PAGE_SETUP(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_PAGE_SETUP: TGType;
begin
  GTK_TYPE_PAGE_SETUP := gtk_page_setup_get_type;
end;

function GTK_PAGE_SETUP(obj: Pointer): PGtkPageSetup;
begin
  Result := PGtkPageSetup(g_type_check_instance_cast(obj, GTK_TYPE_PAGE_SETUP));
end;

function GTK_IS_PAGE_SETUP(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PAGE_SETUP);
end;



{$ENDIF read_implementation}
