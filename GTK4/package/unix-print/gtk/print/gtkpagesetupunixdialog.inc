/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkPageSetupUnixDialog = record
  end;
  PGtkPageSetupUnixDialog = ^TGtkPageSetupUnixDialog;

function gtk_page_setup_unix_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_page_setup_unix_dialog_new(title: PChar; parent: PGtkWindow): PGtkWidget; cdecl; external gtklib;
procedure gtk_page_setup_unix_dialog_set_page_setup(dialog: PGtkPageSetupUnixDialog; page_setup: PGtkPageSetup); cdecl; external gtklib;
function gtk_page_setup_unix_dialog_get_page_setup(dialog: PGtkPageSetupUnixDialog): PGtkPageSetup; cdecl; external gtklib;
procedure gtk_page_setup_unix_dialog_set_print_settings(dialog: PGtkPageSetupUnixDialog; print_settings: PGtkPrintSettings); cdecl; external gtklib;
function gtk_page_setup_unix_dialog_get_print_settings(dialog: PGtkPageSetupUnixDialog): PGtkPrintSettings; cdecl; external gtklib;

// === Konventiert am: 3-8-24 13:39:46 ===

function GTK_TYPE_PAGE_SETUP_UNIX_DIALOG: TGType;
function GTK_PAGE_SETUP_UNIX_DIALOG(obj: Pointer): PGtkPageSetupUnixDialog;
function GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_PAGE_SETUP_UNIX_DIALOG: TGType;
begin
  GTK_TYPE_PAGE_SETUP_UNIX_DIALOG := gtk_page_setup_unix_dialog_get_type;
end;

function GTK_PAGE_SETUP_UNIX_DIALOG(obj: Pointer): PGtkPageSetupUnixDialog;
begin
  Result := PGtkPageSetupUnixDialog(g_type_check_instance_cast(obj, GTK_TYPE_PAGE_SETUP_UNIX_DIALOG));
end;

function GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PAGE_SETUP_UNIX_DIALOG);
end;



{$ENDIF read_implementation}
