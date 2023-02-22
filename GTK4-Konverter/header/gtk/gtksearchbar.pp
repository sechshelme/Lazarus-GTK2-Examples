
  Type
  PGtkEditable  = ^GtkEditable;
  PGtkSearchBar  = ^GtkSearchBar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2013 Red Hat, Inc.
   *
   * Authors:
   * - Bastien Nocera <bnocera@redhat.com>
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
   * Modified by the GTK+ Team and others 2013.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_SEARCH_BAR_H__}
{$define __GTK_SEARCH_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkeditable.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SEARCH_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SEARCH_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SEARCH_BAR(obj : longint) : longint;  


  type
    _GtkSearchBar = GtkSearchBar;
  { Zeile entfernt  }

  function gtk_search_bar_get_type:GType;

  { Zeile entfernt  }
  function gtk_search_bar_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_search_bar_connect_entry(bar:PGtkSearchBar; entry:PGtkEditable);

  { Zeile entfernt  }
  function gtk_search_bar_get_search_mode(bar:PGtkSearchBar):gboolean;

  { Zeile entfernt  }
  procedure gtk_search_bar_set_search_mode(bar:PGtkSearchBar; search_mode:gboolean);

  { Zeile entfernt  }
  function gtk_search_bar_get_show_close_button(bar:PGtkSearchBar):gboolean;

  { Zeile entfernt  }
  procedure gtk_search_bar_set_show_close_button(bar:PGtkSearchBar; visible:gboolean);

  { Zeile entfernt  }
  procedure gtk_search_bar_set_key_capture_widget(bar:PGtkSearchBar; widget:PGtkWidget);

  { Zeile entfernt  }
  function gtk_search_bar_get_key_capture_widget(bar:PGtkSearchBar):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_search_bar_set_child(bar:PGtkSearchBar; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_search_bar_get_child(bar:PGtkSearchBar):^GtkWidget;

  { Zeile entfernt  }
{$endif}
  { __GTK_SEARCH_BAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SEARCH_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_SEARCH_BAR:=gtk_search_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SEARCH_BAR(obj : longint) : longint;
  begin
    GTK_SEARCH_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEARCH_BAR,GtkSearchBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SEARCH_BAR(obj : longint) : longint;
  begin
    GTK_IS_SEARCH_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEARCH_BAR);
  end;

  function gtk_search_bar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_search_bar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_search_bar_connect_entry(bar:PGtkSearchBar; entry:PGtkEditable);
  begin
    { You must implement this function }
  end;
  function gtk_search_bar_get_search_mode(bar:PGtkSearchBar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_search_bar_set_search_mode(bar:PGtkSearchBar; search_mode:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_search_bar_get_show_close_button(bar:PGtkSearchBar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_search_bar_set_show_close_button(bar:PGtkSearchBar; visible:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_search_bar_set_key_capture_widget(bar:PGtkSearchBar; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_search_bar_get_key_capture_widget(bar:PGtkSearchBar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_search_bar_set_child(bar:PGtkSearchBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_search_bar_get_child(bar:PGtkSearchBar):PGtkWidget;
  begin
    { You must implement this function }
  end;

