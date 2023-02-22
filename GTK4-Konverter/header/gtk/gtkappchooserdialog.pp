
  Type
  Pchar  = ^char;
  PGFile  = ^GFile;
  PGtkAppChooserDialog  = ^GtkAppChooserDialog;
  PGtkWidget  = ^GtkWidget;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gtkappchooserdialog.h: an app-chooser dialog
   *
   * Copyright (C) 2004 Novell, Inc.
   * Copyright (C) 2007, 2010 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public License as
   * published by the Free Software Foundation; either version 2 of the
   * License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Dave Camp <dave@novell.com>
   *          Alexander Larsson <alexl@redhat.com>
   *          Cosimo Cecchi <ccecchi@redhat.com>
    }
{$ifndef __GTK_APP_CHOOSER_DIALOG_H__}
{$define __GTK_APP_CHOOSER_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkdialog.h>}
{$include <gio/gio.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_APP_CHOOSER_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APP_CHOOSER_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APP_CHOOSER_DIALOG(obj : longint) : longint;  


  type
    _GtkAppChooserDialog = GtkAppChooserDialog;
  { Zeile entfernt  }

  function gtk_app_chooser_dialog_get_type:GType;

  { Zeile entfernt  }
  function gtk_app_chooser_dialog_new(parent:PGtkWindow; flags:GtkDialogFlags; file:PGFile):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_app_chooser_dialog_new_for_content_type(parent:PGtkWindow; flags:GtkDialogFlags; content_type:Pchar):^GtkWidget;

  { Zeile entfernt  }
  function gtk_app_chooser_dialog_get_widget(self:PGtkAppChooserDialog):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_app_chooser_dialog_set_heading(self:PGtkAppChooserDialog; heading:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_app_chooser_dialog_get_heading(self:PGtkAppChooserDialog):^char;

  { Zeile entfernt  }
{$endif}
  { __GTK_APP_CHOOSER_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_APP_CHOOSER_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_APP_CHOOSER_DIALOG:=gtk_app_chooser_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APP_CHOOSER_DIALOG(obj : longint) : longint;
  begin
    GTK_APP_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_DIALOG,GtkAppChooserDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APP_CHOOSER_DIALOG(obj : longint) : longint;
  begin
    GTK_IS_APP_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_DIALOG);
  end;

  function gtk_app_chooser_dialog_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_dialog_new(parent:PGtkWindow; flags:GtkDialogFlags; file:PGFile):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_dialog_new_for_content_type(parent:PGtkWindow; flags:GtkDialogFlags; content_type:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_dialog_get_widget(self:PGtkAppChooserDialog):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_dialog_set_heading(self:PGtkAppChooserDialog; heading:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_dialog_get_heading(self:PGtkAppChooserDialog):Pchar;
  begin
    { You must implement this function }
  end;

