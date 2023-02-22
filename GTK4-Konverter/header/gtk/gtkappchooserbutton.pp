
  Type
  Pchar  = ^char;
  PGIcon  = ^GIcon;
  PGtkAppChooserButton  = ^GtkAppChooserButton;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gtkappchooserbutton.h: an app-chooser button
   *
   * Copyright (C) 2010 Red Hat, Inc.
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
   * Authors: Cosimo Cecchi <ccecchi@redhat.com>
    }
{$ifndef __GTK_APP_CHOOSER_BUTTON_H__}
{$define __GTK_APP_CHOOSER_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gio/gio.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_APP_CHOOSER_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APP_CHOOSER_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APP_CHOOSER_BUTTON(obj : longint) : longint;  


  type
    _GtkAppChooserButton = GtkAppChooserButton;
  { Zeile entfernt  }

  function gtk_app_chooser_button_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_app_chooser_button_new(content_type:Pchar):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_app_chooser_button_append_separator(self:PGtkAppChooserButton);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_app_chooser_button_append_custom_item(self:PGtkAppChooserButton; name:Pchar; _label:Pchar; icon:PGIcon);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_app_chooser_button_set_active_custom_item(self:PGtkAppChooserButton; name:Pchar);

  { Zeile entfernt  }
  procedure gtk_app_chooser_button_set_show_dialog_item(self:PGtkAppChooserButton; setting:gboolean);

  { Zeile entfernt  }
  function gtk_app_chooser_button_get_show_dialog_item(self:PGtkAppChooserButton):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_app_chooser_button_set_heading(self:PGtkAppChooserButton; heading:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_app_chooser_button_get_heading(self:PGtkAppChooserButton):^char;

  { Zeile entfernt  }
  procedure gtk_app_chooser_button_set_show_default_item(self:PGtkAppChooserButton; setting:gboolean);

  { Zeile entfernt  }
  function gtk_app_chooser_button_get_show_default_item(self:PGtkAppChooserButton):gboolean;

  { Zeile entfernt  }
  function gtk_app_chooser_button_get_modal(self:PGtkAppChooserButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_app_chooser_button_set_modal(self:PGtkAppChooserButton; modal:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_APP_CHOOSER_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_APP_CHOOSER_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_APP_CHOOSER_BUTTON:=gtk_app_chooser_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_APP_CHOOSER_BUTTON(obj : longint) : longint;
  begin
    GTK_APP_CHOOSER_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_BUTTON,GtkAppChooserButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_APP_CHOOSER_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_APP_CHOOSER_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_BUTTON);
  end;

  function gtk_app_chooser_button_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_button_new(content_type:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_append_separator(self:PGtkAppChooserButton);
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_append_custom_item(self:PGtkAppChooserButton; name:Pchar; _label:Pchar; icon:PGIcon);
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_set_active_custom_item(self:PGtkAppChooserButton; name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_set_show_dialog_item(self:PGtkAppChooserButton; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_button_get_show_dialog_item(self:PGtkAppChooserButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_set_heading(self:PGtkAppChooserButton; heading:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_button_get_heading(self:PGtkAppChooserButton):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_set_show_default_item(self:PGtkAppChooserButton; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_button_get_show_default_item(self:PGtkAppChooserButton):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_app_chooser_button_get_modal(self:PGtkAppChooserButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_app_chooser_button_set_modal(self:PGtkAppChooserButton; modal:gboolean);
  begin
    { You must implement this function }
  end;

