unit gtkscrollbar;

interface

uses
  glib2, common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GTK - The GIMP Toolkit
 * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
{
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

type

function gtk_scrollbar_get_type:TGType;cdecl;external gtklib;
function gtk_scrollbar_new(orientation:TGtkOrientation; adjustment:PGtkAdjustment):PGtkWidget;cdecl;external gtklib;
procedure gtk_scrollbar_set_adjustment(self:PGtkScrollbar; adjustment:PGtkAdjustment);cdecl;external gtklib;
function gtk_scrollbar_get_adjustment(self:PGtkScrollbar):PGtkAdjustment;cdecl;external gtklib;

// === Konventiert am: 12-7-24 19:57:02 ===

function GTK_TYPE_SCROLLBAR : TGType;
function GTK_SCROLLBAR(obj : Pointer) : PGtkScrollbar;
function GTK_IS_SCROLLBAR(obj : Pointer) : Tgboolean;

implementation

function GTK_TYPE_SCROLLBAR : TGType;
  begin
    GTK_TYPE_SCROLLBAR:=gtk_scrollbar_get_type;
  end;

function GTK_SCROLLBAR(obj : Pointer) : PGtkScrollbar;
begin
  Result := PGtkScrollbar(g_type_check_instance_cast(obj, GTK_TYPE_SCROLLBAR));
end;

function GTK_IS_SCROLLBAR(obj : Pointer) : Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj,  GTK_TYPE_SCROLLBAR);
end;



end.
