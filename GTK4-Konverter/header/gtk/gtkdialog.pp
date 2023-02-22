
  Type
  Pchar  = ^char;
  PGtkDialog  = ^GtkDialog;
  PGtkWidget  = ^GtkWidget;
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
{$ifndef __GTK_DIALOG_H__}
{$define __GTK_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
  {*
   * GtkDialogFlags:
   * @GTK_DIALOG_MODAL: Make the constructed dialog modal
   * @GTK_DIALOG_DESTROY_WITH_PARENT: Destroy the dialog when its parent is destroyed
   * @GTK_DIALOG_USE_HEADER_BAR: Create dialog with actions in header
   *   bar instead of action area
   *
   * Flags used to influence dialog construction.
    }

  type
    GtkDialogFlags = (GTK_DIALOG_MODAL := 1 shl 0,GTK_DIALOG_DESTROY_WITH_PARENT := 1 shl 1,
      GTK_DIALOG_USE_HEADER_BAR := 1 shl 2);
  {*
   * GtkResponseType:
   * @GTK_RESPONSE_NONE: Returned if an action widget has no response id,
   *   or if the dialog gets programmatically hidden or destroyed
   * @GTK_RESPONSE_REJECT: Generic response id, not used by GTK dialogs
   * @GTK_RESPONSE_ACCEPT: Generic response id, not used by GTK dialogs
   * @GTK_RESPONSE_DELETE_EVENT: Returned if the dialog is deleted
   * @GTK_RESPONSE_OK: Returned by OK buttons in GTK dialogs
   * @GTK_RESPONSE_CANCEL: Returned by Cancel buttons in GTK dialogs
   * @GTK_RESPONSE_CLOSE: Returned by Close buttons in GTK dialogs
   * @GTK_RESPONSE_YES: Returned by Yes buttons in GTK dialogs
   * @GTK_RESPONSE_NO: Returned by No buttons in GTK dialogs
   * @GTK_RESPONSE_APPLY: Returned by Apply buttons in GTK dialogs
   * @GTK_RESPONSE_HELP: Returned by Help buttons in GTK dialogs
   *
   * Predefined values for use as response ids in gtk_dialog_add_button().
   *
   * All predefined values are negative; GTK leaves values of 0 or greater for
   * application-defined response ids.
    }

    GtkResponseType = (GTK_RESPONSE_NONE := -(1),GTK_RESPONSE_REJECT := -(2),
      GTK_RESPONSE_ACCEPT := -(3),GTK_RESPONSE_DELETE_EVENT := -(4),
      GTK_RESPONSE_OK := -(5),GTK_RESPONSE_CANCEL := -(6),
      GTK_RESPONSE_CLOSE := -(7),GTK_RESPONSE_YES := -(8),
      GTK_RESPONSE_NO := -(9),GTK_RESPONSE_APPLY := -(10),
      GTK_RESPONSE_HELP := -(11));

  { was #define dname def_expr }
  function GTK_TYPE_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DIALOG_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DIALOG_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DIALOG_GET_CLASS(obj : longint) : longint;  


  type
    _GtkDialog = GtkDialog;
    _GtkDialogClass = GtkDialogClass;
    _GtkDialog = record
        parent_instance : GtkWindow;
      end;

  {*
   * GtkDialogClass:
   * @parent_class: The parent class.
   * @response: Signal emitted when an action widget is activated.
   * @close: Signal emitted when the user uses a keybinding to close the dialog.
    }
  {< public > }
  { Keybinding signals  }
  {< private > }
    _GtkDialogClass = record
        parent_class : GtkWindowClass;
        response : procedure (dialog:PGtkDialog; response_id:longint);cdecl;
        close : procedure (dialog:PGtkDialog);cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType      gtk_dialog_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_dialog_new:^GtkWidget;

(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                        ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : GtkWidget;

  procedure gtk_dialog_add_action_widget(dialog:PGtkDialog; child:PGtkWidget; response_id:longint);

(* Const before type ignored *)
  function gtk_dialog_add_button(dialog:PGtkDialog; button_text:Pchar; response_id:longint):^GtkWidget;

(* Const before type ignored *)
(* error 
                                         ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : pointer;

  procedure gtk_dialog_set_response_sensitive(dialog:PGtkDialog; response_id:longint; setting:gboolean);

  procedure gtk_dialog_set_default_response(dialog:PGtkDialog; response_id:longint);

  function gtk_dialog_get_widget_for_response(dialog:PGtkDialog; response_id:longint):^GtkWidget;

  function gtk_dialog_get_response_for_widget(dialog:PGtkDialog; widget:PGtkWidget):longint;

  { Emit response signal  }
  procedure gtk_dialog_response(dialog:PGtkDialog; response_id:longint);

  function gtk_dialog_get_content_area(dialog:PGtkDialog):^GtkWidget;

  function gtk_dialog_get_header_bar(dialog:PGtkDialog):^GtkWidget;

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkDialog, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkDialog, g_object_unref)
{$endif}
  { __GTK_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_DIALOG:=gtk_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DIALOG(obj : longint) : longint;
  begin
    GTK_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_DIALOG,GtkDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DIALOG_CLASS(klass : longint) : longint;
  begin
    GTK_DIALOG_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_DIALOG,GtkDialogClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DIALOG(obj : longint) : longint;
  begin
    GTK_IS_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_DIALOG);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DIALOG_CLASS(klass : longint) : longint;
  begin
    GTK_IS_DIALOG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_DIALOG);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DIALOG_GET_CLASS(obj : longint) : longint;
  begin
    GTK_DIALOG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_DIALOG,GtkDialogClass);
  end;

  function gtk_dialog_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_dialog_add_action_widget(dialog:PGtkDialog; child:PGtkWidget; response_id:longint);
  begin
    { You must implement this function }
  end;
  function gtk_dialog_add_button(dialog:PGtkDialog; button_text:Pchar; response_id:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_dialog_set_response_sensitive(dialog:PGtkDialog; response_id:longint; setting:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_dialog_set_default_response(dialog:PGtkDialog; response_id:longint);
  begin
    { You must implement this function }
  end;
  function gtk_dialog_get_widget_for_response(dialog:PGtkDialog; response_id:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_dialog_get_response_for_widget(dialog:PGtkDialog; widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_dialog_response(dialog:PGtkDialog; response_id:longint);
  begin
    { You must implement this function }
  end;
  function gtk_dialog_get_content_area(dialog:PGtkDialog):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_dialog_get_header_bar(dialog:PGtkDialog):PGtkWidget;
  begin
    { You must implement this function }
  end;

