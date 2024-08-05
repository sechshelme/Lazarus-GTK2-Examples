/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkPrintUnixDialog = record
  end;
  PGtkPrintUnixDialog = ^TGtkPrintUnixDialog;

function gtk_print_unix_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_print_unix_dialog_new(title: PChar; parent: PGtkWindow): PGtkWidget; cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_page_setup(dialog: PGtkPrintUnixDialog; page_setup: PGtkPageSetup); cdecl; external gtklib;
function gtk_print_unix_dialog_get_page_setup(dialog: PGtkPrintUnixDialog): PGtkPageSetup; cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_current_page(dialog: PGtkPrintUnixDialog; current_page: longint); cdecl; external gtklib;
function gtk_print_unix_dialog_get_current_page(dialog: PGtkPrintUnixDialog): longint; cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_settings(dialog: PGtkPrintUnixDialog; settings: PGtkPrintSettings); cdecl; external gtklib;
function gtk_print_unix_dialog_get_settings(dialog: PGtkPrintUnixDialog): PGtkPrintSettings; cdecl; external gtklib;
function gtk_print_unix_dialog_get_selected_printer(dialog: PGtkPrintUnixDialog): PGtkPrinter; cdecl; external gtklib;
procedure gtk_print_unix_dialog_add_custom_tab(dialog: PGtkPrintUnixDialog; child: PGtkWidget; tab_label: PGtkWidget); cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_manual_capabilities(dialog: PGtkPrintUnixDialog; capabilities: TGtkPrintCapabilities); cdecl; external gtklib;
function gtk_print_unix_dialog_get_manual_capabilities(dialog: PGtkPrintUnixDialog): TGtkPrintCapabilities; cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_support_selection(dialog: PGtkPrintUnixDialog; support_selection: Tgboolean); cdecl; external gtklib;
function gtk_print_unix_dialog_get_support_selection(dialog: PGtkPrintUnixDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_has_selection(dialog: PGtkPrintUnixDialog; has_selection: Tgboolean); cdecl; external gtklib;
function gtk_print_unix_dialog_get_has_selection(dialog: PGtkPrintUnixDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_print_unix_dialog_set_embed_page_setup(dialog: PGtkPrintUnixDialog; embed: Tgboolean); cdecl; external gtklib;
function gtk_print_unix_dialog_get_embed_page_setup(dialog: PGtkPrintUnixDialog): Tgboolean; cdecl; external gtklib;
function gtk_print_unix_dialog_get_page_setup_set(dialog: PGtkPrintUnixDialog): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 3-8-24 13:41:22 ===

function GTK_TYPE_PRINT_UNIX_DIALOG: TGType;
function GTK_PRINT_UNIX_DIALOG(obj: Pointer): PGtkPrintUnixDialog;
function GTK_IS_PRINT_UNIX_DIALOG(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_PRINT_UNIX_DIALOG: TGType;
begin
  GTK_TYPE_PRINT_UNIX_DIALOG := gtk_print_unix_dialog_get_type;
end;

function GTK_PRINT_UNIX_DIALOG(obj: Pointer): PGtkPrintUnixDialog;
begin
  Result := PGtkPrintUnixDialog(g_type_check_instance_cast(obj, GTK_TYPE_PRINT_UNIX_DIALOG));
end;

function GTK_IS_PRINT_UNIX_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PRINT_UNIX_DIALOG);
end;



{$ENDIF read_implementation}
