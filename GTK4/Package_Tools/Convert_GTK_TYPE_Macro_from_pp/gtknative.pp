
unit gtknative;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtknative.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtknative.h
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
Pdouble  = ^double;
PGdkSurface  = ^GdkSurface;
PGskRenderer  = ^GskRenderer;
PGtkNative  = ^GtkNative;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2019 Red Hat, Inc.
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
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Matthias Clasen <mclasen@redhat.com>
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkwidget.h>}

{ was #define dname def_expr }
function GTK_TYPE_NATIVE : longint; { return type might be wrong }

{G_DECLARE_INTERFACE (GtkNative, gtk_native, GTK, NATIVE, GtkWidget) }
procedure gtk_native_realize(self:PGtkNative);cdecl;external;
procedure gtk_native_unrealize(self:PGtkNative);cdecl;external;
function gtk_native_get_for_surface(surface:PGdkSurface):PGtkNative;cdecl;external;
function gtk_native_get_surface(self:PGtkNative):PGdkSurface;cdecl;external;
function gtk_native_get_renderer(self:PGtkNative):PGskRenderer;cdecl;external;
procedure gtk_native_get_surface_transform(self:PGtkNative; x:Pdouble; y:Pdouble);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_NATIVE : longint; { return type might be wrong }
  begin
    GTK_TYPE_NATIVE:=gtk_native_get_type;
  end;


end.
