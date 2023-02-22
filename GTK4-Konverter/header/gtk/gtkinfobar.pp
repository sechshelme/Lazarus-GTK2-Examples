
  Type
  Pchar  = ^char;
  PGtkInfoBar  = ^GtkInfoBar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gtkinfobar.h
   * This file is part of GTK
   *
   * Copyright (C) 2005 - Paolo Maggi
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
   * Modified by the gedit Team, 2005. See the gedit AUTHORS file for a
   * list of people on the gedit Team.
   * See the gedit ChangeLog files for a list of changes.
   *
   * Modified by the GTK+ Team, 2008-2009.
    }
{$ifndef __GTK_INFO_BAR_H__}
{$define __GTK_INFO_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkenums.h>}

  { was #define dname def_expr }
  function GTK_TYPE_INFO_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_INFO_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_INFO_BAR(obj : longint) : longint;  


  type
    _GtkInfoBar = GtkInfoBar;
(* error 
GType          gtk_info_bar_get_type               (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_info_bar_new:^GtkWidget;

(* Const before type ignored *)
  function gtk_info_bar_new_with_buttons(first_button_text:Pchar; args:array of const):^GtkWidget;

  procedure gtk_info_bar_add_action_widget(info_bar:PGtkInfoBar; child:PGtkWidget; response_id:longint);

  procedure gtk_info_bar_remove_action_widget(info_bar:PGtkInfoBar; widget:PGtkWidget);

(* Const before type ignored *)
  function gtk_info_bar_add_button(info_bar:PGtkInfoBar; button_text:Pchar; response_id:longint):^GtkWidget;

(* Const before type ignored *)
  procedure gtk_info_bar_add_buttons(info_bar:PGtkInfoBar; first_button_text:Pchar; args:array of const);

  procedure gtk_info_bar_add_child(info_bar:PGtkInfoBar; widget:PGtkWidget);

  procedure gtk_info_bar_remove_child(info_bar:PGtkInfoBar; widget:PGtkWidget);

  procedure gtk_info_bar_set_response_sensitive(info_bar:PGtkInfoBar; response_id:longint; setting:gboolean);

  procedure gtk_info_bar_set_default_response(info_bar:PGtkInfoBar; response_id:longint);

  procedure gtk_info_bar_response(info_bar:PGtkInfoBar; response_id:longint);

  procedure gtk_info_bar_set_message_type(info_bar:PGtkInfoBar; message_type:GtkMessageType);

  function gtk_info_bar_get_message_type(info_bar:PGtkInfoBar):GtkMessageType;

  procedure gtk_info_bar_set_show_close_button(info_bar:PGtkInfoBar; setting:gboolean);

  function gtk_info_bar_get_show_close_button(info_bar:PGtkInfoBar):gboolean;

  procedure gtk_info_bar_set_revealed(info_bar:PGtkInfoBar; revealed:gboolean);

  function gtk_info_bar_get_revealed(info_bar:PGtkInfoBar):gboolean;

{$endif}
  { __GTK_INFO_BAR_H__   }
  { was #define dname def_expr }
  function GTK_TYPE_INFO_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_INFO_BAR:=gtk_info_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_INFO_BAR(obj : longint) : longint;
  begin
    GTK_INFO_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_INFO_BAR,GtkInfoBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_INFO_BAR(obj : longint) : longint;
  begin
    GTK_IS_INFO_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_INFO_BAR);
  end;

  function gtk_info_bar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_info_bar_new_with_buttons(first_button_text:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_add_action_widget(info_bar:PGtkInfoBar; child:PGtkWidget; response_id:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_remove_action_widget(info_bar:PGtkInfoBar; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_info_bar_add_button(info_bar:PGtkInfoBar; button_text:Pchar; response_id:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_add_buttons(info_bar:PGtkInfoBar; first_button_text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_add_child(info_bar:PGtkInfoBar; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_remove_child(info_bar:PGtkInfoBar; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_set_response_sensitive(info_bar:PGtkInfoBar; response_id:longint; setting:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_set_default_response(info_bar:PGtkInfoBar; response_id:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_response(info_bar:PGtkInfoBar; response_id:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_set_message_type(info_bar:PGtkInfoBar; message_type:GtkMessageType);
  begin
    { You must implement this function }
  end;
  function gtk_info_bar_get_message_type(info_bar:PGtkInfoBar):GtkMessageType;
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_set_show_close_button(info_bar:PGtkInfoBar; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_info_bar_get_show_close_button(info_bar:PGtkInfoBar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_info_bar_set_revealed(info_bar:PGtkInfoBar; revealed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_info_bar_get_revealed(info_bar:PGtkInfoBar):gboolean;
  begin
    { You must implement this function }
  end;

