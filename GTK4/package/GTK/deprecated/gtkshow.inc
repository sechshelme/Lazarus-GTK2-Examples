/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

procedure gtk_show_uri_full(parent: PGtkWindow; uri: PChar; timestamp: Tguint32; cancellable: PGCancellable; callback: TGAsyncReadyCallback;
  user_data: Tgpointer); cdecl; external gtklib;
function gtk_show_uri_full_finish(parent: PGtkWindow; Result: PGAsyncResult; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gtk_show_uri(parent: PGtkWindow; uri: PChar; timestamp: Tguint32); cdecl; external gtklib;

{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
