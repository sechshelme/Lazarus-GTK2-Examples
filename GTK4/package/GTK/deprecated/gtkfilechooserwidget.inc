/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkFileChooserWidget = record
  end;
  PGtkFileChooserWidget = ^TGtkFileChooserWidget;

function gtk_file_chooser_widget_get_type: TGType; cdecl; external gtklib;
function gtk_file_chooser_widget_new(action: TGtkFileChooserAction): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:42:52 ===

function GTK_TYPE_FILE_CHOOSER_WIDGET: TGType;
function GTK_FILE_CHOOSER_WIDGET(obj: Pointer): PGtkFileChooserWidget;
function GTK_IS_FILE_CHOOSER_WIDGET(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_FILE_CHOOSER_WIDGET: TGType;
begin
  GTK_TYPE_FILE_CHOOSER_WIDGET := gtk_file_chooser_widget_get_type;
end;

function GTK_FILE_CHOOSER_WIDGET(obj: Pointer): PGtkFileChooserWidget;
begin
  Result := PGtkFileChooserWidget(g_type_check_instance_cast(obj, GTK_TYPE_FILE_CHOOSER_WIDGET));
end;

function GTK_IS_FILE_CHOOSER_WIDGET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_CHOOSER_WIDGET);
end;



{$ENDIF read_implementation}
