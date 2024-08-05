/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkAtSpiSocket, gtk_at_spi_socket, GTK, AT_SPI_SOCKET, GObject) }
type
  TGtkAtSpiSocket = record
  end;
  PGtkAtSpiSocket = ^TGtkAtSpiSocket;

  TGtkAtSpiSocketClass = record
    parent_class: TGObjectClass;
  end;
  PGtkAtSpiSocketClass = ^TGtkAtSpiSocketClass;

function gtk_at_spi_socket_get_type: TGType; cdecl; external gtklib;
function gtk_at_spi_socket_new(bus_name: PChar; object_path: PChar; error: PPGError): PGtkAccessible; cdecl; external gtklib;
function gtk_at_spi_socket_get_bus_name(self: PGtkAtSpiSocket): PChar; cdecl; external gtklib;
function gtk_at_spi_socket_get_object_path(self: PGtkAtSpiSocket): PChar; cdecl; external gtklib;

// === Konventiert am: 2-8-24 19:15:08 ===

function GTK_TYPE_AT_SPI_SOCKET: TGType;
function GTK_AT_SPI_SOCKET(obj: Pointer): PGtkAtSpiSocket;
function GTK_IS_AT_SPI_SOCKET(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_AT_SPI_SOCKET: TGType;
begin
  Result := gtk_at_spi_socket_get_type;
end;

function GTK_AT_SPI_SOCKET(obj: Pointer): PGtkAtSpiSocket;
begin
  Result := PGtkAtSpiSocket(g_type_check_instance_cast(obj, GTK_TYPE_AT_SPI_SOCKET));
end;

function GTK_IS_AT_SPI_SOCKET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_AT_SPI_SOCKET);
end;




{$ENDIF read_implementation}
