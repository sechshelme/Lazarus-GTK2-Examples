
  Type
  Pchar  = ^char;
  PGtkFileChooserNative  = ^GtkFileChooserNative;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkfilechoosernative.h: Native File selector dialog
   * Copyright (C) 2015, Red Hat, Inc.
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
{$ifndef __GTK_FILE_CHOOSER_NATIVE_H__}
{$define __GTK_FILE_CHOOSER_NATIVE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilechooser.h>}
{$include <gtk/gtknativedialog.h>}

  { was #define dname def_expr }
  function GTK_TYPE_FILE_CHOOSER_NATIVE : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkFileChooserNative, gtk_file_chooser_native, GTK, FILE_CHOOSER_NATIVE, GtkNativeDialog)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkFileChooserNative, gtk_file_chooser_native, GTK, FILE_CHOOSER_NATIVE, GtkNativeDialog)
(* error 
                                                   GtkWindow            *parent,
(* error 
                                                   GtkFileChooserAction  action,
(* error 
                                                   const char           *accept_label,
(* error 
                                                   const char           *cancel_label);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
  function gtk_file_chooser_native_get_accept_label(self:PGtkFileChooserNative):^char;

(* Const before type ignored *)
  procedure gtk_file_chooser_native_set_accept_label(self:PGtkFileChooserNative; accept_label:Pchar);

(* Const before type ignored *)
  function gtk_file_chooser_native_get_cancel_label(self:PGtkFileChooserNative):^char;

(* Const before type ignored *)
  procedure gtk_file_chooser_native_set_cancel_label(self:PGtkFileChooserNative; cancel_label:Pchar);

{$endif}
  { __GTK_FILE_CHOOSER_NATIVE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FILE_CHOOSER_NATIVE : longint; { return type might be wrong }
    begin
      GTK_TYPE_FILE_CHOOSER_NATIVE:=gtk_file_chooser_native_get_type;
    end;

  function gtk_file_chooser_native_get_accept_label(self:PGtkFileChooserNative):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_native_set_accept_label(self:PGtkFileChooserNative; accept_label:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_native_get_cancel_label(self:PGtkFileChooserNative):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_native_set_cancel_label(self:PGtkFileChooserNative; cancel_label:Pchar);
  begin
    { You must implement this function }
  end;

