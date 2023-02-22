
    Type
    Pchar  = ^char;
    PGtkCheckButton  = ^GtkCheckButton;
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
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_CHECK_BUTTON_H__}
{$define __GTK_CHECK_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktogglebutton.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CHECK_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CHECK_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CHECK_BUTTON_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CHECK_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CHECK_BUTTON_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CHECK_BUTTON_GET_CLASS(obj : longint) : longint;  


  type
    _GtkCheckButton = GtkCheckButton;
    _GtkCheckButtonClass = GtkCheckButtonClass;
    _GtkCheckButton = record
        parent_instance : GtkWidget;
      end;

  {< private > }
    _GtkCheckButtonClass = record
        parent_class : GtkWidgetClass;
        toggled : procedure (check_button:PGtkCheckButton);cdecl;
        activate : procedure (check_button:PGtkCheckButton);cdecl;
        padding : array[0..6] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_check_button_get_type:GType;

  { Zeile entfernt  }
  function gtk_check_button_new:^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_check_button_new_with_label(_label:Pchar):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_check_button_new_with_mnemonic(_label:Pchar):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_check_button_set_inconsistent(check_button:PGtkCheckButton; inconsistent:gboolean);

  { Zeile entfernt  }
  function gtk_check_button_get_inconsistent(check_button:PGtkCheckButton):gboolean;

  { Zeile entfernt  }
  function gtk_check_button_get_active(self:PGtkCheckButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_check_button_set_active(self:PGtkCheckButton; setting:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_check_button_get_label(self:PGtkCheckButton):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_check_button_set_label(self:PGtkCheckButton; _label:Pchar);

  { Zeile entfernt  }
  procedure gtk_check_button_set_group(self:PGtkCheckButton; group:PGtkCheckButton);

  { Zeile entfernt  }
  function gtk_check_button_get_use_underline(self:PGtkCheckButton):gboolean;

  { Zeile entfernt  }
  procedure gtk_check_button_set_use_underline(self:PGtkCheckButton; setting:gboolean);

(* error 
GtkWidget *     gtk_check_button_get_child          (GtkCheckButton *button);
 in declarator_list *)
(* error 
void            gtk_check_button_set_child          (GtkCheckButton *button,
in declaration at line 102 *)
    { Zeile entfernt  }
{$endif}
    { __GTK_CHECK_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CHECK_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_CHECK_BUTTON:=gtk_check_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CHECK_BUTTON(obj : longint) : longint;
  begin
    GTK_CHECK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CHECK_BUTTON,GtkCheckButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CHECK_BUTTON_CLASS(klass : longint) : longint;
  begin
    GTK_CHECK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CHECK_BUTTON,GtkCheckButtonClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CHECK_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_CHECK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CHECK_BUTTON);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CHECK_BUTTON_CLASS(klass : longint) : longint;
  begin
    GTK_IS_CHECK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CHECK_BUTTON);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CHECK_BUTTON_GET_CLASS(obj : longint) : longint;
  begin
    GTK_CHECK_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CHECK_BUTTON,GtkCheckButtonClass);
  end;

  function gtk_check_button_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_check_button_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_check_button_new_with_label(_label:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_check_button_new_with_mnemonic(_label:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_check_button_set_inconsistent(check_button:PGtkCheckButton; inconsistent:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_check_button_get_inconsistent(check_button:PGtkCheckButton):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_check_button_get_active(self:PGtkCheckButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_check_button_set_active(self:PGtkCheckButton; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_check_button_get_label(self:PGtkCheckButton):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_check_button_set_label(self:PGtkCheckButton; _label:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_check_button_set_group(self:PGtkCheckButton; group:PGtkCheckButton);
  begin
    { You must implement this function }
  end;
  function gtk_check_button_get_use_underline(self:PGtkCheckButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_check_button_set_use_underline(self:PGtkCheckButton; setting:gboolean);
  begin
    { You must implement this function }
  end;

