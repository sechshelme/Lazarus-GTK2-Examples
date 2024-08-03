
unit gtkpagesetupunixdialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkpagesetupunixdialog.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkpagesetupunixdialog.h
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
PGtkPageSetup  = ^GtkPageSetup;
PGtkPageSetupUnixDialog  = ^GtkPageSetupUnixDialog;
PGtkPrintSettings  = ^GtkPrintSettings;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GtkPageSetupUnixDialog
 * Copyright (C) 2006 Alexander Larsson <alexl@redhat.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
  }
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <gtk/gtk.h>}

{ was #define dname def_expr }
function GTK_TYPE_PAGE_SETUP_UNIX_DIALOG : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;

type

function gtk_page_setup_unix_dialog_get_type:TGType;cdecl;external;
(* Const before type ignored *)
function gtk_page_setup_unix_dialog_new(title:Pchar; parent:PGtkWindow):PGtkWidget;cdecl;external;
procedure gtk_page_setup_unix_dialog_set_page_setup(dialog:PGtkPageSetupUnixDialog; page_setup:PGtkPageSetup);cdecl;external;
function gtk_page_setup_unix_dialog_get_page_setup(dialog:PGtkPageSetupUnixDialog):PGtkPageSetup;cdecl;external;
procedure gtk_page_setup_unix_dialog_set_print_settings(dialog:PGtkPageSetupUnixDialog; print_settings:PGtkPrintSettings);cdecl;external;
function gtk_page_setup_unix_dialog_get_print_settings(dialog:PGtkPageSetupUnixDialog):PGtkPrintSettings;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_PAGE_SETUP_UNIX_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAGE_SETUP_UNIX_DIALOG:=gtk_page_setup_unix_dialog_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;
begin
  GTK_PAGE_SETUP_UNIX_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PAGE_SETUP_UNIX_DIALOG,GtkPageSetupUnixDialog);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj : longint) : longint;
begin
  GTK_IS_PAGE_SETUP_UNIX_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PAGE_SETUP_UNIX_DIALOG);
end;


end.
