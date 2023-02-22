
  Type
  Pchar  = ^char;
  PGdkDevice  = ^GdkDevice;
  PGtkComboBox  = ^GtkComboBox;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcombobox.h
   * Copyright (C) 2002, 2003  Kristian Rietveld <kris@gtk.org>
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
{$ifndef __GTK_COMBO_BOX_H__}
{$define __GTK_COMBO_BOX_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreeview.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_COMBO_BOX : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX_CLASS(vtable : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COMBO_BOX(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COMBO_BOX_CLASS(vtable : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX_GET_CLASS(inst : longint) : longint;  


  type
    _GtkComboBox = GtkComboBox;
    _GtkComboBoxClass = GtkComboBoxClass;
    _GtkComboBox = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkComboBoxClass:
   * @parent_class: The parent class.
   * @changed: Signal is emitted when the active item is changed.
   * @format_entry_text: Signal which allows you to change how the text
   *    displayed in a combo box’s entry is displayed.
    }
  {< public > }
  { signals  }
(* Const before type ignored *)
  {< private > }
    _GtkComboBoxClass = record
        parent_class : GtkWidgetClass;
        changed : procedure (combo_box:PGtkComboBox);cdecl;
        format_entry_text : function (combo_box:PGtkComboBox; path:Pchar):Pchar;cdecl;
        activate : procedure (combo_box:PGtkComboBox);cdecl;
        padding : array[0..6] of gpointer;
      end;

  { construction  }
  { Zeile entfernt  }

  function gtk_combo_box_get_type:GType;

  { Zeile entfernt  }
  function gtk_combo_box_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_combo_box_new_with_entry:^GtkWidget;

  { Zeile entfernt  }
  function gtk_combo_box_new_with_model(model:PGtkTreeModel):^GtkWidget;

  { Zeile entfernt  }
  function gtk_combo_box_new_with_model_and_entry(model:PGtkTreeModel):^GtkWidget;

  { get/set active item  }
  { Zeile entfernt  }
  function gtk_combo_box_get_active(combo_box:PGtkComboBox):longint;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_active(combo_box:PGtkComboBox; index_:longint);

  { Zeile entfernt  }
  function gtk_combo_box_get_active_iter(combo_box:PGtkComboBox; iter:PGtkTreeIter):gboolean;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_active_iter(combo_box:PGtkComboBox; iter:PGtkTreeIter);

  { getters and setters  }
  { Zeile entfernt  }
  procedure gtk_combo_box_set_model(combo_box:PGtkComboBox; model:PGtkTreeModel);

  { Zeile entfernt  }
  function gtk_combo_box_get_model(combo_box:PGtkComboBox):^GtkTreeModel;

  { Zeile entfernt  }
  function gtk_combo_box_get_row_separator_func(combo_box:PGtkComboBox):GtkTreeViewRowSeparatorFunc;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_row_separator_func(combo_box:PGtkComboBox; func:GtkTreeViewRowSeparatorFunc; data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_combo_box_set_button_sensitivity(combo_box:PGtkComboBox; sensitivity:GtkSensitivityType);

  { Zeile entfernt  }
  function gtk_combo_box_get_button_sensitivity(combo_box:PGtkComboBox):GtkSensitivityType;

  { Zeile entfernt  }
  function gtk_combo_box_get_has_entry(combo_box:PGtkComboBox):gboolean;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_entry_text_column(combo_box:PGtkComboBox; text_column:longint);

  { Zeile entfernt  }
  function gtk_combo_box_get_entry_text_column(combo_box:PGtkComboBox):longint;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_popup_fixed_width(combo_box:PGtkComboBox; fixed:gboolean);

  { Zeile entfernt  }
  function gtk_combo_box_get_popup_fixed_width(combo_box:PGtkComboBox):gboolean;

  { programmatic control  }
  { Zeile entfernt  }
  procedure gtk_combo_box_popup(combo_box:PGtkComboBox);

  { Zeile entfernt  }
  procedure gtk_combo_box_popup_for_device(combo_box:PGtkComboBox; device:PGdkDevice);

  { Zeile entfernt  }
  procedure gtk_combo_box_popdown(combo_box:PGtkComboBox);

  { Zeile entfernt  }
  function gtk_combo_box_get_id_column(combo_box:PGtkComboBox):longint;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_id_column(combo_box:PGtkComboBox; id_column:longint);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_combo_box_get_active_id(combo_box:PGtkComboBox):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_combo_box_set_active_id(combo_box:PGtkComboBox; active_id:Pchar):gboolean;

  { Zeile entfernt  }
  procedure gtk_combo_box_set_child(combo_box:PGtkComboBox; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_combo_box_get_child(combo_box:PGtkComboBox):^GtkWidget;

  { Zeile entfernt  }
{$endif}
  { __GTK_COMBO_BOX_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_COMBO_BOX : longint; { return type might be wrong }
    begin
      GTK_TYPE_COMBO_BOX:=gtk_combo_box_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX(obj : longint) : longint;
  begin
    GTK_COMBO_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COMBO_BOX,GtkComboBox);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX_CLASS(vtable : longint) : longint;
  begin
    GTK_COMBO_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(vtable,GTK_TYPE_COMBO_BOX,GtkComboBoxClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COMBO_BOX(obj : longint) : longint;
  begin
    GTK_IS_COMBO_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COMBO_BOX);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COMBO_BOX_CLASS(vtable : longint) : longint;
  begin
    GTK_IS_COMBO_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(vtable,GTK_TYPE_COMBO_BOX);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COMBO_BOX_GET_CLASS(inst : longint) : longint;
  begin
    GTK_COMBO_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_COMBO_BOX,GtkComboBoxClass);
  end;

  function gtk_combo_box_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_new_with_entry:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_new_with_model(model:PGtkTreeModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_new_with_model_and_entry(model:PGtkTreeModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_active(combo_box:PGtkComboBox):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_active(combo_box:PGtkComboBox; index_:longint);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_active_iter(combo_box:PGtkComboBox; iter:PGtkTreeIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_active_iter(combo_box:PGtkComboBox; iter:PGtkTreeIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_model(combo_box:PGtkComboBox; model:PGtkTreeModel);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_model(combo_box:PGtkComboBox):PGtkTreeModel;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_row_separator_func(combo_box:PGtkComboBox):GtkTreeViewRowSeparatorFunc;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_row_separator_func(combo_box:PGtkComboBox; func:GtkTreeViewRowSeparatorFunc; data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_button_sensitivity(combo_box:PGtkComboBox; sensitivity:GtkSensitivityType);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_button_sensitivity(combo_box:PGtkComboBox):GtkSensitivityType;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_has_entry(combo_box:PGtkComboBox):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_entry_text_column(combo_box:PGtkComboBox; text_column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_entry_text_column(combo_box:PGtkComboBox):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_popup_fixed_width(combo_box:PGtkComboBox; fixed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_popup_fixed_width(combo_box:PGtkComboBox):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_popup(combo_box:PGtkComboBox);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_popup_for_device(combo_box:PGtkComboBox; device:PGdkDevice);
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_popdown(combo_box:PGtkComboBox);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_id_column(combo_box:PGtkComboBox):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_id_column(combo_box:PGtkComboBox; id_column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_active_id(combo_box:PGtkComboBox):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_set_active_id(combo_box:PGtkComboBox; active_id:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_combo_box_set_child(combo_box:PGtkComboBox; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_combo_box_get_child(combo_box:PGtkComboBox):PGtkWidget;
  begin
    { You must implement this function }
  end;

