
  Type
  Pchar  = ^char;
  PGtkLinkButton  = ^GtkLinkButton;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtklinkbutton.h - a hyperlink-enabled button
   *
   * Copyright (C) 2005 Emmanuele Bassi <ebassi@gmail.com>
   * All rights reserved.
   *
   * Based on gnome-href code by:
   * 	James Henstridge <james@daa.com.au>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_LINK_BUTTON_H__}
{$define __GTK_LINK_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}

  { was #define dname def_expr }
  function GTK_TYPE_LINK_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LINK_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LINK_BUTTON(obj : longint) : longint;  


  type
    _GtkLinkButton = GtkLinkButton;
(* error 
GType                 gtk_link_button_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_link_button_new(uri:Pchar):^GtkWidget;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_link_button_new_with_label(uri:Pchar; _label:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_link_button_get_uri(link_button:PGtkLinkButton):^char;

(* Const before type ignored *)
  procedure gtk_link_button_set_uri(link_button:PGtkLinkButton; uri:Pchar);

  function gtk_link_button_get_visited(link_button:PGtkLinkButton):gboolean;

  procedure gtk_link_button_set_visited(link_button:PGtkLinkButton; visited:gboolean);

{$endif}
  { __GTK_LINK_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LINK_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_LINK_BUTTON:=gtk_link_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LINK_BUTTON(obj : longint) : longint;
  begin
    GTK_LINK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LINK_BUTTON,GtkLinkButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LINK_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_LINK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LINK_BUTTON);
  end;

  function gtk_link_button_new(uri:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_link_button_new_with_label(uri:Pchar; _label:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_link_button_get_uri(link_button:PGtkLinkButton):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_link_button_set_uri(link_button:PGtkLinkButton; uri:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_link_button_get_visited(link_button:PGtkLinkButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_link_button_set_visited(link_button:PGtkLinkButton; visited:gboolean);
  begin
    { You must implement this function }
  end;

