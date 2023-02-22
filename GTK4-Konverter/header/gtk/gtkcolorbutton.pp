
  Type
  Pchar  = ^char;
  PGdkRGBA  = ^GdkRGBA;
  PGtkColorButton  = ^GtkColorButton;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * GTK - The GIMP Toolkit
   * Copyright (C) 1998, 1999 Red Hat, Inc.
   * All rights reserved.
   *
   * This Library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public License as
   * published by the Free Software Foundation; either version 2 of the
   * License, or (at your option) any later version.
   *
   * This Library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  { Color picker button for GNOME
   *
   * Author: Federico Mena <federico@nuclecu.unam.mx>
   *
   * Modified by the GTK+ Team and others 2003.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_COLOR_BUTTON_H__}
{$define __GTK_COLOR_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_COLOR_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLOR_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLOR_BUTTON(obj : longint) : longint;  


  type
    _GtkColorButton = GtkColorButton;
  { Zeile entfernt  }

  function gtk_color_button_get_type:GType;

  { Zeile entfernt  }
  function gtk_color_button_new:^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_color_button_new_with_rgba(rgba:PGdkRGBA):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_color_button_set_title(button:PGtkColorButton; title:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_color_button_get_title(button:PGtkColorButton):^char;

  { Zeile entfernt  }
  function gtk_color_button_get_modal(button:PGtkColorButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_color_button_set_modal(button:PGtkColorButton; modal:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_COLOR_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_COLOR_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_COLOR_BUTTON:=gtk_color_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLOR_BUTTON(obj : longint) : longint;
  begin
    GTK_COLOR_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_BUTTON,GtkColorButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLOR_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_COLOR_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_BUTTON);
  end;

  function gtk_color_button_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_color_button_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_color_button_new_with_rgba(rgba:PGdkRGBA):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_color_button_set_title(button:PGtkColorButton; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_color_button_get_title(button:PGtkColorButton):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_color_button_get_modal(button:PGtkColorButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_color_button_set_modal(button:PGtkColorButton; modal:gboolean);
  begin
    { You must implement this function }
  end;

