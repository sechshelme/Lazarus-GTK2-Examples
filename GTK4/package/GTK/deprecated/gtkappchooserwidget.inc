/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkAppChooserWidget = record
  end;
  PGtkAppChooserWidget = ^TGtkAppChooserWidget;

function gtk_app_chooser_widget_get_type: TGType; cdecl; external gtklib;
function gtk_app_chooser_widget_new(content_type: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_app_chooser_widget_set_show_default(self: PGtkAppChooserWidget; setting: Tgboolean); cdecl; external gtklib;
function gtk_app_chooser_widget_get_show_default(self: PGtkAppChooserWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_app_chooser_widget_set_show_recommended(self: PGtkAppChooserWidget; setting: Tgboolean); cdecl; external gtklib;
function gtk_app_chooser_widget_get_show_recommended(self: PGtkAppChooserWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_app_chooser_widget_set_show_fallback(self: PGtkAppChooserWidget; setting: Tgboolean); cdecl; external gtklib;
function gtk_app_chooser_widget_get_show_fallback(self: PGtkAppChooserWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_app_chooser_widget_set_show_other(self: PGtkAppChooserWidget; setting: Tgboolean); cdecl; external gtklib;
function gtk_app_chooser_widget_get_show_other(self: PGtkAppChooserWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_app_chooser_widget_set_show_all(self: PGtkAppChooserWidget; setting: Tgboolean); cdecl; external gtklib;
function gtk_app_chooser_widget_get_show_all(self: PGtkAppChooserWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_app_chooser_widget_set_default_text(self: PGtkAppChooserWidget; Text: PChar); cdecl; external gtklib;
function gtk_app_chooser_widget_get_default_text(self: PGtkAppChooserWidget): PChar; cdecl; external gtklib;

// === Konventiert am: 29-7-24 14:55:56 ===

function GTK_TYPE_APP_CHOOSER_WIDGET: TGType;
function GTK_APP_CHOOSER_WIDGET(obj: Pointer): PGtkAppChooserWidget;
function GTK_IS_APP_CHOOSER_WIDGET(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_APP_CHOOSER_WIDGET: TGType;
begin
  GTK_TYPE_APP_CHOOSER_WIDGET := gtk_app_chooser_widget_get_type;
end;

function GTK_APP_CHOOSER_WIDGET(obj: Pointer): PGtkAppChooserWidget;
begin
  Result := PGtkAppChooserWidget(g_type_check_instance_cast(obj, GTK_TYPE_APP_CHOOSER_WIDGET));
end;

function GTK_IS_APP_CHOOSER_WIDGET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_APP_CHOOSER_WIDGET);
end;



{$ENDIF read_implementation}
