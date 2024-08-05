/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkAppChooser = record
  end;
  PGtkAppChooser = ^TGtkAppChooser;

function gtk_app_chooser_get_type: TGType; cdecl; external gtklib;
function gtk_app_chooser_get_app_info(self: PGtkAppChooser): PGAppInfo; cdecl; external gtklib;
function gtk_app_chooser_get_content_type(self: PGtkAppChooser): PChar; cdecl; external gtklib;
procedure gtk_app_chooser_refresh(self: PGtkAppChooser); cdecl; external gtklib;

// === Konventiert am: 29-7-24 14:55:34 ===

function GTK_TYPE_APP_CHOOSER: TGType;
function GTK_APP_CHOOSER(obj: Pointer): PGtkAppChooser;
function GTK_IS_APP_CHOOSER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_APP_CHOOSER: TGType;
begin
  GTK_TYPE_APP_CHOOSER := gtk_app_chooser_get_type;
end;

function GTK_APP_CHOOSER(obj: Pointer): PGtkAppChooser;
begin
  Result := PGtkAppChooser(g_type_check_instance_cast(obj, GTK_TYPE_APP_CHOOSER));
end;

function GTK_IS_APP_CHOOSER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_APP_CHOOSER);
end;



{$ENDIF read_implementation}
