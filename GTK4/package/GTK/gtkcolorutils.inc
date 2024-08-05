/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


procedure gtk_hsv_to_rgb(h: single; s: single; v: single; r: Psingle; g: Psingle; b: Psingle); cdecl; external gtklib;
procedure gtk_rgb_to_hsv(r: single; g: single; b: single; h: Psingle; s: Psingle; v: Psingle); cdecl; external gtklib;

{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
