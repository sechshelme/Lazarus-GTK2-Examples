
  Type
  Pchar  = ^char;
  PGtkHeaderBar  = ^GtkHeaderBar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2013 Red Hat, Inc.
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
{$ifndef __GTK_HEADER_BAR_H__}
{$define __GTK_HEADER_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_HEADER_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_HEADER_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_HEADER_BAR(obj : longint) : longint;  


  type
    _GtkHeaderBar = GtkHeaderBar;
  { Zeile entfernt  }

  function gtk_header_bar_get_type:GType;

  { Zeile entfernt  }
  function gtk_header_bar_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_header_bar_set_title_widget(bar:PGtkHeaderBar; title_widget:PGtkWidget);

  { Zeile entfernt  }
  function gtk_header_bar_get_title_widget(bar:PGtkHeaderBar):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_header_bar_pack_start(bar:PGtkHeaderBar; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_header_bar_pack_end(bar:PGtkHeaderBar; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_header_bar_remove(bar:PGtkHeaderBar; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_header_bar_get_show_title_buttons(bar:PGtkHeaderBar):gboolean;

  { Zeile entfernt  }
  procedure gtk_header_bar_set_show_title_buttons(bar:PGtkHeaderBar; setting:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_header_bar_set_decoration_layout(bar:PGtkHeaderBar; layout:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_header_bar_get_decoration_layout(bar:PGtkHeaderBar):^char;

  { Zeile entfernt  }
{$endif}
  { __GTK_HEADER_BAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_HEADER_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_HEADER_BAR:=gtk_header_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_HEADER_BAR(obj : longint) : longint;
  begin
    GTK_HEADER_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_HEADER_BAR,GtkHeaderBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_HEADER_BAR(obj : longint) : longint;
  begin
    GTK_IS_HEADER_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_HEADER_BAR);
  end;

  function gtk_header_bar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_header_bar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_header_bar_set_title_widget(bar:PGtkHeaderBar; title_widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_header_bar_get_title_widget(bar:PGtkHeaderBar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_header_bar_pack_start(bar:PGtkHeaderBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_header_bar_pack_end(bar:PGtkHeaderBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_header_bar_remove(bar:PGtkHeaderBar; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_header_bar_get_show_title_buttons(bar:PGtkHeaderBar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_header_bar_set_show_title_buttons(bar:PGtkHeaderBar; setting:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_header_bar_set_decoration_layout(bar:PGtkHeaderBar; layout:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_header_bar_get_decoration_layout(bar:PGtkHeaderBar):Pchar;
  begin
    { You must implement this function }
  end;

