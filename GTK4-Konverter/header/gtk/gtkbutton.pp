
  Type
  Pchar  = ^char;
  PGtkButton  = ^GtkButton;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
   * Modified by the GTK+ Team and others 1997-2001.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_BUTTON_H__}
{$define __GTK_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUTTON_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUTTON_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUTTON_GET_CLASS(obj : longint) : longint;  


  type
    _GtkButton = GtkButton;
    _GtkButtonPrivate = GtkButtonPrivate;
    _GtkButtonClass = GtkButtonClass;
  {< private > }
    _GtkButton = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkButtonClass:
   * @parent_class: The parent class.
   * @clicked: Signal emitted when the button has been activated (pressed and released).
   * @activate: Signal that causes the button to animate press then
   *    release. Applications should never connect to this signal, but use
   *    the @clicked signal.
    }
  {< public > }
  {< private > }
    _GtkButtonClass = record
        parent_class : GtkWidgetClass;
        clicked : procedure (button:PGtkButton);cdecl;
        activate : procedure (button:PGtkButton);cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType          gtk_button_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_button_new:^GtkWidget;

(* Const before type ignored *)
  function gtk_button_new_with_label(_label:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_button_new_from_icon_name(icon_name:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_button_new_with_mnemonic(_label:Pchar):^GtkWidget;

  procedure gtk_button_set_has_frame(button:PGtkButton; has_frame:gboolean);

  function gtk_button_get_has_frame(button:PGtkButton):gboolean;

(* Const before type ignored *)
  procedure gtk_button_set_label(button:PGtkButton; _label:Pchar);

(* Const before type ignored *)
  function gtk_button_get_label(button:PGtkButton):^char;

  procedure gtk_button_set_use_underline(button:PGtkButton; use_underline:gboolean);

  function gtk_button_get_use_underline(button:PGtkButton):gboolean;

(* Const before type ignored *)
  procedure gtk_button_set_icon_name(button:PGtkButton; icon_name:Pchar);

(* Const before type ignored *)
  function gtk_button_get_icon_name(button:PGtkButton):^char;

  procedure gtk_button_set_child(button:PGtkButton; child:PGtkWidget);

  function gtk_button_get_child(button:PGtkButton):^GtkWidget;

{$endif}
  { __GTK_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_BUTTON:=gtk_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUTTON(obj : longint) : longint;
  begin
    GTK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUTTON,GtkButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUTTON_CLASS(klass : longint) : longint;
  begin
    GTK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BUTTON,GtkButtonClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUTTON);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUTTON_CLASS(klass : longint) : longint;
  begin
    GTK_IS_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUTTON);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUTTON_GET_CLASS(obj : longint) : longint;
  begin
    GTK_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BUTTON,GtkButtonClass);
  end;

  function gtk_button_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_button_new_with_label(_label:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_button_new_from_icon_name(icon_name:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_button_new_with_mnemonic(_label:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_button_set_has_frame(button:PGtkButton; has_frame:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_button_get_has_frame(button:PGtkButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_button_set_label(button:PGtkButton; _label:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_button_get_label(button:PGtkButton):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_button_set_use_underline(button:PGtkButton; use_underline:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_button_get_use_underline(button:PGtkButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_button_set_icon_name(button:PGtkButton; icon_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_button_get_icon_name(button:PGtkButton):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_button_set_child(button:PGtkButton; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_button_get_child(button:PGtkButton):PGtkWidget;
  begin
    { You must implement this function }
  end;

