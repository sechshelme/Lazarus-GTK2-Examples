
  Type
  Pchar  = ^char;
  PGtkAppChooserWidget  = ^GtkAppChooserWidget;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gtkappchooserwidget.h: an app-chooser widget
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
{$ifndef __GTK_APP_CHOOSER_WIDGET_H__}
{$define __GTK_APP_CHOOSER_WIDGET_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gio/gio.h>}

  { was #define dname def_expr }
  function GTK_TYPE_APP_CHOOSER_WIDGET : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APP_CHOOSER_WIDGET(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APP_CHOOSER_WIDGET(obj : longint) : longint;  


  type
    _GtkAppChooserWidget = GtkAppChooserWidget;
(* error 
GType         gtk_app_chooser_widget_get_type             (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_app_chooser_widget_new(content_type:Pchar):^GtkWidget;

  procedure gtk_app_chooser_widget_set_show_default(self:PGtkAppChooserWidget; setting:gboolean);

  function gtk_app_chooser_widget_get_show_default(self:PGtkAppChooserWidget):gboolean;

  procedure gtk_app_chooser_widget_set_show_recommended(self:PGtkAppChooserWidget; setting:gboolean);

  function gtk_app_chooser_widget_get_show_recommended(self:PGtkAppChooserWidget):gboolean;

  procedure gtk_app_chooser_widget_set_show_fallback(self:PGtkAppChooserWidget; setting:gboolean);

  function gtk_app_chooser_widget_get_show_fallback(self:PGtkAppChooserWidget):gboolean;

  procedure gtk_app_chooser_widget_set_show_other(self:PGtkAppChooserWidget; setting:gboolean);

  function gtk_app_chooser_widget_get_show_other(self:PGtkAppChooserWidget):gboolean;

  procedure gtk_app_chooser_widget_set_show_all(self:PGtkAppChooserWidget; setting:gboolean);

  function gtk_app_chooser_widget_get_show_all(self:PGtkAppChooserWidget):gboolean;

(* Const before type ignored *)
  procedure gtk_app_chooser_widget_set_default_text(self:PGtkAppChooserWidget; text:Pchar);

(* Const before type ignored *)
  function gtk_app_chooser_widget_get_default_text(self:PGtkAppChooserWidget):^char;

{$endif}
  { __GTK_APP_CHOOSER_WIDGET_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_APP_CHOOSER_WIDGET : longint; { return type might be wrong }
    begin
      GTK_TYPE_APP_CHOOSER_WIDGET:=gtk_app_chooser_widget_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APP_CHOOSER_WIDGET(obj : longint) : longint;
  begin
    GTK_APP_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_WIDGET,GtkAppChooserWidget);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APP_CHOOSER_WIDGET(obj : longint) : longint;
  begin
    GTK_IS_APP_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_WIDGET);
  end;

  function gtk_app_chooser_widget_new(content_type:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_widget_set_show_default(self:PGtkAppChooserWidget; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_widget_get_show_default(self:PGtkAppChooserWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_widget_set_show_recommended(self:PGtkAppChooserWidget; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_widget_get_show_recommended(self:PGtkAppChooserWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_widget_set_show_fallback(self:PGtkAppChooserWidget; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_widget_get_show_fallback(self:PGtkAppChooserWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_widget_set_show_other(self:PGtkAppChooserWidget; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_widget_get_show_other(self:PGtkAppChooserWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_widget_set_show_all(self:PGtkAppChooserWidget; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_widget_get_show_all(self:PGtkAppChooserWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_widget_set_default_text(self:PGtkAppChooserWidget; text:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_widget_get_default_text(self:PGtkAppChooserWidget):Pchar;
  begin
    { You must implement this function }
  end;

