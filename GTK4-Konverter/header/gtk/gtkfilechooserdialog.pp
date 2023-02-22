
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkfilechooserdialog.h: File selector dialog
   * Copyright (C) 2003, Red Hat, Inc.
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
{$ifndef __GTK_FILE_CHOOSER_DIALOG_H__}
{$define __GTK_FILE_CHOOSER_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkdialog.h>}
{$include <gtk/gtkfilechooser.h>}

  { was #define dname def_expr }
  function GTK_TYPE_FILE_CHOOSER_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FILE_CHOOSER_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FILE_CHOOSER_DIALOG(obj : longint) : longint;  


  type
    _GtkFileChooserDialog = GtkFileChooserDialog;
(* error 
GType      gtk_file_chooser_dialog_get_type         (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
						     ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)
 : GtkWidget;
{$endif}
  { __GTK_FILE_CHOOSER_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FILE_CHOOSER_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_FILE_CHOOSER_DIALOG:=gtk_file_chooser_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FILE_CHOOSER_DIALOG(obj : longint) : longint;
  begin
    GTK_FILE_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_CHOOSER_DIALOG,GtkFileChooserDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FILE_CHOOSER_DIALOG(obj : longint) : longint;
  begin
    GTK_IS_FILE_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_CHOOSER_DIALOG);
  end;


