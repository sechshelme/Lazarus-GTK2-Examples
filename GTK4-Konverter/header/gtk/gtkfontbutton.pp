
  Type
  Pchar  = ^char;
  PGtkFontButton  = ^GtkFontButton;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1998 David Abilleira Freijeiro <odaf@nexo.es>
   * All rights reserved
   * Based on gnome-color-picker by Federico Mena <federico@nuclecu.unam.mx>
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
  {
   * Modified by the GTK+ Team and others 2003.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_FONT_BUTTON_H__}
{$define __GTK_FONT_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_FONT_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FONT_BUTTON(obj : longint) : longint;  


  type
    _GtkFontButton = GtkFontButton;
  { Zeile entfernt  }

  function gtk_font_button_get_type:GType;

  { Zeile entfernt  }
  function gtk_font_button_new:^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_font_button_new_with_font(fontname:Pchar):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_font_button_get_title(font_button:PGtkFontButton):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_font_button_set_title(font_button:PGtkFontButton; title:Pchar);

  { Zeile entfernt  }
  function gtk_font_button_get_modal(font_button:PGtkFontButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_font_button_set_modal(font_button:PGtkFontButton; modal:gboolean);

  { Zeile entfernt  }
  function gtk_font_button_get_use_font(font_button:PGtkFontButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_font_button_set_use_font(font_button:PGtkFontButton; use_font:gboolean);

  { Zeile entfernt  }
  function gtk_font_button_get_use_size(font_button:PGtkFontButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_font_button_set_use_size(font_button:PGtkFontButton; use_size:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_FONT_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FONT_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_FONT_BUTTON:=gtk_font_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_BUTTON(obj : longint) : longint;
  begin
    GTK_FONT_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_BUTTON,GtkFontButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FONT_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_FONT_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_BUTTON);
  end;

  function gtk_font_button_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_font_button_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_font_button_new_with_font(fontname:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_font_button_get_title(font_button:PGtkFontButton):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_button_set_title(font_button:PGtkFontButton; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_font_button_get_modal(font_button:PGtkFontButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_button_set_modal(font_button:PGtkFontButton; modal:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_font_button_get_use_font(font_button:PGtkFontButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_button_set_use_font(font_button:PGtkFontButton; use_font:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_font_button_get_use_size(font_button:PGtkFontButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_button_set_use_size(font_button:PGtkFontButton; use_size:gboolean);
  begin
    { You must implement this function }
  end;

