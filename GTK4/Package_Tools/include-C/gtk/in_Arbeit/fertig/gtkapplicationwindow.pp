
unit gtkapplicationwindow;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkapplicationwindow.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkapplicationwindow.h
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
PGtkApplication  = ^GtkApplication;
PGtkApplicationWindow  = ^GtkApplicationWindow;
PGtkApplicationWindowClass  = ^GtkApplicationWindowClass;
PGtkShortcutsWindow  = ^GtkShortcutsWindow;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2011 Canonical Limited
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the licence, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Author: Ryan Lortie <desrt@desrt.ca>
  }
{$ifndef __GTK_APPLICATION_WINDOW_H__}
{$define __GTK_APPLICATION_WINDOW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
{$include <gtk/gtkshortcutswindow.h>}
{ // // //  }

{ was #define dname def_expr }
function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_WINDOW(inst : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;

type
  PGtkApplicationWindow = ^TGtkApplicationWindow;
  TGtkApplicationWindow = record
      parent_instance : TGtkWindow;
    end;

{*
 * GtkApplicationWindowClass:
 * @parent_class: The parent class.
  }
{< private > }
  PGtkApplicationWindowClass = ^TGtkApplicationWindowClass;
  TGtkApplicationWindowClass = record
      parent_class : TGtkWindowClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_application_window_get_type:TGType;cdecl;external;
function gtk_application_window_new(application:PGtkApplication):PGtkWidget;cdecl;external;
procedure gtk_application_window_set_show_menubar(window:PGtkApplicationWindow; show_menubar:Tgboolean);cdecl;external;
function gtk_application_window_get_show_menubar(window:PGtkApplicationWindow):Tgboolean;cdecl;external;
function gtk_application_window_get_id(window:PGtkApplicationWindow):Tguint;cdecl;external;
procedure gtk_application_window_set_help_overlay(window:PGtkApplicationWindow; help_overlay:PGtkShortcutsWindow);cdecl;external;
function gtk_application_window_get_help_overlay(window:PGtkApplicationWindow):PGtkShortcutsWindow;cdecl;external;
{ // // //  }
{$endif}
{ __GTK_APPLICATION_WINDOW_H__  }

implementation

{ was #define dname def_expr }
function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION_WINDOW:=gtk_application_window_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_WINDOW(inst : longint) : longint;
begin
  GTK_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindow);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
begin
  GTK_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(_class,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;
begin
  GTK_IS_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_APPLICATION_WINDOW);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
begin
  GTK_IS_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(_class,GTK_TYPE_APPLICATION_WINDOW);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;
begin
  GTK_APPLICATION_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
end;


end.
