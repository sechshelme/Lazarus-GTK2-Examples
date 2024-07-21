
unit gtkshortcutssection;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkshortcutssection.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkshortcutssection.h
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
PGtkShortcutsGroup  = ^GtkShortcutsGroup;
PGtkShortcutsSection  = ^GtkShortcutsSection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ gtkshortcutssection.h
 *
 * Copyright (C) 2015 Christian Hergert <christian@hergert.me>
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Library General Public License as
 *  published by the Free Software Foundation; either version 2 of the
 *  License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Library General Public License for more details.
 *
 *  You should have received a copy of the GNU Library General Public
 *  License along with this library. If not, see <http://www.gnu.org/licenses/>.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkshortcutsgroup.h>}

{ was #define dname def_expr }
function GTK_TYPE_SHORTCUTS_SECTION : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUTS_SECTION(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_SHORTCUTS_SECTION(obj : longint) : longint;

type

function gtk_shortcuts_section_get_type:TGType;cdecl;external;
procedure gtk_shortcuts_section_add_group(self:PGtkShortcutsSection; group:PGtkShortcutsGroup);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_SHORTCUTS_SECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_SECTION:=gtk_shortcuts_section_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_SHORTCUTS_SECTION(obj : longint) : longint;
begin
  GTK_SHORTCUTS_SECTION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_SECTION,GtkShortcutsSection);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_SHORTCUTS_SECTION(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_SECTION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_SECTION);
end;


end.
