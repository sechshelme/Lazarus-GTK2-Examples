
  Type
  Pchar  = ^char;
  PGtkShortcutLabel  = ^GtkShortcutLabel;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkshortcutlabelprivate.h
   *
   * Copyright (C) 2015 Christian Hergert <christian@hergert.me>
   *
   *  This library is free software; you can redistribute it and/or
   *  modify it under the terms of the GNU Library General Public License as
   *  published by the Free Software Foundation; either version 2 of the
   *  License, or (at your option) any later version.
   *
   *  This library is distributed in the hope that it will be useful,
   *  but WITHOUT ANY WARRANTY; without even the implied warranty of
   *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   *  Library General Public License for more details.
   *
   *  You should have received a copy of the GNU Library General Public
   *  License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_SHORTCUT_LABEL_H__}
{$define __GTK_SHORTCUT_LABEL_H__}  
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_LABEL : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUT_LABEL(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUT_LABEL(obj : longint) : longint;  


  type
    _GtkShortcutLabel = GtkShortcutLabel;
    _GtkShortcutLabelClass = GtkShortcutLabelClass;
(* error 
GType        gtk_shortcut_label_get_type        (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_shortcut_label_new(accelerator:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_shortcut_label_get_accelerator(self:PGtkShortcutLabel):^char;

(* Const before type ignored *)
  procedure gtk_shortcut_label_set_accelerator(self:PGtkShortcutLabel; accelerator:Pchar);

(* Const before type ignored *)
  function gtk_shortcut_label_get_disabled_text(self:PGtkShortcutLabel):^char;

(* Const before type ignored *)
  procedure gtk_shortcut_label_set_disabled_text(self:PGtkShortcutLabel; disabled_text:Pchar);

{$endif}
  { __GTK_SHORTCUT_LABEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUT_LABEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUT_LABEL:=gtk_shortcut_label_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUT_LABEL(obj : longint) : longint;
  begin
    GTK_SHORTCUT_LABEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUT_LABEL,GtkShortcutLabel);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUT_LABEL(obj : longint) : longint;
  begin
    GTK_IS_SHORTCUT_LABEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUT_LABEL);
  end;

  function gtk_shortcut_label_new(accelerator:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_label_get_accelerator(self:PGtkShortcutLabel):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_label_set_accelerator(self:PGtkShortcutLabel; accelerator:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_shortcut_label_get_disabled_text(self:PGtkShortcutLabel):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_shortcut_label_set_disabled_text(self:PGtkShortcutLabel; disabled_text:Pchar);
  begin
    { You must implement this function }
  end;

