
unit gtkscrollinfo;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkscrollinfo.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkscrollinfo.h
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
PGtkScrollInfo  = ^GtkScrollInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GTK - The GIMP Toolkit
 * Copyright (C) 2023 Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypes.h>}
{$include <graphene.h>}

{ was #define dname def_expr }
function GTK_TYPE_SCROLL_INFO : longint; { return type might be wrong }

function gtk_scroll_info_get_type:TGType;cdecl;external;
function gtk_scroll_info_new:PGtkScrollInfo;cdecl;external;
function gtk_scroll_info_ref(self:PGtkScrollInfo):PGtkScrollInfo;cdecl;external;
procedure gtk_scroll_info_unref(self:PGtkScrollInfo);cdecl;external;
procedure gtk_scroll_info_set_enable_horizontal(self:PGtkScrollInfo; horizontal:Tgboolean);cdecl;external;
function gtk_scroll_info_get_enable_horizontal(self:PGtkScrollInfo):Tgboolean;cdecl;external;
procedure gtk_scroll_info_set_enable_vertical(self:PGtkScrollInfo; vertical:Tgboolean);cdecl;external;
function gtk_scroll_info_get_enable_vertical(self:PGtkScrollInfo):Tgboolean;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_SCROLL_INFO : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLL_INFO:=gtk_scroll_info_get_type;
  end;


end.
