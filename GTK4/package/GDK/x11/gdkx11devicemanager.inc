/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 04-08-2024   20:15                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkX11DeviceManagerXI2 = record
  end;
  PGdkX11DeviceManagerXI2 = ^TGdkX11DeviceManagerXI2;

  TGdkX11DeviceManagerXI2Class = record
  end;
  PGdkX11DeviceManagerXI2Class = ^TGdkX11DeviceManagerXI2Class;


function gdk_x11_device_manager_lookup(device_manager: PGdkX11DeviceManagerXI2; device_id: longint): PGdkDevice; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:26:55 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}
