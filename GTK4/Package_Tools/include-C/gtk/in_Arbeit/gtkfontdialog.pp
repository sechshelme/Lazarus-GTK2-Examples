
unit gtkfontdialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkfontdialog.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkfontdialog.h
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
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGError  = ^GError;
PGtkFilter  = ^GtkFilter;
PGtkFontDialog  = ^GtkFontDialog;
PGtkWindow  = ^GtkWindow;
PPangoFontDescription  = ^PangoFontDescription;
PPangoFontFace  = ^PangoFontFace;
PPangoFontFamily  = ^PangoFontFamily;
PPangoFontMap  = ^PangoFontMap;
PPangoLanguage  = ^PangoLanguage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{ GTK - The GIMP Toolkit
 *
 * Copyright (C) 2022 Red Hat, Inc.
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
{$include <gtk/gtkwindow.h>}
{$include <gtk/gtkfilter.h>}

{ was #define dname def_expr }
function GTK_TYPE_FONT_DIALOG : longint; { return type might be wrong }

{G_DECLARE_FINAL_TYPE (GtkFontDialog, gtk_font_dialog, GTK, FONT_DIALOG, GObject) }
function gtk_font_dialog_new:PGtkFontDialog;cdecl;external;
(* Const before type ignored *)
function gtk_font_dialog_get_title(self:PGtkFontDialog):Pchar;cdecl;external;
(* Const before type ignored *)
procedure gtk_font_dialog_set_title(self:PGtkFontDialog; title:Pchar);cdecl;external;
function gtk_font_dialog_get_modal(self:PGtkFontDialog):Tgboolean;cdecl;external;
procedure gtk_font_dialog_set_modal(self:PGtkFontDialog; modal:Tgboolean);cdecl;external;
function gtk_font_dialog_get_language(self:PGtkFontDialog):PPangoLanguage;cdecl;external;
procedure gtk_font_dialog_set_language(self:PGtkFontDialog; language:PPangoLanguage);cdecl;external;
function gtk_font_dialog_get_font_map(self:PGtkFontDialog):PPangoFontMap;cdecl;external;
procedure gtk_font_dialog_set_font_map(self:PGtkFontDialog; fontmap:PPangoFontMap);cdecl;external;
function gtk_font_dialog_get_filter(self:PGtkFontDialog):PGtkFilter;cdecl;external;
procedure gtk_font_dialog_set_filter(self:PGtkFontDialog; filter:PGtkFilter);cdecl;external;
procedure gtk_font_dialog_choose_family(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontFamily; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gtk_font_dialog_choose_family_finish(self:PGtkFontDialog; result:PGAsyncResult; error:PPGError):PPangoFontFamily;cdecl;external;
procedure gtk_font_dialog_choose_face(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontFace; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gtk_font_dialog_choose_face_finish(self:PGtkFontDialog; result:PGAsyncResult; error:PPGError):PPangoFontFace;cdecl;external;
procedure gtk_font_dialog_choose_font(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontDescription; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gtk_font_dialog_choose_font_finish(self:PGtkFontDialog; result:PGAsyncResult; error:PPGError):PPangoFontDescription;cdecl;external;
procedure gtk_font_dialog_choose_font_and_features(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontDescription; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gtk_font_dialog_choose_font_and_features_finish(self:PGtkFontDialog; result:PGAsyncResult; font_desc:PPPangoFontDescription; font_features:PPchar; language:PPPangoLanguage; 
           error:PPGError):Tgboolean;cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_FONT_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_DIALOG:=gtk_font_dialog_get_type;
  end;


end.
