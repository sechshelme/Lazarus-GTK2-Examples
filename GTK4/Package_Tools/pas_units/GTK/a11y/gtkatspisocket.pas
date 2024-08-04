unit gtkatspisocket;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


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

implementation

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




end.
