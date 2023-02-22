
  Type
  Pchar  = ^char;
  PGtkMessageDialog  = ^GtkMessageDialog;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2000 Red Hat, Inc.
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
  {
   * Modified by the GTK+ Team and others 1997-2003.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_MESSAGE_DIALOG_H__}
{$define __GTK_MESSAGE_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkdialog.h>}
{$include <gtk/gtkenums.h>}

  { was #define dname def_expr }
  function GTK_TYPE_MESSAGE_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MESSAGE_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_MESSAGE_DIALOG(obj : longint) : longint;  


  type
    _GtkMessageDialog = GtkMessageDialog;
    _GtkMessageDialogClass = GtkMessageDialogClass;
    _GtkMessageDialog = record
        parent_instance : GtkDialog;
      end;

  {*
   * GtkButtonsType:
   * @GTK_BUTTONS_NONE: no buttons at all
   * @GTK_BUTTONS_OK: an OK button
   * @GTK_BUTTONS_CLOSE: a Close button
   * @GTK_BUTTONS_CANCEL: a Cancel button
   * @GTK_BUTTONS_YES_NO: Yes and No buttons
   * @GTK_BUTTONS_OK_CANCEL: OK and Cancel buttons
   *
   * Prebuilt sets of buttons for `GtkDialog`.
   *
   * If none of these choices are appropriate, simply use
   * %GTK_BUTTONS_NONE and call [method@Gtk.Dialog.add_buttons].
   *
   * > Please note that %GTK_BUTTONS_OK, %GTK_BUTTONS_YES_NO
   * > and %GTK_BUTTONS_OK_CANCEL are discouraged by the
   * > [GNOME Human Interface Guidelines](http://library.gnome.org/devel/hig-book/stable/).
    }

    GtkButtonsType = (GTK_BUTTONS_NONE,GTK_BUTTONS_OK,GTK_BUTTONS_CLOSE,
      GTK_BUTTONS_CANCEL,GTK_BUTTONS_YES_NO,
      GTK_BUTTONS_OK_CANCEL);
(* error 
GType      gtk_message_dialog_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)
(* error 
                                        ...) G_GNUC_PRINTF (5, 6);
(* error 
                                        ...) G_GNUC_PRINTF (5, 6);
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
(* error 
                                                 ...) G_GNUC_PRINTF (5, 6);
(* error 
                                                 ...) G_GNUC_PRINTF (5, 6);
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)

  procedure gtk_message_dialog_set_markup(message_dialog:PGtkMessageDialog; str:Pchar);

(* Const before type ignored *)
(* error 
                                                     ...) G_GNUC_PRINTF (2, 3);
(* error 
                                                     ...) G_GNUC_PRINTF (2, 3);
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
(* error 
                                                       ...) G_GNUC_PRINTF (2, 3);
(* error 
                                                       ...) G_GNUC_PRINTF (2, 3);
 in declarator_list *)
 in declarator_list *)
  function gtk_message_dialog_get_message_area(message_dialog:PGtkMessageDialog):^GtkWidget;

{$endif}
  { __GTK_MESSAGE_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MESSAGE_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_MESSAGE_DIALOG:=gtk_message_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MESSAGE_DIALOG(obj : longint) : longint;
  begin
    GTK_MESSAGE_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_MESSAGE_DIALOG,GtkMessageDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_MESSAGE_DIALOG(obj : longint) : longint;
  begin
    GTK_IS_MESSAGE_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_MESSAGE_DIALOG);
  end;

  procedure gtk_message_dialog_set_markup(message_dialog:PGtkMessageDialog; str:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_message_dialog_get_message_area(message_dialog:PGtkMessageDialog):PGtkWidget;
  begin
    { You must implement this function }
  end;

