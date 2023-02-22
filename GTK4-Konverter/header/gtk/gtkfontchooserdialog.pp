
  Type
  Pchar  = ^char;
  PGtkWidget  = ^GtkWidget;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2011      Alberto Ruiz <aruiz@gnome.org>
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
{$ifndef __GTK_FONT_CHOOSER_DIALOG_H__}
{$define __GTK_FONT_CHOOSER_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkdialog.h>}

  { was #define dname def_expr }
  function GTK_TYPE_FONT_CHOOSER_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_CHOOSER_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FONT_CHOOSER_DIALOG(obj : longint) : longint;  


  type
    _GtkFontChooserDialog = GtkFontChooserDialog;
(* error 
GType      gtk_font_chooser_dialog_get_type         (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_font_chooser_dialog_new(title:Pchar; parent:PGtkWindow):^GtkWidget;

{$endif}
  { __GTK_FONT_CHOOSER_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FONT_CHOOSER_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_FONT_CHOOSER_DIALOG:=gtk_font_chooser_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_CHOOSER_DIALOG(obj : longint) : longint;
  begin
    GTK_FONT_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_CHOOSER_DIALOG,GtkFontChooserDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FONT_CHOOSER_DIALOG(obj : longint) : longint;
  begin
    GTK_IS_FONT_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_CHOOSER_DIALOG);
  end;

  function gtk_font_chooser_dialog_new(title:Pchar; parent:PGtkWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;

