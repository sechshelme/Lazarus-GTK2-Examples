
unit gtkactionbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkactionbar.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkactionbar.h
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
PGtkActionBar  = ^GtkActionBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright (c) 2013 - 2014 Red Hat, Inc.
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
 *
  }
{$ifndef __GTK_ACTION_BAR_H__}
{$define __GTK_ACTION_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{ // // //  }

{ was #define dname def_expr }
function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_ACTION_BAR(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_ACTION_BAR(obj : longint) : longint;

type

function gtk_action_bar_get_type:TGType;cdecl;external;
function gtk_action_bar_new:PGtkWidget;cdecl;external;
function gtk_action_bar_get_center_widget(action_bar:PGtkActionBar):PGtkWidget;cdecl;external;
procedure gtk_action_bar_set_center_widget(action_bar:PGtkActionBar; center_widget:PGtkWidget);cdecl;external;
procedure gtk_action_bar_pack_start(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external;
procedure gtk_action_bar_pack_end(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external;
procedure gtk_action_bar_remove(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external;
procedure gtk_action_bar_set_revealed(action_bar:PGtkActionBar; revealed:Tgboolean);cdecl;external;
function gtk_action_bar_get_revealed(action_bar:PGtkActionBar):Tgboolean;cdecl;external;
{ // // //  }
{$endif}
{ __GTK_ACTION_BAR_H__  }

implementation

{ was #define dname def_expr }
function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTION_BAR:=gtk_action_bar_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_ACTION_BAR(obj : longint) : longint;
begin
  GTK_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ACTION_BAR,GtkActionBar);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_ACTION_BAR(obj : longint) : longint;
begin
  GTK_IS_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ACTION_BAR);
end;


end.
