
  Type
  Pchar  = ^char;
  PGtkComboBoxText  = ^GtkComboBoxText;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   *
   * Copyright (C) 2010 Christian Dywan
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_COMBO_BOX_TEXT_H__}
{$define __GTK_COMBO_BOX_TEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcombobox.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_COMBO_BOX_TEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX_TEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COMBO_BOX_TEXT(obj : longint) : longint;  


  type
    _GtkComboBoxText = GtkComboBoxText;
  { Zeile entfernt  }

  function gtk_combo_box_text_get_type:GType;

  { Zeile entfernt  }
  function gtk_combo_box_text_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_combo_box_text_new_with_entry:^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_combo_box_text_append_text(combo_box:PGtkComboBoxText; text:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_combo_box_text_insert_text(combo_box:PGtkComboBoxText; position:longint; text:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_combo_box_text_prepend_text(combo_box:PGtkComboBoxText; text:Pchar);

  { Zeile entfernt  }
  procedure gtk_combo_box_text_remove(combo_box:PGtkComboBoxText; position:longint);

  { Zeile entfernt  }
  procedure gtk_combo_box_text_remove_all(combo_box:PGtkComboBoxText);

  { Zeile entfernt  }
  function gtk_combo_box_text_get_active_text(combo_box:PGtkComboBoxText):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_combo_box_text_insert(combo_box:PGtkComboBoxText; position:longint; id:Pchar; text:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_combo_box_text_append(combo_box:PGtkComboBoxText; id:Pchar; text:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_combo_box_text_prepend(combo_box:PGtkComboBoxText; id:Pchar; text:Pchar);

  { Zeile entfernt  }
{$endif}
  { __GTK_COMBO_BOX_TEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_COMBO_BOX_TEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_COMBO_BOX_TEXT:=gtk_combo_box_text_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX_TEXT(obj : longint) : longint;
  begin
    GTK_COMBO_BOX_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COMBO_BOX_TEXT,GtkComboBoxText);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COMBO_BOX_TEXT(obj : longint) : longint;
  begin
    GTK_IS_COMBO_BOX_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COMBO_BOX_TEXT);
  end;

  function gtk_combo_box_text_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_text_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_text_new_with_entry:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_append_text(combo_box:PGtkComboBoxText; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_insert_text(combo_box:PGtkComboBoxText; position:longint; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_prepend_text(combo_box:PGtkComboBoxText; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_remove(combo_box:PGtkComboBoxText; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_remove_all(combo_box:PGtkComboBoxText);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_text_get_active_text(combo_box:PGtkComboBoxText):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_insert(combo_box:PGtkComboBoxText; position:longint; id:Pchar; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_append(combo_box:PGtkComboBoxText; id:Pchar; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_text_prepend(combo_box:PGtkComboBoxText; id:Pchar; text:Pchar);
  begin
    { You must implement this function }
  end;

