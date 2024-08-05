/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkColorDialogButton, gtk_color_dialog_button, GTK, COLOR_DIALOG_BUTTON, GtkWidget) }
type
  TGtkColorDialogButton = record
  end;
  PGtkColorDialogButton = ^TGtkColorDialogButton;

  TGtkColorDialogButtonClass = record
    parent_class: TGtkWidgetClass;
  end;
  PGtkColorDialogButtonClass = ^TGtkColorDialogButtonClass;

function gtk_color_dialog_button_get_type: TGType; cdecl; external gtklib;
function gtk_color_dialog_button_new(dialog: PGtkColorDialog): PGtkWidget; cdecl; external gtklib;
function gtk_color_dialog_button_get_dialog(self: PGtkColorDialogButton): PGtkColorDialog; cdecl; external gtklib;
procedure gtk_color_dialog_button_set_dialog(self: PGtkColorDialogButton; dialog: PGtkColorDialog); cdecl; external gtklib;
function gtk_color_dialog_button_get_rgba(self: PGtkColorDialogButton): PGdkRGBA; cdecl; external gtklib;
procedure gtk_color_dialog_button_set_rgba(self: PGtkColorDialogButton; color: PGdkRGBA); cdecl; external gtklib;

// === Konventiert am: 17-7-24 16:19:04 ===

function GTK_TYPE_COLOR_DIALOG_BUTTON: TGType;
function GTK_COLOR_DIALOG_BUTTON(obj: Pointer): PGtkColorDialogButton;
function GTK_IS_COLOR_DIALOG_BUTTON(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_COLOR_DIALOG_BUTTON: TGType;
begin
  Result := gtk_color_dialog_button_get_type;
end;

function GTK_COLOR_DIALOG_BUTTON(obj: Pointer): PGtkColorDialogButton;
begin
  Result := PGtkColorDialogButton(g_type_check_instance_cast(obj, GTK_TYPE_COLOR_DIALOG_BUTTON));
end;

function GTK_IS_COLOR_DIALOG_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLOR_DIALOG_BUTTON);
end;




{$ENDIF read_implementation}
