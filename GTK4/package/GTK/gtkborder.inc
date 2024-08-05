/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkBorder = record
    left: Tgint16;
    right: Tgint16;
    top: Tgint16;
    bottom: Tgint16;
  end;
  PGtkBorder = ^TGtkBorder;


function gtk_border_get_type: TGType; cdecl; external gtklib;
function gtk_border_new: PGtkBorder; cdecl; external gtklib;
function gtk_border_copy(border_: PGtkBorder): PGtkBorder; cdecl; external gtklib;
procedure gtk_border_free(border_: PGtkBorder); cdecl; external gtklib;

// === Konventiert am: 11-7-24 22:33:35 ===

function GTK_TYPE_BORDER: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BORDER: TGType;
begin
  GTK_TYPE_BORDER := gtk_border_get_type;
end;


{$ENDIF read_implementation}
