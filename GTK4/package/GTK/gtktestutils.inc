/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

procedure gtk_test_init(argcp: Plongint; argvp: PPPchar; args: array of const); cdecl; external gtklib;
procedure gtk_test_init(argcp: Plongint; argvp: PPPchar); cdecl; external gtklib;
procedure gtk_test_register_all_types; cdecl; external gtklib;
function gtk_test_list_all_types(n_types: Pguint): PGType; cdecl; external gtklib;
procedure gtk_test_widget_wait_for_draw(widget: PGtkWidget); cdecl; external gtklib;

{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
