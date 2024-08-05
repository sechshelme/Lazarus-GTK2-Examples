/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

function gdk_content_provider_new_for_value(Value: PGValue): PGdkContentProvider; cdecl; external gtklib;
function gdk_content_provider_new_typed(_type: TGType; args: array of const): PGdkContentProvider; cdecl; external gtklib;
function gdk_content_provider_new_typed(_type: TGType): PGdkContentProvider; cdecl; external gtklib;
function gdk_content_provider_new_union(providers: PPGdkContentProvider; n_providers: Tgsize): PGdkContentProvider; cdecl; external gtklib;
function gdk_content_provider_new_for_bytes(mime_type: PChar; bytes: PGBytes): PGdkContentProvider; cdecl; external gtklib;

// === Konventiert am: 30-7-24 19:11:08 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
