/* gtkatspisocket.h: AT-SPI socket accessible object
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
 */

#pragma once

#if !defined (__GTKATSPI_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/a11y/gtkatspi.h> can be included directly."
#endif

#include <gtk/gtkaccessible.h>



#define GTK_TYPE_AT_SPI_SOCKET (gtk_at_spi_socket_get_type())


//G_DECLARE_FINAL_TYPE (GtkAtSpiSocket, gtk_at_spi_socket, GTK, AT_SPI_SOCKET, GObject)


GtkAccessible * gtk_at_spi_socket_new (const char  *bus_name,
                                       const char  *object_path,
                                       GError     **error);


const char * gtk_at_spi_socket_get_bus_name (GtkAtSpiSocket *self);


const char * gtk_at_spi_socket_get_object_path (GtkAtSpiSocket *self);


