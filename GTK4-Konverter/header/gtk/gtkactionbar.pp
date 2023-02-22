
  Type
  PGtkActionBar  = ^GtkActionBar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2013 - 2014 Red Hat, Inc.
   *
   * This program is free software; you can redistribute it and/or modify
   * it under the terms of the GNU Lesser General Public License as published by
   * the Free Software Foundation; either version 2 of the License, or (at your
   * option) any later version.
   *
   * This program is distributed in the hope that it will be useful, but
   * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
   * License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License
   * along with this program; if not, write to the Free Software Foundation,
   * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
   *
    }
{$ifndef __GTK_ACTION_BAR_H__}
{$define __GTK_ACTION_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ACTION_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ACTION_BAR(obj : longint) : longint;  


  type
    _GtkActionBar = GtkActionBar;
  { Zeile entfernt  }

  function gtk_action_bar_get_type:GType;

  { Zeile entfernt  }
  function gtk_action_bar_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_action_bar_get_center_widget(action_bar:PGtkActionBar):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_action_bar_set_center_widget(action_bar:PGtkActionBar; center_widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_action_bar_pack_start(action_bar:PGtkActionBar; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_action_bar_pack_end(action_bar:PGtkActionBar; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_action_bar_remove(action_bar:PGtkActionBar; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_action_bar_set_revealed(action_bar:PGtkActionBar; revealed:gboolean);

  { Zeile entfernt  }
  function gtk_action_bar_get_revealed(action_bar:PGtkActionBar):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_ACTION_BAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_ACTION_BAR:=gtk_action_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ACTION_BAR(obj : longint) : longint;
  begin
    GTK_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ACTION_BAR,GtkActionBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ACTION_BAR(obj : longint) : longint;
  begin
    GTK_IS_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ACTION_BAR);
  end;

  function gtk_action_bar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_action_bar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_action_bar_get_center_widget(action_bar:PGtkActionBar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_action_bar_set_center_widget(action_bar:PGtkActionBar; center_widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_action_bar_pack_start(action_bar:PGtkActionBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_action_bar_pack_end(action_bar:PGtkActionBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_action_bar_remove(action_bar:PGtkActionBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_action_bar_set_revealed(action_bar:PGtkActionBar; revealed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_action_bar_get_revealed(action_bar:PGtkActionBar):gboolean;
  begin
    { You must implement this function }
  end;

