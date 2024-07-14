unit gtkbutton;

interface

uses
  glib2, common_GTK;

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
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

type
{< private > }
  PGtkButton = ^TGtkButton;
  TGtkButton = record
      parent_instance : TGtkWidget;
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
  PGtkButtonClass = ^TGtkButtonClass;
  TGtkButtonClass = record
      parent_class : TGtkWidgetClass;
      clicked : procedure (button:PGtkButton);cdecl;
      activate : procedure (button:PGtkButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_button_get_type:TGType;cdecl;external gtklib;
function gtk_button_new:PGtkWidget;cdecl;external gtklib;
function gtk_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external gtklib;
function gtk_button_new_from_icon_name(icon_name:Pchar):PGtkWidget;cdecl;external gtklib;
function gtk_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external gtklib;
procedure gtk_button_set_has_frame(button:PGtkButton; has_frame:Tgboolean);cdecl;external gtklib;
function gtk_button_get_has_frame(button:PGtkButton):Tgboolean;cdecl;external gtklib;
procedure gtk_button_set_label(button:PGtkButton; _label:Pchar);cdecl;external gtklib;
function gtk_button_get_label(button:PGtkButton):Pchar;cdecl;external gtklib;
procedure gtk_button_set_use_underline(button:PGtkButton; use_underline:Tgboolean);cdecl;external gtklib;
function gtk_button_get_use_underline(button:PGtkButton):Tgboolean;cdecl;external gtklib;
procedure gtk_button_set_icon_name(button:PGtkButton; icon_name:Pchar);cdecl;external gtklib;
function gtk_button_get_icon_name(button:PGtkButton):Pchar;cdecl;external gtklib;
procedure gtk_button_set_child(button:PGtkButton; child:PGtkWidget);cdecl;external gtklib;
function gtk_button_get_child(button:PGtkButton):PGtkWidget;cdecl;external gtklib;
procedure gtk_button_set_can_shrink(button:PGtkButton; can_shrink:Tgboolean);cdecl;external gtklib;
function gtk_button_get_can_shrink(button:PGtkButton):Tgboolean;cdecl;external gtklib;

// === Konventiert am: 14-7-24 14:00:52 ===

function GTK_TYPE_BUTTON : TGType;
function GTK_BUTTON(obj : Pointer) : PGtkButton;
function GTK_BUTTON_CLASS(klass : Pointer) : PGtkButtonClass;
function GTK_IS_BUTTON(obj : Pointer) : Tgboolean;
function GTK_IS_BUTTON_CLASS(klass : Pointer) : Tgboolean;
function GTK_BUTTON_GET_CLASS(obj : Pointer) : PGtkButtonClass;

implementation

function GTK_TYPE_BUTTON : TGType;
  begin
    GTK_TYPE_BUTTON:=gtk_button_get_type;
  end;

function GTK_BUTTON(obj : Pointer) : PGtkButton;
begin
  Result := PGtkButton(g_type_check_instance_cast(obj, GTK_TYPE_BUTTON));
end;

function GTK_BUTTON_CLASS(klass : Pointer) : PGtkButtonClass;
begin
  Result := PGtkButtonClass(g_type_check_class_cast(klass, GTK_TYPE_BUTTON));
end;

function GTK_IS_BUTTON(obj : Pointer) : Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj,  GTK_TYPE_BUTTON);
end;

function GTK_IS_BUTTON_CLASS(klass : Pointer) : Tgboolean;
begin
  Result := g_type_check_class_is_a(klass,  GTK_TYPE_BUTTON);
end;

function GTK_BUTTON_GET_CLASS(obj : Pointer) : PGtkButtonClass;
begin
  Result := PGtkButtonClass(PGTypeInstance(obj)^.g_class);
end;



end.
