
unit gtkexpander;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkexpander.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkexpander.h
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
PGtkExpander  = ^GtkExpander;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GTK - The GIMP Toolkit
 *
 * Copyright (C) 2003 Sun Microsystems, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors:
 *      Mark McLoughlin <mark@skynet.ie>
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

{ was #define dname def_expr }
function GTK_TYPE_EXPANDER : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_EXPANDER(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_EXPANDER(obj : longint) : longint;

type

function gtk_expander_get_type:TGType;cdecl;external;
(* Const before type ignored *)
function gtk_expander_new(_label:Pchar):PGtkWidget;cdecl;external;
(* Const before type ignored *)
function gtk_expander_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external;
procedure gtk_expander_set_expanded(expander:PGtkExpander; expanded:Tgboolean);cdecl;external;
function gtk_expander_get_expanded(expander:PGtkExpander):Tgboolean;cdecl;external;
(* Const before type ignored *)
procedure gtk_expander_set_label(expander:PGtkExpander; _label:Pchar);cdecl;external;
(* Const before type ignored *)
function gtk_expander_get_label(expander:PGtkExpander):Pchar;cdecl;external;
procedure gtk_expander_set_use_underline(expander:PGtkExpander; use_underline:Tgboolean);cdecl;external;
function gtk_expander_get_use_underline(expander:PGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_use_markup(expander:PGtkExpander; use_markup:Tgboolean);cdecl;external;
function gtk_expander_get_use_markup(expander:PGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_label_widget(expander:PGtkExpander; label_widget:PGtkWidget);cdecl;external;
function gtk_expander_get_label_widget(expander:PGtkExpander):PGtkWidget;cdecl;external;
procedure gtk_expander_set_resize_toplevel(expander:PGtkExpander; resize_toplevel:Tgboolean);cdecl;external;
function gtk_expander_get_resize_toplevel(expander:PGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_child(expander:PGtkExpander; child:PGtkWidget);cdecl;external;
function gtk_expander_get_child(expander:PGtkExpander):PGtkWidget;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_EXPANDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPANDER:=gtk_expander_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_EXPANDER(obj : longint) : longint;
begin
  GTK_EXPANDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPANDER,GtkExpander);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_EXPANDER(obj : longint) : longint;
begin
  GTK_IS_EXPANDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPANDER);
end;


end.
