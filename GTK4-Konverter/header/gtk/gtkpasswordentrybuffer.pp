
  Type
  PGtkEntryBuffer  = ^GtkEntryBuffer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkpasswordentrybufferprivate.h: Entry buffer using secure allocation
   *
   * Copyright 2020  GNOME Foundation
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
{$include <gtk/gtkentrybuffer.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_PASSWORD_ENTRY_BUFFER : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_password_entry_buffer_new:^GtkEntryBuffer;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_PASSWORD_ENTRY_BUFFER : longint; { return type might be wrong }
    begin
      GTK_TYPE_PASSWORD_ENTRY_BUFFER:=gtk_password_entry_buffer_get_type;
    end;

  function gtk_password_entry_buffer_new:PGtkEntryBuffer;
  begin
    { You must implement this function }
  end;

