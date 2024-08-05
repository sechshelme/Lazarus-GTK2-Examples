/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  PGtkDialogError = ^TGtkDialogError;
  TGtkDialogError = longint;

const
  GTK_DIALOG_ERROR_FAILED = 0;
  GTK_DIALOG_ERROR_CANCELLED = 1;
  GTK_DIALOG_ERROR_DISMISSED = 2;

function gtk_dialog_error_quark: TGQuark; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:50:29 ===

function GTK_DIALOG_ERROR: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_DIALOG_ERROR: TGType;
begin
  GTK_DIALOG_ERROR := gtk_dialog_error_quark;
end;



{$ENDIF read_implementation}
