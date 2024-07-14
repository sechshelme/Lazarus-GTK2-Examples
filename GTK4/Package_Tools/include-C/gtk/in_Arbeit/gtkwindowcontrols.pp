
unit gtkwindowcontrols;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkwindowcontrols.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkwindowcontrols.h
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

{ was #define dname def_expr }
function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }

{ G_DECLARE_FINAL_TYPE (GtkWindowControls, gtk_window_controls, GTK, WINDOW_CONTROLS, GtkWidget) }
function gtk_window_controls_new(side:TGtkPackType):PGtkWidget;cdecl;external;
function gtk_window_controls_get_side(self:PGtkWindowControls):TGtkPackType;cdecl;external;
procedure gtk_window_controls_set_side(self:PGtkWindowControls; side:TGtkPackType);cdecl;external;
(* Const before type ignored *)
function gtk_window_controls_get_decoration_layout(self:PGtkWindowControls):Pchar;cdecl;external;
(* Const before type ignored *)
procedure gtk_window_controls_set_decoration_layout(self:PGtkWindowControls; layout:Pchar);cdecl;external;
function gtk_window_controls_get_empty(self:PGtkWindowControls):Tgboolean;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_CONTROLS:=gtk_window_controls_get_type;
  end;


end.
