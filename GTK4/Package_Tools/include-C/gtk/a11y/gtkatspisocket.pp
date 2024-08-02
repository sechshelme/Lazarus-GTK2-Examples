
unit gtkatspisocket;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkatspisocket.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkatspisocket.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGError  = ^GError;
PGtkAccessible  = ^GtkAccessible;
PGtkAtSpiSocket  = ^GtkAtSpiSocket;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ gtkatspisocket.h: AT-SPI socket accessible object
 *
 * Copyright 2024 GNOME Foundation Inc.
 *           2024 Igalia S.L.
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, see <http://www.gnu.org/licenses/>.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTKATSPI_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/a11y/gtkatspi.h> can be included directly."}
{$endif}
{$include <gtk/gtkaccessible.h>}

{ was #define dname def_expr }
function GTK_TYPE_AT_SPI_SOCKET : longint; { return type might be wrong }

{G_DECLARE_FINAL_TYPE (GtkAtSpiSocket, gtk_at_spi_socket, GTK, AT_SPI_SOCKET, GObject) }
(* Const before type ignored *)
(* Const before type ignored *)
function gtk_at_spi_socket_new(bus_name:Pchar; object_path:Pchar; error:PPGError):PGtkAccessible;cdecl;external;
(* Const before type ignored *)
function gtk_at_spi_socket_get_bus_name(self:PGtkAtSpiSocket):Pchar;cdecl;external;
(* Const before type ignored *)
function gtk_at_spi_socket_get_object_path(self:PGtkAtSpiSocket):Pchar;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_AT_SPI_SOCKET : longint; { return type might be wrong }
  begin
    GTK_TYPE_AT_SPI_SOCKET:=gtk_at_spi_socket_get_type;
  end;


end.
