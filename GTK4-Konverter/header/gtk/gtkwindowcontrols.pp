
  Type
  Pchar  = ^char;
  PGtkWidget  = ^GtkWidget;
  PGtkWindowControls  = ^GtkWindowControls;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2020 Alexander Mikhaylenko <alexm@gnome.org>
   *
   * This program is free software; you can redistribute it and/or modify
   * it under the terms of the GNU Lesser General Public License as published by
   * the Free Software Foundation; either version 2 of the License, or (at your
   * option) any later version.
   *
   * This program is distributed in the hope that it will be useful, but
   * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
   * License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License
   * along with this program; if not, write to the Free Software Foundation,
   * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
    }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_window_controls_new(side:GtkPackType):^GtkWidget;

  { Zeile entfernt  }
  function gtk_window_controls_get_side(self:PGtkWindowControls):GtkPackType;

  { Zeile entfernt  }
  procedure gtk_window_controls_set_side(self:PGtkWindowControls; side:GtkPackType);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_window_controls_get_decoration_layout(self:PGtkWindowControls):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_window_controls_set_decoration_layout(self:PGtkWindowControls; layout:Pchar);

  { Zeile entfernt  }
  function gtk_window_controls_get_empty(self:PGtkWindowControls):gboolean;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }
    begin
      GTK_TYPE_WINDOW_CONTROLS:=gtk_window_controls_get_type;
    end;

  function gtk_window_controls_new(side:GtkPackType):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_window_controls_get_side(self:PGtkWindowControls):GtkPackType;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_controls_set_side(self:PGtkWindowControls; side:GtkPackType);
  begin
    { You must implement this function }
  end;
  function gtk_window_controls_get_decoration_layout(self:PGtkWindowControls):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_window_controls_set_decoration_layout(self:PGtkWindowControls; layout:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_window_controls_get_empty(self:PGtkWindowControls):gboolean;
  begin
    { You must implement this function }
  end;

